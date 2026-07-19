package com.aol.mobile.sdk.player.telemetry.serializer;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.telemetry.data.SubtitlesEnabledData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SubtitlesEnabledSerializer implements DataSerializer<SubtitlesEnabledData> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(SubtitlesEnabledData subtitlesEnabledData) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(subtitlesEnabledData.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", "SUBTITLES_ENABLED");
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("subtitlesType", subtitlesEnabledData.isExternal ? "EXTERNAL" : "INTERNAL");
        jSONObject2.put("value", jSONObject3);
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }
}
