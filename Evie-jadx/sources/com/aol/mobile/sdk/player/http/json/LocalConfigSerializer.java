package com.aol.mobile.sdk.player.http.json;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.http.model.LocalConfig;
import com.aol.mobile.sdk.player.http.model.Sdk;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class LocalConfigSerializer implements DataSerializer<LocalConfig> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(LocalConfig localConfig) throws Exception {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("id", localConfig.client.f158id);
        if (localConfig.client.advertisementId != null) {
            jSONObject3.put("advertisementId", localConfig.client.advertisementId);
        }
        jSONObject3.put("name", localConfig.client.name);
        jSONObject3.put("version", localConfig.client.version);
        jSONObject2.put("client", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("platform", localConfig.device.platform);
        jSONObject4.put("model", localConfig.device.model);
        jSONObject4.put("os", localConfig.device.f159os);
        jSONObject2.put("device", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("version", localConfig.sdk.version);
        JSONArray jSONArray = new JSONArray();
        List<Sdk.Renderer> list = localConfig.sdk.renderers;
        for (int i = 0; i < list.size(); i++) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("id", list.get(i).f160id);
            jSONObject6.put("version", list.get(i).version);
            jSONArray.put(jSONObject6);
        }
        jSONObject5.put("renderers", jSONArray);
        jSONObject2.put("sdk", jSONObject5);
        if (localConfig.extra != null) {
            jSONObject2.put("extra", localConfig.extra);
        }
        jSONObject.put("context", jSONObject2);
        return jSONObject.toString();
    }
}
