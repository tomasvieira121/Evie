package io.fabric.sdk.android.services.settings;

import android.content.res.Resources;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.KitInfo;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.InputStream;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractAppSpiCall extends AbstractSpiCall {
    public AbstractAppSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    public boolean invoke(AppRequestData appRequestData) {
        HttpRequest httpRequestApplyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), appRequestData), appRequestData);
        Fabric.getLogger().mo537d("Fabric", "Sending app info to " + getUrl());
        if (appRequestData.icon != null) {
            Fabric.getLogger().mo537d("Fabric", "App icon hash is " + appRequestData.icon.hash);
            Fabric.getLogger().mo537d("Fabric", "App icon size is " + appRequestData.icon.width + "x" + appRequestData.icon.height);
        }
        int iCode = httpRequestApplyMultipartDataTo.code();
        String str = "POST".equals(httpRequestApplyMultipartDataTo.method()) ? "Create" : "Update";
        Fabric.getLogger().mo537d("Fabric", str + " app request ID: " + httpRequestApplyMultipartDataTo.header(AbstractSpiCall.HEADER_REQUEST_ID));
        Fabric.getLogger().mo537d("Fabric", "Result was " + iCode);
        return ResponseParser.parse(iCode) == 0;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, AppRequestData appRequestData) {
        return httpRequest.header(AbstractSpiCall.HEADER_API_KEY, appRequestData.apiKey).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, AppRequestData appRequestData) {
        HttpRequest httpRequestPart = httpRequest.part("app[identifier]", appRequestData.appId).part("app[name]", appRequestData.name).part("app[display_version]", appRequestData.displayVersion).part("app[build_version]", appRequestData.buildVersion).part("app[source]", Integer.valueOf(appRequestData.source)).part("app[minimum_sdk_version]", appRequestData.minSdkVersion).part("app[built_sdk_version]", appRequestData.builtSdkVersion);
        if (!CommonUtils.isNullOrEmpty(appRequestData.instanceIdentifier)) {
            httpRequestPart.part("app[instance_identifier]", appRequestData.instanceIdentifier);
        }
        if (appRequestData.icon != null) {
            InputStream inputStreamOpenRawResource = null;
            try {
                try {
                    inputStreamOpenRawResource = this.kit.getContext().getResources().openRawResource(appRequestData.icon.iconResourceId);
                    httpRequestPart.part("app[icon][hash]", appRequestData.icon.hash).part("app[icon][data]", "icon.png", "application/octet-stream", inputStreamOpenRawResource).part("app[icon][width]", Integer.valueOf(appRequestData.icon.width)).part("app[icon][height]", Integer.valueOf(appRequestData.icon.height));
                } catch (Resources.NotFoundException e) {
                    Fabric.getLogger().mo540e("Fabric", "Failed to find app icon with resource ID: " + appRequestData.icon.iconResourceId, e);
                }
                CommonUtils.closeOrLog(inputStreamOpenRawResource, "Failed to close app icon InputStream.");
            } catch (Throwable th) {
                CommonUtils.closeOrLog(inputStreamOpenRawResource, "Failed to close app icon InputStream.");
                throw th;
            }
        }
        if (appRequestData.sdkKits != null) {
            for (KitInfo kitInfo : appRequestData.sdkKits) {
                httpRequestPart.part(getKitVersionKey(kitInfo), kitInfo.getVersion());
                httpRequestPart.part(getKitBuildTypeKey(kitInfo), kitInfo.getBuildType());
            }
        }
        return httpRequestPart;
    }

    String getKitVersionKey(KitInfo kitInfo) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", kitInfo.getIdentifier());
    }

    String getKitBuildTypeKey(KitInfo kitInfo) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", kitInfo.getIdentifier());
    }
}
