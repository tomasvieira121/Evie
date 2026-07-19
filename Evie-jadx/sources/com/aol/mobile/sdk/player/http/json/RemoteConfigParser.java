package com.aol.mobile.sdk.player.http.json;

import com.aol.mobile.sdk.player.http.ResponseParser;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteConfigParser implements ResponseParser<SdkConfig> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.aol.mobile.sdk.player.http.ResponseParser
    public SdkConfig parse(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str).getJSONObject("config");
        JSONObject jSONObject2 = jSONObject.getJSONObject("video");
        JSONObject jSONObject3 = jSONObject.getJSONObject("tracking");
        JSONObject jSONObject4 = jSONObject2.getJSONObject("context");
        JSONObject jSONObject5 = jSONObject.getJSONObject("telemetry");
        return new SdkConfig(jSONObject.getString("userAgent"), new SdkConfig.Services(new SdkConfig.Services.Video(jSONObject4.toString(), jSONObject2.getString("url"))), getTracking(jSONObject3), new SdkConfig.Telemetry(jSONObject5.getJSONObject("context").toString(), jSONObject5.getString("url")));
    }

    private SdkConfig.Tracking getTracking(JSONObject jSONObject) throws Exception {
        if (jSONObject.has("native")) {
            return new SdkConfig.Tracking.Native();
        }
        if (jSONObject.has("javascript")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("javascript");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("telemetry");
            return new SdkConfig.Tracking.JavaScript(jSONObject2.getString("source"), new SdkConfig.Telemetry(jSONObject3.getJSONObject("context").toString(), jSONObject3.getString("url")));
        }
        throw new RuntimeException("Not supported tracking found: " + jSONObject.toString());
    }
}
