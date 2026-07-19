package com.aol.mobile.sdk.player.model;

import androidx.core.util.Pair;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.utils.Preconditions;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class VideoModel {
    public final List<Long> adTimings;
    public final BrandedContent brandedContent;
    public final boolean isScreenCastingEnabled;
    public final String renderer;
    public String subtitlesLang;
    public final String subtitlesUrl;
    public final HashMap<Pair<Integer, Integer>, String> thumbnails;
    public final String title;
    public final String url;

    public VideoModel(String str, String str2, boolean z) {
        this(str, str2, z, Collections.emptyMap());
    }

    public VideoModel(String str, String str2, boolean z, Map<Pair<Integer, Integer>, String> map) {
        this(str, null, str2, "com.onemobilesdk.videorenderer.flat@2.11", z, map);
    }

    public VideoModel(String str, String str2, String str3, String str4, boolean z, Map<Pair<Integer, Integer>, String> map) {
        this(str, null, str2, str3, str4, z, null, map, null);
    }

    public VideoModel(String str, String str2, String str3, String str4, String str5, boolean z, Map<Pair<Integer, Integer>, String> map) {
        this(str, str2, str3, str4, str5, z, null, map, null);
    }

    public VideoModel(String str, String str2, String str3, String str4, String str5, boolean z, BrandedContent brandedContent, Map<Pair<Integer, Integer>, String> map, List<Long> list) {
        this.thumbnails = new HashMap<>();
        Preconditions.checkArgument(str != null, "Url can not be null");
        this.url = str;
        this.subtitlesUrl = str3;
        this.subtitlesLang = str2;
        this.title = str4;
        this.renderer = str5;
        this.isScreenCastingEnabled = z;
        this.brandedContent = brandedContent;
        this.thumbnails.putAll(map);
        this.adTimings = list;
    }

    public VideoModel withTitle(String str) {
        return new VideoModel(this.url, this.subtitlesLang, this.subtitlesUrl, str, this.renderer, this.isScreenCastingEnabled, this.brandedContent, this.thumbnails, this.adTimings);
    }

    public VideoModel withUrl(String str) {
        return new VideoModel(str, this.subtitlesLang, this.subtitlesUrl, this.title, this.renderer, this.isScreenCastingEnabled, this.brandedContent, this.thumbnails, this.adTimings);
    }

    public VideoModel withSubtitlesUrl(String str) {
        return new VideoModel(this.url, this.subtitlesLang, str, this.title, this.renderer, this.isScreenCastingEnabled, this.brandedContent, this.thumbnails, this.adTimings);
    }

    public VideoModel withRenderer(String str) {
        return new VideoModel(this.url, this.subtitlesLang, this.subtitlesUrl, this.title, str, this.isScreenCastingEnabled, this.brandedContent, this.thumbnails, this.adTimings);
    }

    public VideoModel withThumbnails(Map<Pair<Integer, Integer>, String> map) {
        return new VideoModel(this.url, this.subtitlesLang, this.subtitlesUrl, this.title, this.renderer, this.isScreenCastingEnabled, this.brandedContent, map, this.adTimings);
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
