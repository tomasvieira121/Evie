package io.fabric.sdk.android.services.settings;

import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class DefaultSettingsSpiCall extends AbstractSpiCall implements SettingsSpiCall {
    boolean requestWasSuccessful(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    public DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory) {
        this(kit, str, str2, httpRequestFactory, HttpMethod.GET);
    }

    DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0098  */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x0098, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // io.fabric.sdk.android.services.settings.SettingsSpiCall
    public JSONObject invoke(SettingsRequest settingsRequest) throws Throwable {
        Throwable th;
        HttpRequest httpRequestApplyHeadersTo;
        Logger logger;
        String str;
        StringBuilder sb;
        JSONObject jSONObjectHandleResponse = null;
        try {
            Map<String, String> queryParamsFor = getQueryParamsFor(settingsRequest);
            HttpRequest httpRequest = getHttpRequest(queryParamsFor);
            try {
                httpRequestApplyHeadersTo = applyHeadersTo(httpRequest, settingsRequest);
                try {
                    try {
                        Fabric.getLogger().mo537d("Fabric", "Requesting settings from " + getUrl());
                        Fabric.getLogger().mo537d("Fabric", "Settings query params were: " + queryParamsFor);
                        jSONObjectHandleResponse = handleResponse(httpRequestApplyHeadersTo);
                        if (httpRequestApplyHeadersTo != null) {
                            logger = Fabric.getLogger();
                            str = "Fabric";
                            sb = new StringBuilder();
                            sb.append("Settings request ID: ");
                            sb.append(httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID));
                            logger.mo537d(str, sb.toString());
                        }
                    } catch (HttpRequest.HttpRequestException e) {
                        e = e;
                        Fabric.getLogger().mo540e("Fabric", "Settings request failed.", e);
                        if (httpRequestApplyHeadersTo != null) {
                            logger = Fabric.getLogger();
                            str = "Fabric";
                            sb = new StringBuilder();
                        }
                        return jSONObjectHandleResponse;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (httpRequestApplyHeadersTo != null) {
                        Fabric.getLogger().mo537d("Fabric", "Settings request ID: " + httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID));
                    }
                    throw th;
                }
            } catch (HttpRequest.HttpRequestException e2) {
                e = e2;
                httpRequestApplyHeadersTo = httpRequest;
            } catch (Throwable th3) {
                th = th3;
                httpRequestApplyHeadersTo = httpRequest;
                if (httpRequestApplyHeadersTo != null) {
                    Fabric.getLogger().mo537d("Fabric", "Settings request ID: " + httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID));
                }
                throw th;
            }
        } catch (HttpRequest.HttpRequestException e3) {
            e = e3;
            httpRequestApplyHeadersTo = null;
        } catch (Throwable th4) {
            th = th4;
            httpRequestApplyHeadersTo = null;
        }
        return jSONObjectHandleResponse;
    }

    JSONObject handleResponse(HttpRequest httpRequest) {
        int iCode = httpRequest.code();
        Fabric.getLogger().mo537d("Fabric", "Settings result was: " + iCode);
        if (requestWasSuccessful(iCode)) {
            return getJsonObjectFrom(httpRequest.body());
        }
        Fabric.getLogger().mo539e("Fabric", "Failed to retrieve settings from " + getUrl());
        return null;
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            Fabric.getLogger().mo538d("Fabric", "Failed to parse settings JSON from " + getUrl(), e);
            Fabric.getLogger().mo537d("Fabric", "Settings response " + str);
            return null;
        }
    }

    private Map<String, String> getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap map = new HashMap();
        map.put("build_version", settingsRequest.buildVersion);
        map.put("display_version", settingsRequest.displayVersion);
        map.put("source", Integer.toString(settingsRequest.source));
        if (settingsRequest.iconHash != null) {
            map.put("icon_hash", settingsRequest.iconHash);
        }
        String str = settingsRequest.instanceId;
        if (!CommonUtils.isNullOrEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_API_KEY, settingsRequest.apiKey);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
        applyNonNullHeader(httpRequest, "X-CRASHLYTICS-DEVICE-MODEL", settingsRequest.deviceModel);
        applyNonNullHeader(httpRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", settingsRequest.osBuildVersion);
        applyNonNullHeader(httpRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpRequest, "X-CRASHLYTICS-INSTALLATION-ID", settingsRequest.installationId);
        if (TextUtils.isEmpty(settingsRequest.advertisingId)) {
            applyNonNullHeader(httpRequest, "X-CRASHLYTICS-ANDROID-ID", settingsRequest.androidId);
        } else {
            applyNonNullHeader(httpRequest, "X-CRASHLYTICS-ADVERTISING-TOKEN", settingsRequest.advertisingId);
        }
        return httpRequest;
    }

    private void applyNonNullHeader(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.header(str, str2);
        }
    }
}
