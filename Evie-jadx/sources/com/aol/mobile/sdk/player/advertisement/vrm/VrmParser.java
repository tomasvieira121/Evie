package com.aol.mobile.sdk.player.advertisement.vrm;

import com.aol.mobile.sdk.player.advertisement.utils.Task;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class VrmParser {

    public interface Listener {
        void error(Exception exc);

        void success(List<List<Task<VrmAd, VrmSource>>> list, String str, String str2);
    }

    public static void parse(byte[] bArr, Listener listener) {
        try {
            ParsedData parsedData = parse(bArr);
            listener.success(parsedData.tasks, parsedData.txid, parsedData.slot);
        } catch (JSONException e) {
            listener.error(e);
        }
    }

    static ParsedData parse(byte[] bArr) throws JSONException {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = new JSONObject(new String(bArr));
        String string = jSONObject.getString("txid");
        String string2 = jSONObject.getString("slot");
        JSONArray jSONArray = jSONObject.getJSONArray("aeg");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArray2 = jSONArray.getJSONArray(i);
            int length2 = jSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                VrmSource vrmSource = new VrmSource();
                String string3 = null;
                vrmSource.setUrl(jSONObject2.has("url") ? jSONObject2.optString("url") : null);
                vrmSource.setXml(jSONObject2.has("vastXml") ? jSONObject2.getString("vastXml") : null);
                vrmSource.setAdEngineType(jSONObject2.has("adEngineType") ? jSONObject2.getString("adEngineType") : null);
                vrmSource.setRuleId(jSONObject2.has("rid") ? jSONObject2.getString("rid") : null);
                vrmSource.setRuleCompanyId(jSONObject2.has("rcid") ? jSONObject2.getString("rcid") : null);
                vrmSource.setVendor(jSONObject2.getString("vendor"));
                if (jSONObject2.has("name")) {
                    string3 = jSONObject2.getString("name");
                }
                vrmSource.setName(string3);
                arrayList2.add(new Task(vrmSource));
            }
            arrayList.add(arrayList2);
        }
        return new ParsedData(arrayList, string, string2);
    }

    static class ParsedData {
        final String slot;
        final List<List<Task<VrmAd, VrmSource>>> tasks;
        final String txid;

        public ParsedData(List<List<Task<VrmAd, VrmSource>>> list, String str, String str2) {
            this.tasks = list;
            this.txid = str;
            this.slot = str2;
        }
    }
}
