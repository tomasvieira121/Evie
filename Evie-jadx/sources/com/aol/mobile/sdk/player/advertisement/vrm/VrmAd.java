package com.aol.mobile.sdk.player.advertisement.vrm;

import com.aol.mobile.sdk.annotations.PrivateApi;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public class VrmAd {
    public final String adId;
    public final String adVideoUrl;
    public final boolean maintainAspectRatio;
    public final Pixels pixels;
    public final boolean scalable;
    public final String targetUrl;
    public final String vastAdTagURI;
    private VrmSource vrmSource;

    public VrmAd(String str, String str2, Pixels pixels, boolean z, boolean z2, String str3) {
        this.vrmSource = new VrmSource();
        this.pixels = pixels;
        this.adVideoUrl = str;
        this.targetUrl = str2;
        this.vastAdTagURI = null;
        this.scalable = z;
        this.maintainAspectRatio = z2;
        this.adId = str3;
    }

    public VrmAd(String str, Pixels pixels, boolean z, boolean z2, String str2) {
        this.vrmSource = new VrmSource();
        this.pixels = pixels;
        this.adVideoUrl = null;
        this.targetUrl = null;
        this.vastAdTagURI = str;
        this.scalable = z;
        this.maintainAspectRatio = z2;
        this.adId = str2;
    }

    public VrmSource getVrmSource() {
        return this.vrmSource;
    }

    public void setVrmSource(VrmSource vrmSource) {
        this.vrmSource = vrmSource;
    }

    public VrmAd merge(VrmAd vrmAd) {
        VrmAd vrmAd2;
        if (vrmAd == null) {
            return this;
        }
        Pixels pixels = new Pixels(this.pixels, vrmAd.pixels);
        String str = vrmAd.adVideoUrl;
        if (str != null) {
            vrmAd2 = new VrmAd(str, vrmAd.targetUrl, pixels, this.scalable, this.maintainAspectRatio, vrmAd.adId);
        } else {
            vrmAd2 = new VrmAd(vrmAd.vastAdTagURI, pixels, this.scalable, this.maintainAspectRatio, vrmAd.adId);
        }
        vrmAd2.setVrmSource(this.vrmSource);
        return vrmAd2;
    }

    @PrivateApi
    public static class Pixels {
        public final String[] clickTracking;
        public final String[] complete;
        public final String[] creativeView;
        public final String[] error;
        public final String[] firstQuartile;
        public final String[] impression;
        public final String[] midpoint;
        public final String[] pause;
        public final String[] resume;
        public final String[] start;
        public final String[] thirdQuartile;

        public Pixels(HashMap<String, List<String>> map) {
            String[] strArr = new String[0];
            this.impression = map.containsKey("Impression") ? (String[]) map.get("Impression").toArray(strArr) : strArr;
            this.error = map.containsKey("Error") ? (String[]) map.get("Error").toArray(strArr) : strArr;
            this.clickTracking = map.containsKey("ClickTracking") ? (String[]) map.get("ClickTracking").toArray(strArr) : strArr;
            this.creativeView = map.containsKey("creativeView") ? (String[]) map.get("creativeView").toArray(strArr) : strArr;
            this.start = map.containsKey("start") ? (String[]) map.get("start").toArray(strArr) : strArr;
            this.firstQuartile = map.containsKey("firstQuartile") ? (String[]) map.get("firstQuartile").toArray(strArr) : strArr;
            this.midpoint = map.containsKey("midpoint") ? (String[]) map.get("midpoint").toArray(strArr) : strArr;
            this.thirdQuartile = map.containsKey("thirdQuartile") ? (String[]) map.get("thirdQuartile").toArray(strArr) : strArr;
            this.complete = map.containsKey("complete") ? (String[]) map.get("complete").toArray(strArr) : strArr;
            this.pause = map.containsKey("pause") ? (String[]) map.get("pause").toArray(strArr) : strArr;
            this.resume = map.containsKey("resume") ? (String[]) map.get("resume").toArray(strArr) : strArr;
        }

        private Pixels(Pixels pixels, Pixels pixels2) {
            this.impression = concat(pixels.impression, pixels2.impression);
            this.error = concat(pixels.error, pixels2.error);
            this.clickTracking = concat(pixels.clickTracking, pixels2.clickTracking);
            this.creativeView = concat(pixels.creativeView, pixels2.creativeView);
            this.start = concat(pixels.start, pixels2.start);
            this.firstQuartile = concat(pixels.firstQuartile, pixels2.firstQuartile);
            this.midpoint = concat(pixels.midpoint, pixels2.midpoint);
            this.thirdQuartile = concat(pixels.thirdQuartile, pixels2.thirdQuartile);
            this.complete = concat(pixels.complete, pixels2.complete);
            this.pause = concat(pixels.pause, pixels2.pause);
            this.resume = concat(pixels.resume, pixels2.resume);
        }

        private String[] concat(String[] strArr, String[] strArr2) {
            String[] strArr3 = (String[]) Arrays.copyOf(strArr, strArr.length + strArr2.length);
            System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
            return strArr3;
        }
    }
}
