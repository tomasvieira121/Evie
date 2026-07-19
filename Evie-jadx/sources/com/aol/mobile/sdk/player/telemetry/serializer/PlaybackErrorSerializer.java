package com.aol.mobile.sdk.player.telemetry.serializer;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.telemetry.data.PlaybackErrorData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackErrorSerializer implements DataSerializer<PlaybackErrorData> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(PlaybackErrorData playbackErrorData) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(playbackErrorData.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", "PLAYBACK_ERROR");
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("errorState", playbackErrorData.errorState.name());
        jSONObject3.put("propsAsString", playbackErrorData.propsAsString);
        jSONObject2.put("value", jSONObject3);
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }
}
