package com.aol.mobile.sdk.player.p002js.telemetry;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.p002js.telemetry.data.JsIssue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JsIssueSerializer implements DataSerializer<JsIssue> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(JsIssue jsIssue) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context", new JSONObject(jsIssue.context));
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", jsIssue.type.toString());
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("description", jsIssue.description);
        jSONObject3.put("text", jsIssue.text);
        jSONObject2.put("metadata", jSONObject3);
        jSONObject.put("issue", jSONObject2);
        return jSONObject.toString();
    }
}
