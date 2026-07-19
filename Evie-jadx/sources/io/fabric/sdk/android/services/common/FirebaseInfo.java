package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseInfo {
    protected String getApiKeyFromFirebaseAppId(Context context) {
        int resourcesIdentifier = CommonUtils.getResourcesIdentifier(context, "google_app_id", "string");
        if (resourcesIdentifier == 0) {
            return null;
        }
        Fabric.getLogger().mo537d("Fabric", "Generating Crashlytics ApiKey from google_app_id in Strings");
        return createApiKeyFromFirebaseAppId(context.getResources().getString(resourcesIdentifier));
    }

    protected String createApiKeyFromFirebaseAppId(String str) {
        return CommonUtils.sha256(str).substring(0, 40);
    }

    public boolean isFirebaseCrashlyticsEnabled(Context context) {
        if (CommonUtils.getBooleanResourceValue(context, "com.crashlytics.useFirebaseAppId", false)) {
            return true;
        }
        return (CommonUtils.getResourcesIdentifier(context, "google_app_id", "string") != 0) && !(!TextUtils.isEmpty(new ApiKey().getApiKeyFromManifest(context)) || !TextUtils.isEmpty(new ApiKey().getApiKeyFromStrings(context)));
    }
}
