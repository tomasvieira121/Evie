package com.aol.mobile.sdk.player.http.model;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VideoProviderRequest {
    public final String context;
    public final JSONObject extra;
    public final boolean isAutoplay;
    public final String playlistId;
    public final String siteSection;
    public final String[] videoIds;

    public VideoProviderRequest(String str, JSONObject jSONObject, boolean z, String str2, String[] strArr, String str3) {
        this.context = str;
        this.extra = jSONObject;
        this.isAutoplay = z;
        this.videoIds = strArr;
        this.playlistId = str3;
        this.siteSection = str2;
    }
}
