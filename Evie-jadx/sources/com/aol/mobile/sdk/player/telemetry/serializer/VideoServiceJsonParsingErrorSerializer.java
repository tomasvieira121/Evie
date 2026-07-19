package com.aol.mobile.sdk.player.telemetry.serializer;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.telemetry.data.VideoServiceJsonParsingErrorData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VideoServiceJsonParsingErrorSerializer implements DataSerializer<VideoServiceJsonParsingErrorData> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(VideoServiceJsonParsingErrorData videoServiceJsonParsingErrorData) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(videoServiceJsonParsingErrorData.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", "VIDEO_SERVICE_JSON_PARSING_ERROR");
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("message", videoServiceJsonParsingErrorData.message);
        jSONObject3.put("responseJson", videoServiceJsonParsingErrorData.responseJson);
        jSONObject2.put("value", jSONObject3);
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }
}
