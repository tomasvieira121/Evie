package com.aol.mobile.sdk.player;

import androidx.core.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class VideoProviderResponse {
    public final Features features;
    public final boolean isAutoplay;
    public final PlaylistItem[] playlistItems;
    public final TrackingContext trackingContext;

    public interface PlaylistItemMatcher {
        boolean match(PlaylistItem playlistItem);
    }

    public VideoProviderResponse(boolean z, PlaylistItem[] playlistItemArr, TrackingContext trackingContext) {
        this(z, playlistItemArr, trackingContext, new Features(false, false));
    }

    public VideoProviderResponse(boolean z, PlaylistItem[] playlistItemArr, TrackingContext trackingContext, Features features) {
        this.playlistItems = playlistItemArr;
        this.trackingContext = trackingContext;
        this.isAutoplay = z;
        this.features = features;
    }

    public static VideoProviderResponse sortAndRemoveVoidVideos(String[] strArr, VideoProviderResponse videoProviderResponse) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (PlaylistItem playlistItem : videoProviderResponse.playlistItems) {
                if (playlistItem.video != null && str.equals(playlistItem.video.f155id)) {
                    arrayList.add(playlistItem);
                }
            }
        }
        return new VideoProviderResponse(videoProviderResponse.isAutoplay, (PlaylistItem[]) arrayList.toArray(new PlaylistItem[arrayList.size()]), videoProviderResponse.trackingContext);
    }

    public VideoProviderResponse withPlaylistItems(PlaylistItem[] playlistItemArr) {
        return new VideoProviderResponse(this.isAutoplay, playlistItemArr, this.trackingContext);
    }

    public VideoProviderResponse withAutoplay(boolean z) {
        return new VideoProviderResponse(z, this.playlistItems, this.trackingContext);
    }

    public VideoProviderResponse filter(PlaylistItemMatcher playlistItemMatcher) {
        LinkedList linkedList = new LinkedList();
        for (PlaylistItem playlistItem : this.playlistItems) {
            if (playlistItemMatcher.match(playlistItem)) {
                linkedList.add(playlistItem);
            }
        }
        return withPlaylistItems((PlaylistItem[]) linkedList.toArray(new PlaylistItem[linkedList.size()]));
    }

    public static final class PlaylistItem {
        public final Video video;
        public final VoidVideo voidVideo;

        public PlaylistItem(Video video) {
            this.video = video;
            this.voidVideo = null;
        }

        public PlaylistItem(VoidVideo voidVideo) {
            this.video = null;
            this.voidVideo = voidVideo;
        }
    }

    public static final class VoidVideo {
        public final String reason;
        public final String type;

        public VoidVideo(String str, String str2) {
            this.type = str;
            this.reason = str2;
        }
    }

    public static final class Video {
        public final BrandedContent brandedContent;

        /* JADX INFO: renamed from: id */
        public final String f155id;
        public final boolean isScreenCastingEnabled;
        public final List<AdInfo> midrolls;
        public final AdInfo postrolls;
        public final AdInfo prerolls;
        public final String renderer;
        public final String subtitleLang;
        public final String subtitleUrl;
        public final HashMap<Pair<Integer, Integer>, String> thumbnails;
        public final String title;
        public final String url;

        public Video(Map<Pair<Integer, Integer>, String> map, String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
            this.thumbnails = new HashMap<>();
            this.thumbnails.putAll(map);
            this.f155id = str;
            this.url = str2;
            this.title = str3;
            this.subtitleLang = str4;
            this.subtitleUrl = str5;
            this.renderer = str6;
            this.prerolls = new AdInfo(0L, "");
            this.postrolls = new AdInfo(0L, "");
            this.midrolls = Collections.emptyList();
            this.isScreenCastingEnabled = z;
            this.brandedContent = null;
        }

        public Video(Map<Pair<Integer, Integer>, String> map, String str, String str2, String str3, String str4, String str5, String str6, AdInfo adInfo, AdInfo adInfo2, List<AdInfo> list, boolean z) {
            this(map, str, str2, str3, str4, str5, str6, adInfo, adInfo2, list, z, null);
        }

        public Video(Map<Pair<Integer, Integer>, String> map, String str, String str2, String str3, String str4, String str5, String str6, AdInfo adInfo, AdInfo adInfo2, List<AdInfo> list, boolean z, BrandedContent brandedContent) {
            this.thumbnails = new HashMap<>();
            this.thumbnails.putAll(map);
            this.f155id = str;
            this.url = str2;
            this.title = str3;
            this.subtitleLang = str4;
            this.subtitleUrl = str5;
            this.renderer = str6;
            this.prerolls = adInfo;
            this.postrolls = adInfo2;
            this.midrolls = list;
            this.isScreenCastingEnabled = z;
            this.brandedContent = brandedContent;
        }

        public Video withUrl(String str) {
            return new Video(this.thumbnails, this.f155id, str, this.title, this.subtitleLang, this.subtitleUrl, this.renderer, this.prerolls, this.postrolls, this.midrolls, this.isScreenCastingEnabled, this.brandedContent);
        }

        public Video withSubtitleUrl(String str) {
            return new Video(this.thumbnails, this.f155id, this.url, this.title, this.subtitleLang, str, this.renderer, this.prerolls, this.postrolls, this.midrolls, this.isScreenCastingEnabled, this.brandedContent);
        }

        public Video withSubtitleLang(String str) {
            return new Video(this.thumbnails, this.f155id, this.url, this.title, str, this.subtitleUrl, this.renderer, this.prerolls, this.postrolls, this.midrolls, this.isScreenCastingEnabled, this.brandedContent);
        }

        public Video withTitle(String str) {
            return new Video(this.thumbnails, this.f155id, this.url, str, this.subtitleLang, this.subtitleUrl, this.renderer, this.prerolls, this.postrolls, this.midrolls, this.isScreenCastingEnabled, this.brandedContent);
        }

        public Video ScreenCastingEnabled(boolean z) {
            return new Video(this.thumbnails, this.f155id, this.url, this.title, this.subtitleLang, this.subtitleUrl, this.renderer, this.prerolls, this.postrolls, this.midrolls, z, this.brandedContent);
        }

        public Video withThumbnails(Map<Pair<Integer, Integer>, String> map) {
            return new Video(map, this.f155id, this.url, this.title, this.subtitleLang, this.subtitleUrl, this.renderer, this.prerolls, this.postrolls, this.midrolls, this.isScreenCastingEnabled, this.brandedContent);
        }
    }

    public static final class AdInfo {
        public final long timePosition;
        public final String url;

        public AdInfo(long j, String str) {
            this.timePosition = j;
            this.url = str;
        }
    }

    public static final class TrackingContext {
        public final String adUrl;
        public final String apid;
        public final String appId;
        public final String asJson;
        public final String bcid;
        public final String[] mediaFileHosts;
        public final String[] mpids;
        public final String pid;
        public final String platformSupport;
        public final String playerType;
        public final String playerVersion;
        public final String playlistId;
        public final String referringUrl;
        public final String sessionId;
        public final String siteSection;
        public final String trkUrl;
        public final String uuid;
        public final String[] vcids;
        public final String[] videoIds;
        public final String videoPlayType;

        public TrackingContext(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String str16) {
            this.trkUrl = str;
            this.adUrl = str2;
            this.playerVersion = str3;
            this.sessionId = str4;
            this.bcid = str5;
            this.playlistId = str6;
            this.appId = str7;
            this.pid = str8;
            this.uuid = str9;
            this.referringUrl = str10;
            this.playerType = str11;
            this.platformSupport = str12;
            this.videoPlayType = str13;
            this.apid = str14;
            this.siteSection = str15;
            this.videoIds = strArr;
            this.vcids = strArr2;
            this.mpids = strArr3;
            this.mediaFileHosts = strArr4;
            this.asJson = str16;
        }
    }

    public static final class Features {
        public final boolean embedClickthroughUrl;
        public final boolean showClickThroughClose;

        public Features(boolean z, boolean z2) {
            this.embedClickthroughUrl = z;
            this.showClickThroughClose = z2;
        }
    }

    public static final class BrandedContent {
        public final String advertisementText;
        public final String clickUrl;

        public BrandedContent(String str, String str2) {
            this.clickUrl = str;
            this.advertisementText = str2;
        }
    }
}
