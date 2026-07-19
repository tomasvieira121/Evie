package com.aol.mobile.sdk.player.telemetry.serializer;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.telemetry.data.ExternalPlaybackTriggeredData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ExternalPlaybackTriggeredSerializer implements DataSerializer<ExternalPlaybackTriggeredData> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(ExternalPlaybackTriggeredData externalPlaybackTriggeredData) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(externalPlaybackTriggeredData.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", "EXTERNAL_PLAYBACK_TRIGGERED");
        jSONObject2.put("value", new JSONObject());
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }
}
