package com.aol.mobile.sdk.player.telemetry.serializer;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.telemetry.data.VrmStatisticsData;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VrmStatisticsSerializer implements DataSerializer<VrmStatisticsData> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(VrmStatisticsData vrmStatisticsData) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(vrmStatisticsData.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", "VRM_STATISTICS");
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("vrmProcessingTime", vrmStatisticsData.vrmProcessingTime);
        jSONObject3.put("adBufferingTime", vrmStatisticsData.adBufferingTime);
        jSONObject2.put("value", jSONObject3);
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }
}
