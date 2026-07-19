package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Beta extends Kit<Boolean> implements DeviceIdentifierProvider {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.2.7.19";
    }

    public static Beta getInstance() {
        return (Beta) Fabric.getKit(Beta.class);
    }

    @Override // io.fabric.sdk.android.Kit
    @TargetApi(14)
    protected boolean onPreExecute() {
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, (Application) getContext().getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() throws Throwable {
        Fabric.getLogger().mo537d(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        if (TextUtils.isEmpty(getBetaDeviceToken(context, idManager.getInstallerPackageName()))) {
            Fabric.getLogger().mo537d(TAG, "A Beta device token was not found for this app");
            return false;
        }
        Fabric.getLogger().mo537d(TAG, "Beta device token is present, checking for app updates.");
        BetaSettingsData betaSettingsData = getBetaSettingsData();
        BuildProperties buildPropertiesLoadBuildProperties = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettingsData, buildPropertiesLoadBuildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, buildPropertiesLoadBuildProperties, new PreferenceStoreImpl(this), new SystemCurrentTimeProvider(), new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return true;
    }

    @TargetApi(14)
    UpdatesController createUpdatesController(int i, Application application) {
        if (i >= 14) {
            return new ActivityLifecycleCheckForUpdatesController(getFabric().getActivityLifecycleManager(), getFabric().getExecutorService());
        }
        return new ImmediateCheckForUpdatesController();
    }

    @Override // io.fabric.sdk.android.services.common.DeviceIdentifierProvider
    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        String betaDeviceToken = getBetaDeviceToken(getContext(), getIdManager().getInstallerPackageName());
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            map.put(IdManager.DeviceIdentifierType.FONT_TOKEN, betaDeviceToken);
        }
        return map;
    }

    boolean canCheckForUpdates(BetaSettingsData betaSettingsData, BuildProperties buildProperties) {
        return (betaSettingsData == null || TextUtils.isEmpty(betaSettingsData.updateUrl) || buildProperties == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String str) {
        String str2 = null;
        try {
            String str3 = this.deviceTokenCache.get(context, this.deviceTokenLoader);
            if (!"".equals(str3)) {
                str2 = str3;
            }
        } catch (Exception e) {
            Fabric.getLogger().mo540e(TAG, "Failed to load the Beta device token", e);
        }
        Logger logger = Fabric.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append("Beta device token present: ");
        sb.append(!TextUtils.isEmpty(str2));
        logger.mo537d(TAG, sb.toString());
        return str2;
    }

    private BetaSettingsData getBetaSettingsData() {
        SettingsData settingsDataAwaitSettingsData = Settings.getInstance().awaitSettingsData();
        if (settingsDataAwaitSettingsData != null) {
            return settingsDataAwaitSettingsData.betaSettingsData;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.io.InputStream] */
    private BuildProperties loadBuildProperties(Context context) throws Throwable {
        BuildProperties buildProperties;
        Throwable th;
        ?? Open;
        BuildProperties buildProperties2;
        ?? r0 = 0;
        BuildProperties buildPropertiesFromPropertiesStream = null;
        BuildProperties buildProperties3 = null;
        ?? r1 = 0;
        try {
            try {
                Open = context.getAssets().open(CRASHLYTICS_BUILD_PROPERTIES);
                if (Open != 0) {
                    try {
                        buildPropertiesFromPropertiesStream = BuildProperties.fromPropertiesStream(Open);
                        Fabric.getLogger().mo537d(TAG, buildPropertiesFromPropertiesStream.packageName + " build properties: " + buildPropertiesFromPropertiesStream.versionName + " (" + buildPropertiesFromPropertiesStream.versionCode + ") - " + buildPropertiesFromPropertiesStream.buildId);
                        buildProperties3 = buildPropertiesFromPropertiesStream;
                    } catch (Exception e) {
                        e = e;
                        BuildProperties buildProperties4 = buildPropertiesFromPropertiesStream;
                        r1 = Open;
                        buildProperties = buildProperties4;
                        Fabric.getLogger().mo540e(TAG, "Error reading Beta build properties", e);
                        r0 = r1;
                        buildProperties2 = buildProperties;
                        if (r1 != 0) {
                            try {
                                r1.close();
                                r0 = r1;
                                buildProperties2 = buildProperties;
                            } catch (IOException e2) {
                                Fabric.getLogger().mo540e(TAG, "Error closing Beta build properties asset", e2);
                                r0 = e2;
                                buildProperties2 = buildProperties;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (Open != 0) {
                            try {
                                Open.close();
                            } catch (IOException e3) {
                                Fabric.getLogger().mo540e(TAG, "Error closing Beta build properties asset", e3);
                            }
                        }
                        throw th;
                    }
                }
                if (Open != 0) {
                    try {
                        Open.close();
                    } catch (IOException e4) {
                        Fabric.getLogger().mo540e(TAG, "Error closing Beta build properties asset", e4);
                    }
                }
                buildProperties2 = buildProperties3;
                r0 = buildProperties3;
            } catch (Throwable th3) {
                ?? r5 = r0;
                th = th3;
                Open = r5;
            }
        } catch (Exception e5) {
            e = e5;
            buildProperties = null;
        }
        return buildProperties2;
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
