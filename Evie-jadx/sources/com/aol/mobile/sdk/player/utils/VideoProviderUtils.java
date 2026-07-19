package com.aol.mobile.sdk.player.utils;

import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.model.AdsTimeline;
import com.aol.mobile.sdk.player.model.PlaylistItem;
import com.aol.mobile.sdk.player.model.VideoModel;
import com.aol.mobile.sdk.player.model.VoidVideoModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VideoProviderUtils {
    public static List<PlaylistItem> getVideoModelsList(VideoProviderResponse videoProviderResponse) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < videoProviderResponse.playlistItems.length; i++) {
            VideoProviderResponse.PlaylistItem playlistItem = videoProviderResponse.playlistItems[i];
            if (playlistItem.video != null) {
                VideoProviderResponse.Video video = playlistItem.video;
                ArrayList arrayList2 = new ArrayList();
                Iterator<VideoProviderResponse.AdInfo> it = video.midrolls.iterator();
                while (it.hasNext()) {
                    arrayList2.add(Long.valueOf(it.next().timePosition));
                }
                arrayList.add(new PlaylistItem(new VideoModel(video.url, video.subtitleLang, video.subtitleUrl, video.title, video.renderer, video.isScreenCastingEnabled, video.brandedContent == null ? null : new VideoModel.BrandedContent(video.brandedContent.clickUrl, video.brandedContent.advertisementText), video.thumbnails, arrayList2)));
            } else {
                arrayList.add(new PlaylistItem(new VoidVideoModel(playlistItem.voidVideo.reason)));
            }
        }
        return arrayList;
    }

    public static String[] getVideoIds(VideoProviderResponse videoProviderResponse) {
        VideoProviderResponse.PlaylistItem[] playlistItemArr = videoProviderResponse.playlistItems;
        ArrayList arrayList = new ArrayList();
        for (VideoProviderResponse.PlaylistItem playlistItem : playlistItemArr) {
            if (playlistItem.video != null) {
                arrayList.add(playlistItem.video.f155id);
            } else {
                arrayList.add(null);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static AdsTimeline[] getAdsTimelines(VideoProviderResponse videoProviderResponse) {
        VideoProviderResponse.PlaylistItem[] playlistItemArr = videoProviderResponse.playlistItems;
        ArrayList arrayList = new ArrayList();
        for (VideoProviderResponse.PlaylistItem playlistItem : playlistItemArr) {
            if (playlistItem.video != null) {
                VideoProviderResponse.Video video = playlistItem.video;
                if (video.midrolls == null) {
                    arrayList.add(new AdsTimeline(video.f155id, video.prerolls, video.postrolls, Collections.emptyList()));
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<VideoProviderResponse.AdInfo> it = video.midrolls.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(Long.valueOf(it.next().timePosition));
                    }
                    arrayList.add(new AdsTimeline(video.f155id, video.prerolls, video.postrolls, video.midrolls));
                }
            } else {
                arrayList.add(new AdsTimeline("", new VideoProviderResponse.AdInfo(0L, ""), new VideoProviderResponse.AdInfo(0L, ""), Collections.emptyList()));
            }
        }
        return (AdsTimeline[]) arrayList.toArray(new AdsTimeline[arrayList.size()]);
    }
}
