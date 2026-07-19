package com.crashlytics.android.beta;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class CheckForUpdatesRequest extends AbstractSpiCall {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    static String createBetaTokenHeaderValueFor(String str) {
        return "3:" + str;
    }

    public CheckForUpdatesRequest(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    public CheckForUpdatesResponse invoke(String str, String str2, BuildProperties buildProperties) throws Throwable {
        HttpRequest httpRequestApplyHeadersTo;
        String strHeader;
        Logger logger;
        String str3;
        StringBuilder sb;
        try {
            try {
                Map<String, String> queryParamsFor = getQueryParamsFor(buildProperties);
                HttpRequest httpRequest = getHttpRequest(queryParamsFor);
                try {
                    httpRequestApplyHeadersTo = applyHeadersTo(httpRequest, str, str2);
                    try {
                        Fabric.getLogger().mo537d(Beta.TAG, "Checking for updates from " + getUrl());
                        Fabric.getLogger().mo537d(Beta.TAG, "Checking for updates query params are: " + queryParamsFor);
                        if (httpRequestApplyHeadersTo.m547ok()) {
                            Fabric.getLogger().mo537d(Beta.TAG, "Checking for updates was successful");
                            CheckForUpdatesResponse checkForUpdatesResponseFromJson = this.responseTransform.fromJson(new JSONObject(httpRequestApplyHeadersTo.body()));
                            if (httpRequestApplyHeadersTo != null) {
                                String strHeader2 = httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID);
                                Fabric.getLogger().mo537d("Fabric", "Checking for updates request ID: " + strHeader2);
                            }
                            return checkForUpdatesResponseFromJson;
                        }
                        Fabric.getLogger().mo539e(Beta.TAG, "Checking for updates failed. Response code: " + httpRequestApplyHeadersTo.code());
                        if (httpRequestApplyHeadersTo != null) {
                            strHeader = httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID);
                            logger = Fabric.getLogger();
                            str3 = "Fabric";
                            sb = new StringBuilder();
                            sb.append("Checking for updates request ID: ");
                            sb.append(strHeader);
                            logger.mo537d(str3, sb.toString());
                        }
                        return null;
                    } catch (Exception e) {
                        e = e;
                        Fabric.getLogger().mo540e(Beta.TAG, "Error while checking for updates from " + getUrl(), e);
                        if (httpRequestApplyHeadersTo != null) {
                            strHeader = httpRequestApplyHeadersTo.header(AbstractSpiCall.HEADER_REQUEST_ID);
                            logger = Fabric.getLogger();
                            str3 = "Fabric";
                            sb = new StringBuilder();
                        }
                        return null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    httpRequestApplyHeadersTo = httpRequest;
                } catch (Throwable th) {
                    th = th;
                    str = httpRequest;
                    if (str != 0) {
                        String strHeader3 = str.header(AbstractSpiCall.HEADER_REQUEST_ID);
                        Fabric.getLogger().mo537d("Fabric", "Checking for updates request ID: " + strHeader3);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            httpRequestApplyHeadersTo = null;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str, String str2) {
        return httpRequest.header(AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE).header(AbstractSpiCall.HEADER_USER_AGENT, AbstractSpiCall.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).header(AbstractSpiCall.HEADER_DEVELOPER_TOKEN, AbstractSpiCall.CLS_ANDROID_SDK_DEVELOPER_TOKEN).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, str).header(HEADER_BETA_TOKEN, createBetaTokenHeaderValueFor(str2));
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap map = new HashMap();
        map.put(BUILD_VERSION, buildProperties.versionCode);
        map.put(DISPLAY_VERSION, buildProperties.versionName);
        map.put(INSTANCE, buildProperties.buildId);
        map.put(SOURCE, "3");
        return map;
    }
}
