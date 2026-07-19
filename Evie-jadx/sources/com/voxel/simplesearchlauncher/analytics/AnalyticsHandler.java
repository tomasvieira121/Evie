package com.voxel.simplesearchlauncher.analytics;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat;
import ch.hsr.geohash.GeoHash;
import com.crashlytics.android.Crashlytics;
import com.evie.common.AbTestConfiguration;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import com.voxel.simplesearchlauncher.api.network.HttpRequestUtil;
import com.voxel.simplesearchlauncher.utils.DebugUtil;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsHandler {
    private static final String TAG = "AnalyticsHandler";
    private static AnalyticsHandler instance;
    private boolean canSyncLogs;
    private Context context;
    private DeviceInfo deviceInfo;
    private AnalyticsDatabaseHelper logsDatabase;
    private final AbTestConfiguration mAbTestConfiguration;
    private final boolean mAllowedUser;
    private final AnalyticsFilter mAnalyticsFilter;
    private long mLastAppAnalyticsUploadTime;
    private long mLastUploadTime;
    private final NotificationManagerCompat mNotificationManagerCompat;
    private JSONObject mScreenEvent;
    private AsyncTask<Void, Void, Void> mUploadLogsTask;
    private int mBackoffMilli = 1000;
    private int mBackoffLimitRetries = 0;
    private Handler mRetryHandler = new Handler(Looper.getMainLooper());
    private Runnable mRetryRunnable = new Runnable() { // from class: com.voxel.simplesearchlauncher.analytics.-$$Lambda$AnalyticsHandler$toFsTXaWrAnmcKhDkOXAim2LkUw
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.getUploadLogsAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    };
    private long mScreenTime = -1;
    private String distinctUserId = getDistinctUserId();

    static /* synthetic */ void lambda$loadDeviceInfo$3(Throwable th) throws Exception {
    }

    static /* synthetic */ int access$808(AnalyticsHandler analyticsHandler) {
        int i = analyticsHandler.mBackoffLimitRetries;
        analyticsHandler.mBackoffLimitRetries = i + 1;
        return i;
    }

    public static class DeviceInfo {
        public int appVersion;
        public String brand;
        public String carrier;
        public String country;
        public String deviceId;
        public String manufacturer;
        public String model;
        public String packageId;
        public String platform;
        public String platformVersion;

        public String toString() {
            return "DeviceInfo [deviceId=" + this.deviceId + ", platform=" + this.platform + ", platformVersion=" + this.platformVersion + ", brand=" + this.brand + ", manufacturer=" + this.manufacturer + ", model=" + this.model + ", carrier=" + this.carrier + ", country=" + this.country + ", appVersion=" + this.appVersion + ", packageId=" + this.packageId + "]";
        }
    }

    public static class EventProp {
        private Object action;
        private Object label;
        JSONObject props = new JSONObject();

        public EventProp add(String str, String str2) {
            return addProp(str, str2);
        }

        public EventProp add(String str, int i) {
            return addProp(str, Integer.valueOf(i));
        }

        public EventProp add(String str, double d) {
            return addProp(str, Double.valueOf(d));
        }

        public EventProp add(String str, boolean z) {
            return addProp(str, Boolean.valueOf(z));
        }

        public JSONObject getProps() {
            return this.props;
        }

        public String toString() {
            return this.props.toString();
        }

        private EventProp addProp(String str, Object obj) {
            try {
                this.props.put(str, obj);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (this.action == null) {
                this.action = obj;
            } else if (this.label == null) {
                this.label = obj;
            }
            return this;
        }
    }

    private AnalyticsHandler(Context context, AnalyticsFilter analyticsFilter, boolean z) {
        this.context = context;
        this.mAnalyticsFilter = analyticsFilter;
        this.logsDatabase = new AnalyticsDatabaseHelper(context);
        this.mAbTestConfiguration = new AbTestConfiguration(context);
        this.mAllowedUser = z;
        this.mNotificationManagerCompat = NotificationManagerCompat.from(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.voxel.simplesearchlauncher.analytics.AnalyticsHandler.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                AnalyticsHandler.this.requestLogsSync();
            }
        }, intentFilter);
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.voxel.simplesearchlauncher.analytics.AnalyticsHandler.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    AnalyticsHandler.this.finishScreenView();
                }
            });
        }
    }

    public static synchronized void init(Context context, AnalyticsFilter analyticsFilter) {
        if (instance != null) {
            return;
        }
        if (context == null) {
            throw new IllegalArgumentException("Context must be provided.");
        }
        boolean z = true;
        try {
            if (ActivityManager.isUserAMonkey() || ActivityManager.isRunningInTestHarness()) {
                z = false;
            }
        } catch (Exception unused) {
        }
        instance = new AnalyticsHandler(context, analyticsFilter, z);
    }

    @Deprecated
    public static synchronized AnalyticsHandler getInstance() {
        if (instance == null) {
            throw new IllegalStateException("Instance must be initialized before trying to use.");
        }
        return instance;
    }

    public synchronized void startScreenView(String str, String str2, String str3, String str4, String str5) {
        finishScreenView();
        EventProp eventProp = new EventProp();
        if (str != null) {
            eventProp.add("type", str);
        }
        if (str2 != null) {
            eventProp.add("subtype", str2);
        }
        if (str3 != null) {
            eventProp.add("title", str3);
        }
        if (str4 != null) {
            eventProp.add("metadata", str4);
        }
        if (str5 != null) {
            eventProp.add("analytics_proto", str5);
        }
        if ("web".equals(str)) {
            logEvent("ev_screen_view", eventProp);
        } else {
            this.mScreenEvent = generateEventLog("ev_screen_view", eventProp);
            this.mScreenTime = SystemClock.elapsedRealtime();
        }
    }

    public synchronized void finishScreenView() {
        if (this.mScreenEvent == null) {
            return;
        }
        if (this.mScreenTime > 0) {
            try {
                this.mScreenEvent.getJSONObject("properties").put("duration", SystemClock.elapsedRealtime() - this.mScreenTime);
                saveLogToDatabase(AnalyticsDatabaseHelper.LogType.EVENT, this.mScreenEvent);
            } catch (JSONException e) {
                throw new IllegalStateException("Could not add duration", e);
            }
        }
        this.mScreenEvent = null;
        this.mScreenTime = -1L;
    }

    public void recordAppLaunch(Context context, Intent intent, String str) {
        logEvent("ev_app_launch", generateAppLaunchProperties(context, intent, str));
    }

    public void recordAppLaunch(String str, String str2, String str3) {
        logEvent("ev_app_launch", generateAppLaunchProperties(str, str2, str3));
    }

    public void logEvent(String str) {
        logEvent(str, null);
    }

    public void logEvent(String str, EventProp eventProp) {
        if (DebugUtil.isAnalyticsEnabled() && this.mAllowedUser && !TextUtils.isEmpty(str)) {
            if (eventProp == null) {
                eventProp = new EventProp();
            }
            if ("ev_app_launch".equals(str)) {
                finishScreenView();
                saveLogToDatabase(AnalyticsDatabaseHelper.LogType.APP_LAUNCH, generateEventLog(str, eventProp));
            } else {
                saveLogToDatabase(AnalyticsDatabaseHelper.LogType.EVENT, generateEventLog(str, eventProp));
            }
        }
    }

    public void requestLogsSync() {
        requestLogsSync(false);
    }

    public void requestLogsSync(boolean z) {
        NetworkInfo activeNetworkInfo;
        if (DebugUtil.isAnalyticsEnabled() && this.mAllowedUser) {
            if (!z) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
                if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                    return;
                }
                long j = (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9) ? 300000 : 1800000;
                if (System.currentTimeMillis() - this.mLastUploadTime < j) {
                    Log.d(TAG, "Skipping log upload for aonther " + (j - (System.currentTimeMillis() - this.mLastUploadTime)) + "ms");
                    return;
                }
            }
            this.mBackoffLimitRetries = 0;
            this.canSyncLogs = true;
            uploadLogs();
        }
    }

    public void stopLogsSync() {
        this.canSyncLogs = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject generateEventLog(String str, EventProp eventProp) {
        NotificationManager notificationManager;
        NotificationChannel notificationChannel;
        if (this.deviceInfo == null) {
            loadDeviceInfo();
        }
        Location currentLocation = LocationHandler.getInstance().getCurrentLocation();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", UUID.randomUUID().toString());
            jSONObject.put("event", str);
            jSONObject.put("device_id", this.deviceInfo.deviceId);
            jSONObject.put("user_id", this.distinctUserId);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("time_zone", TimeZone.getDefault().getID());
            jSONObject.put("os", this.deviceInfo.platform);
            jSONObject.put("os_version", this.deviceInfo.platformVersion);
            jSONObject.put("brand", this.deviceInfo.brand);
            jSONObject.put("manufacturer", this.deviceInfo.manufacturer);
            jSONObject.put("model", this.deviceInfo.model);
            jSONObject.put("package_id", this.deviceInfo.packageId);
            if (this.deviceInfo.carrier != null) {
                jSONObject.put("carrier", this.deviceInfo.carrier);
            }
            if (this.deviceInfo.country != null) {
                jSONObject.put("country", this.deviceInfo.country);
            }
            jSONObject.put("app_version", this.deviceInfo.appVersion);
            boolean z = true;
            if (currentLocation != null && this.mAnalyticsFilter.allowLocation()) {
                double latitude = currentLocation.getLatitude();
                double longitude = currentLocation.getLongitude();
                boolean z2 = latitude < 80.0d && latitude > 12.0d && longitude < -40.0d && longitude > -180.0d;
                if (!this.mAnalyticsFilter.isLocationUSGeolimited() || z2) {
                    jSONObject.put("location_geohash", GeoHash.geoHashStringWithCharacterPrecision(currentLocation.getLatitude(), currentLocation.getLongitude(), 6));
                }
            }
            if (str.equals("ev_ss_active") || str.equals("ev_ss_running")) {
                boolean zAreNotificationsEnabled = this.mNotificationManagerCompat.areNotificationsEnabled();
                if (Build.VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) this.context.getSystemService("notification")) != null && (notificationChannel = notificationManager.getNotificationChannel("default")) != null) {
                    if (notificationChannel.getImportance() == 0) {
                        z = false;
                    }
                    zAreNotificationsEnabled &= z;
                }
                jSONObject.put("notifications_enabled", zAreNotificationsEnabled);
            }
            if (eventProp != null) {
                jSONObject.put("properties", eventProp.getProps());
            }
        } catch (JSONException e) {
            Timber.m554e(e);
        }
        return this.mAnalyticsFilter.filter(jSONObject);
    }

    @SuppressLint({"CheckResult"})
    private void loadDeviceInfo() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        this.deviceInfo = new DeviceInfo();
        DeviceInfo deviceInfo = this.deviceInfo;
        deviceInfo.platform = "Android";
        deviceInfo.platformVersion = Build.VERSION.RELEASE;
        this.deviceInfo.brand = Build.BRAND;
        this.deviceInfo.manufacturer = Build.MANUFACTURER;
        this.deviceInfo.model = Build.MODEL;
        if (telephonyManager != null) {
            this.deviceInfo.carrier = telephonyManager.getSimOperatorName();
            this.deviceInfo.country = telephonyManager.getSimCountryIso();
        }
        this.deviceInfo.packageId = this.context.getPackageName();
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.deviceInfo.packageId, 0);
            this.deviceInfo.appVersion = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Could not get version code", e);
        }
        Observable.fromCallable(new Callable() { // from class: com.voxel.simplesearchlauncher.analytics.-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return AdvertisingIdClient.getAdvertisingIdInfo(this.f$0.context).getId();
            }
        }).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.voxel.simplesearchlauncher.analytics.-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.deviceInfo.deviceId = (String) obj;
            }
        }, new Consumer() { // from class: com.voxel.simplesearchlauncher.analytics.-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                AnalyticsHandler.lambda$loadDeviceInfo$3((Throwable) obj);
            }
        });
    }

    private String generateDistinctUserId() {
        return UUID.randomUUID().toString();
    }

    private void saveLogToDatabase(final AnalyticsDatabaseHelper.LogType logType, final JSONObject jSONObject) {
        if (!DebugUtil.isAnalyticsEnabled() || logType == null || jSONObject == null) {
            return;
        }
        try {
            Timber.m551d("ev: %s %s %d %s", jSONObject.getString("event"), jSONObject.getJSONObject("properties"), Long.valueOf(jSONObject.getLong("time")), jSONObject.getString("user_id"));
        } catch (JSONException e) {
            Timber.m554e(e);
        }
        try {
            String experiment = this.mAbTestConfiguration.getExperiment();
            if (!TextUtils.isEmpty(experiment)) {
                jSONObject.put("experiment", experiment);
            }
            String group = this.mAbTestConfiguration.getGroup();
            if (!TextUtils.isEmpty(group)) {
                jSONObject.put("group", group);
            }
        } catch (Exception e2) {
            Crashlytics.logException(e2);
        }
        Completable.fromAction(new Action() { // from class: com.voxel.simplesearchlauncher.analytics.-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco
            @Override // io.reactivex.functions.Action
            public final void run() {
                this.f$0.logsDatabase.insertLog(logType, jSONObject.toString());
            }
        }).subscribeOn(Schedulers.m548io()).subscribe();
    }

    private synchronized void uploadLogs() {
        if (this.canSyncLogs) {
            if (this.mUploadLogsTask == null) {
                this.mRetryHandler.removeCallbacks(this.mRetryRunnable);
                this.mUploadLogsTask = getUploadLogsAsyncTask();
                try {
                    this.mUploadLogsTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Throwable unused) {
                    this.mUploadLogsTask = null;
                }
            }
        }
    }

    @SuppressLint({"StaticFieldLeak"})
    private AsyncTask<Void, Void, Void> getUploadLogsAsyncTask() {
        return new AsyncTask<Void, Void, Void>() { // from class: com.voxel.simplesearchlauncher.analytics.AnalyticsHandler.3
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
            @Override // android.os.AsyncTask
            public synchronized Void doInBackground(Void... voidArr) {
                boolean z;
                try {
                    try {
                        boolean z2 = System.currentTimeMillis() - AnalyticsHandler.this.mLastAppAnalyticsUploadTime > 14400000;
                        int i = 0;
                        while (HttpRequestUtil.isConnected(AnalyticsHandler.this.context)) {
                            List<AnalyticsDatabaseHelper.LogInfo> logs = AnalyticsHandler.this.logsDatabase.getLogs(50, z2);
                            if (logs.size() > 0 && AnalyticsHandler.this.canSyncLogs && i < 500) {
                                Timber.m551d("Uploading analytics... " + logs.size(), new Object[0]);
                                JSONArray jSONArray = new JSONArray();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                Iterator<AnalyticsDatabaseHelper.LogInfo> it = logs.iterator();
                                JSONArray jSONArray2 = null;
                                while (it.hasNext()) {
                                    AnalyticsDatabaseHelper.LogInfo next = it.next();
                                    try {
                                        JSONObject jSONObject = new JSONObject(next.data);
                                        switch (C11844.f521xb4353fe2[next.type.ordinal()]) {
                                            case 1:
                                                z = z2;
                                                jSONArray.put(jSONObject);
                                                break;
                                            case 2:
                                                z = z2;
                                                break;
                                            case 3:
                                                if (z2) {
                                                    if (jSONArray2 == null) {
                                                        jSONArray2 = new JSONArray();
                                                    }
                                                    JSONObject jSONObject2 = new JSONObject();
                                                    JSONObject jSONObject3 = jSONObject.getJSONObject("properties");
                                                    z = z2;
                                                    try {
                                                        jSONObject2.put("age", jCurrentTimeMillis - jSONObject.getLong("time"));
                                                        jSONObject2.put("pkg", jSONObject3.get("launch_package_name"));
                                                        jSONObject2.put("cls", jSONObject3.get("launch_class_name"));
                                                        jSONObject2.put("src", jSONObject3.get("launch_source"));
                                                        jSONArray2.put(jSONObject2);
                                                    } catch (JSONException e) {
                                                        e = e;
                                                        Log.e(AnalyticsHandler.TAG, "Error generating analytics JSON object.", e);
                                                    }
                                                } else {
                                                    z = z2;
                                                    it.remove();
                                                }
                                                break;
                                            default:
                                                z = z2;
                                                break;
                                        }
                                    } catch (JSONException e2) {
                                        e = e2;
                                        z = z2;
                                    }
                                    z2 = z;
                                }
                                z2 = z2;
                                if (jSONArray2 != null) {
                                    JSONObject jSONObjectGenerateEventLog = AnalyticsHandler.this.generateEventLog("ev_app_launch_summary", null);
                                    jSONObjectGenerateEventLog.put("content_json", jSONArray2);
                                    jSONArray.put(jSONObjectGenerateEventLog);
                                }
                                if (jSONArray.length() != 0) {
                                    JSONObject jSONObject4 = new JSONObject();
                                    try {
                                        jSONObject4.put("events", jSONArray);
                                        jSONObject4.put("upload_time", jCurrentTimeMillis);
                                        if (HttpRequestUtil.sendPostRequest(AnalyticsHandler.this.context.getSharedPreferences("com.voxel.launcher3.prefs", 0).getBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", false) ? "https://api-staging.evie.com/" : "https://events.evie.com/events", jSONObject4.toString(), new StringBuilder(), true) == 200) {
                                            Timber.m551d("Analytics uploaded", new Object[0]);
                                            AnalyticsHandler.this.mLastUploadTime = System.currentTimeMillis();
                                            if (z2) {
                                                AnalyticsHandler.this.mLastAppAnalyticsUploadTime = System.currentTimeMillis();
                                            }
                                            Iterator<AnalyticsDatabaseHelper.LogInfo> it2 = logs.iterator();
                                            while (it2.hasNext()) {
                                                AnalyticsHandler.this.logsDatabase.deleteLog(it2.next().f520id);
                                            }
                                            AnalyticsHandler.this.mBackoffMilli = 1000;
                                            AnalyticsHandler.this.mBackoffLimitRetries = 0;
                                            i++;
                                        } else {
                                            for (AnalyticsDatabaseHelper.LogInfo logInfo : logs) {
                                                if (logInfo.numFailures >= 10) {
                                                    AnalyticsHandler.this.logsDatabase.deleteLog(logInfo.f520id);
                                                } else {
                                                    logInfo.numFailures++;
                                                    AnalyticsHandler.this.logsDatabase.updateLog(logInfo);
                                                }
                                            }
                                            AnalyticsHandler.this.mBackoffMilli = Math.min(AnalyticsHandler.this.mBackoffMilli * 4, 14400000);
                                            if (AnalyticsHandler.this.mBackoffMilli != 14400000 || AnalyticsHandler.this.mBackoffLimitRetries < 3) {
                                                AnalyticsHandler.this.mRetryHandler.postDelayed(AnalyticsHandler.this.mRetryRunnable, AnalyticsHandler.this.mBackoffMilli);
                                            }
                                            if (AnalyticsHandler.this.mBackoffMilli == 14400000) {
                                                AnalyticsHandler.access$808(AnalyticsHandler.this);
                                            }
                                            return null;
                                        }
                                    } catch (JSONException e3) {
                                        Log.e(AnalyticsHandler.TAG, "Error generating analytics JSON payload.", e3);
                                    }
                                }
                            }
                            return null;
                        }
                    } catch (Exception e4) {
                        Crashlytics.logException(e4);
                    }
                } catch (SQLiteDatabaseCorruptException unused) {
                    AnalyticsHandler.this.logsDatabase.recreateDB(AnalyticsHandler.this.context);
                } catch (Exception e5) {
                    Crashlytics.logException(e5);
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r3) {
                synchronized (AnalyticsHandler.this) {
                    AnalyticsHandler.this.mUploadLogsTask = null;
                }
            }
        };
    }

    /* JADX INFO: renamed from: com.voxel.simplesearchlauncher.analytics.AnalyticsHandler$4 */
    static /* synthetic */ class C11844 {

        /* JADX INFO: renamed from: $SwitchMap$com$voxel$simplesearchlauncher$analytics$AnalyticsDatabaseHelper$LogType */
        static final /* synthetic */ int[] f521xb4353fe2 = new int[AnalyticsDatabaseHelper.LogType.values().length];

        static {
            try {
                f521xb4353fe2[AnalyticsDatabaseHelper.LogType.EVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f521xb4353fe2[AnalyticsDatabaseHelper.LogType.PEOPLE_ATTR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f521xb4353fe2[AnalyticsDatabaseHelper.LogType.APP_LAUNCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public String getDistinctUserId() {
        if (this.distinctUserId == null) {
            this.distinctUserId = getFromSharedPref("anonym_user_id");
        }
        if (this.distinctUserId == null) {
            this.distinctUserId = generateDistinctUserId();
            saveDistinctUserId(this.distinctUserId);
        }
        return this.distinctUserId;
    }

    public void saveDistinctUserId(String str) {
        this.distinctUserId = str;
        saveToSharedPref("anonym_user_id", str);
    }

    private String getFromSharedPref(String str) {
        return this.context.getSharedPreferences("analytics_pref", 0).getString(str, null);
    }

    private void saveToSharedPref(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("analytics_pref", 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static EventProp generateAppLaunchProperties(Context context, Intent intent, String str) {
        return generateAppLaunchProperties(context, getComponent(context, intent), str);
    }

    public static EventProp generateAppLaunchProperties(Context context, ComponentName componentName, String str) {
        ComponentName launcherComponent = getLauncherComponent(context, componentName);
        return generateAppLaunchProperties(launcherComponent != null ? launcherComponent.getPackageName() : null, launcherComponent != null ? launcherComponent.getClassName() : null, str);
    }

    @SuppressLint({"NewApi"})
    private static EventProp generateAppLaunchProperties(String str, String str2, String str3) {
        EventProp eventProp = new EventProp();
        if (!TextUtils.isEmpty(str3)) {
            eventProp.add("launch_source", str3);
        }
        if (!TextUtils.isEmpty(str)) {
            eventProp.add("launch_package_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            eventProp.add("launch_class_name", str2);
        }
        return eventProp;
    }

    private static ComponentName getComponent(Context context, Intent intent) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (intent == null) {
                return null;
            }
            if (intent.getComponent() != null) {
                return intent.getComponent();
            }
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo != null && resolveInfoResolveActivity.activityInfo.packageName != null) {
                return new ComponentName(resolveInfoResolveActivity.activityInfo.packageName, resolveInfoResolveActivity.activityInfo.name);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static ComponentName getLauncherComponent(Context context, ComponentName componentName) {
        if (componentName == null) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setPackage(componentName.getPackageName());
            intent.addCategory("android.intent.category.LAUNCHER");
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                if (resolveInfo.activityInfo != null) {
                    String str = resolveInfo.activityInfo.packageName;
                    String str2 = resolveInfo.activityInfo.name;
                    if (componentName.getPackageName().equals(str) && componentName.getClassName().equals(str2)) {
                        return componentName;
                    }
                }
            }
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(componentName.getPackageName());
            if (launchIntentForPackage == null) {
                return null;
            }
            return launchIntentForPackage.getComponent();
        } catch (Exception e) {
            Crashlytics.logException(e);
            return null;
        }
    }
}
