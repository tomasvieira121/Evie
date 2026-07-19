package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.player.VideoProviderResponse;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AdsTimeline {
    public final List<VideoProviderResponse.AdInfo> midrolls;
    public final VideoProviderResponse.AdInfo postrolls;
    public final VideoProviderResponse.AdInfo prerolls;
    public final String videoId;

    public AdsTimeline(String str, VideoProviderResponse.AdInfo adInfo, VideoProviderResponse.AdInfo adInfo2, List<VideoProviderResponse.AdInfo> list) {
        this.videoId = str;
        this.prerolls = adInfo;
        this.postrolls = adInfo2;
        this.midrolls = Collections.unmodifiableList(list);
    }
}
