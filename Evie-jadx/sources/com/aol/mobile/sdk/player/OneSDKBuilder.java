package com.aol.mobile.sdk.player;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import com.aol.mobile.sdk.BuildConfig;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.HttpServiceException;
import com.aol.mobile.sdk.player.http.ResponseHandler;
import com.aol.mobile.sdk.player.http.json.LocalConfigSerializer;
import com.aol.mobile.sdk.player.http.json.RemoteConfigParser;
import com.aol.mobile.sdk.player.http.model.Client;
import com.aol.mobile.sdk.player.http.model.Device;
import com.aol.mobile.sdk.player.http.model.LocalConfig;
import com.aol.mobile.sdk.player.http.model.Sdk;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import com.aol.mobile.sdk.renderer.RenderersRegistry;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class OneSDKBuilder {
    private String advertId;
    private final Context context;
    private JSONObject extra;
    private final RenderersRegistry renderersRegistry;
    private boolean limitAdTracking = true;
    String configUrl = BuildConfig.MS_PROD_BASE_URL;

    public interface Callback {
        void onFailure(Exception exc);

        void onSuccess(OneSDK oneSDK);
    }

    public OneSDKBuilder(Context context) {
        this.context = context.getApplicationContext();
        this.renderersRegistry = new RenderersRegistry(context);
    }

    static Client getClient(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
            return new Client(applicationInfo.packageName, str, applicationLabel == null ? "" : applicationLabel.toString(), packageInfo.versionName);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    static ArrayList<Sdk.Renderer> getRenderers(Collection<String> collection) {
        ArrayList<Sdk.Renderer> arrayList = new ArrayList<>();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            String[] strArrSplit = it.next().split("@");
            arrayList.add(new Sdk.Renderer(strArrSplit[0], strArrSplit[1]));
        }
        return arrayList;
    }

    static Device getDevice() {
        return new Device("Android", Build.MANUFACTURER + "/" + Build.DEVICE + "/" + Build.MODEL + "/" + Build.BRAND, Build.VERSION.RELEASE);
    }

    public OneSDKBuilder setExtra(JSONObject jSONObject) {
        this.extra = jSONObject;
        return this;
    }

    public OneSDKBuilder setAdvertisingId(String str) {
        this.advertId = str;
        return this;
    }

    public OneSDKBuilder setLimitAdTracking(boolean z) {
        this.limitAdTracking = z;
        return this;
    }

    public OneSDKBuilder setConfigUrl(String str) {
        this.configUrl = str;
        return this;
    }

    public void create(Callback callback) {
        String str = this.advertId;
        if (str != null) {
            create(callback, str, this.limitAdTracking);
            return;
        }
        if (hasAmazonAdvertisingID(this.context)) {
            createUsingAmazonAdvertId(callback);
        } else if (hasGoogleAdvertisingId()) {
            createUsingGoogleAdvertId(callback);
        } else {
            create(callback, this.advertId, this.limitAdTracking);
        }
    }

    private void createUsingAmazonAdvertId(Callback callback) {
        ContentResolver contentResolver = this.context.getContentResolver();
        try {
            create(callback, Settings.Secure.getString(contentResolver, "advertising_id"), Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0);
        } catch (Settings.SettingNotFoundException unused) {
            create(callback, this.advertId, true ^ this.limitAdTracking);
        }
    }

    private boolean hasAmazonAdvertisingID(Context context) {
        try {
            Settings.Secure.getInt(context.getContentResolver(), "limit_ad_tracking");
            return true;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.aol.mobile.sdk.player.OneSDKBuilder$1] */
    @SuppressLint({"StaticFieldLeak"})
    private void createUsingGoogleAdvertId(final Callback callback) {
        new AsyncTask<Void, Void, AdvertisingIdClient.Info>() { // from class: com.aol.mobile.sdk.player.OneSDKBuilder.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public AdvertisingIdClient.Info doInBackground(Void... voidArr) {
                try {
                    return AdvertisingIdClient.getAdvertisingIdInfo(OneSDKBuilder.this.context);
                } catch (Exception unused) {
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(AdvertisingIdClient.Info info) {
                if (info != null) {
                    OneSDKBuilder.this.create(callback, info.getId(), info.isLimitAdTrackingEnabled());
                } else {
                    OneSDKBuilder oneSDKBuilder = OneSDKBuilder.this;
                    oneSDKBuilder.create(callback, oneSDKBuilder.advertId, OneSDKBuilder.this.limitAdTracking);
                }
            }
        }.execute(new Void[0]);
    }

    private boolean hasGoogleAdvertisingId() {
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void create(final Callback callback, String str, boolean z) {
        HttpService httpService = new HttpService(new Handler());
        Context context = this.context;
        if (z) {
            str = null;
        }
        LocalConfig localConfig = new LocalConfig(getClient(context, str), getDevice(), new Sdk(BuildConfig.VERSION_NAME, getRenderers(this.renderersRegistry.listRenderersId())), this.extra);
        RemoteConfigParser remoteConfigParser = new RemoteConfigParser();
        httpService.makePost(this.configUrl, localConfig, new LocalConfigSerializer(), remoteConfigParser, new ResponseHandler<SdkConfig>() { // from class: com.aol.mobile.sdk.player.OneSDKBuilder.2
            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onSuccess(SdkConfig sdkConfig) {
                callback.onSuccess(new OneSDK(OneSDKBuilder.this.context, sdkConfig));
            }

            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onFailure(HttpServiceException httpServiceException) {
                callback.onFailure(httpServiceException);
            }
        });
    }
}
