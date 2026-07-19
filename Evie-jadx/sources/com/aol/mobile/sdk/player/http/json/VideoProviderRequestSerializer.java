package com.aol.mobile.sdk.player.http.json;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.http.model.VideoProviderRequest;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VideoProviderRequestSerializer implements DataSerializer<VideoProviderRequest> {
    @Override // com.aol.mobile.sdk.player.http.DataSerializer
    public String toJson(VideoProviderRequest videoProviderRequest) throws Exception {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("context", new JSONObject(videoProviderRequest.context));
        jSONObject2.put("autoplay", videoProviderRequest.isAutoplay);
        jSONObject2.put("sitesection", videoProviderRequest.siteSection == null ? "" : videoProviderRequest.siteSection);
        if (videoProviderRequest.extra != null) {
            jSONObject2.put("extra", videoProviderRequest.extra);
        }
        if (videoProviderRequest.videoIds != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < videoProviderRequest.videoIds.length; i++) {
                jSONArray.put(videoProviderRequest.videoIds[i]);
            }
            jSONObject2.put("videoIds", jSONArray);
        }
        if (videoProviderRequest.playlistId != null) {
            jSONObject2.put("playlistId", videoProviderRequest.playlistId);
        }
        jSONObject.put("player", jSONObject2);
        return jSONObject.toString();
    }
}
