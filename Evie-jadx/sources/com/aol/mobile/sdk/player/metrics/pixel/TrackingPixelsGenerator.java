package com.aol.mobile.sdk.player.metrics.pixel;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class TrackingPixelsGenerator {

    public static final class ContextStartedPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public ContextStartedPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public ContextStartedPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public ContextStartedPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public ContextStartedPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public ContextStartedPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public ContextStartedPixel m146pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public ContextStartedPixel m147pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public ContextStartedPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public ContextStartedPixel m148r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public ContextStartedPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public ContextStartedPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public ContextStartedPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public ContextStartedPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public ContextStartedPixel m145cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public ContextStartedPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/context-started.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoPlayPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoPlayPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoPlayPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoPlayPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoPlayPixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        public VideoPlayPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public VideoPlayPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public VideoPlayPixel m220w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        /* JADX INFO: renamed from: h */
        public VideoPlayPixel m215h(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "h", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoPlayPixel m216pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoPlayPixel m217pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public VideoPlayPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: ts */
        public VideoPlayPixel m219ts(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ts", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoPlayPixel m218r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoPlayPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public VideoPlayPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public VideoPlayPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public VideoPlayPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoPlayPixel m214cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public VideoPlayPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-play.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoDecilesPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoDecilesPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoDecilesPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoDecilesPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoDecilesPixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: d */
        public VideoDecilesPixel m202d(String str) {
            TrackingPixelsGenerator.add(this.params, "d", str);
            return this;
        }

        public VideoDecilesPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoDecilesPixel m203pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoDecilesPixel m204pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public VideoDecilesPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public VideoDecilesPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: ts */
        public VideoDecilesPixel m206ts(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ts", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoDecilesPixel m205r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoDecilesPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public VideoDecilesPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public VideoDecilesPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public VideoDecilesPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoDecilesPixel m201cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public VideoDecilesPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-decile.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoQuartilesPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoQuartilesPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoQuartilesPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoQuartilesPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoQuartilesPixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: q */
        public VideoQuartilesPixel m224q(String str) {
            TrackingPixelsGenerator.add(this.params, "q", str);
            return this;
        }

        public VideoQuartilesPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoQuartilesPixel m222pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoQuartilesPixel m223pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public VideoQuartilesPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public VideoQuartilesPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: ts */
        public VideoQuartilesPixel m226ts(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ts", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoQuartilesPixel m225r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoQuartilesPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public VideoQuartilesPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public VideoQuartilesPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public VideoQuartilesPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoQuartilesPixel m221cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public VideoQuartilesPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-quartile.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoTimePixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoTimePixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoTimePixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoTimePixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoTimePixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        public VideoTimePixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public VideoTimePixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public VideoTimePixel m238t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        public VideoTimePixel pct(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pct", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoTimePixel m235pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoTimePixel m236pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public VideoTimePixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: ts */
        public VideoTimePixel m239ts(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ts", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoTimePixel m237r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoTimePixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public VideoTimePixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public VideoTimePixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public VideoTimePixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoTimePixel m234cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public VideoTimePixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-time.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoStatsPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoStatsPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoStatsPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoStatsPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoStatsPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: nv */
        public VideoStatsPixel m229nv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "nv", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public VideoStatsPixel m233t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        /* JADX INFO: renamed from: ac */
        public VideoStatsPixel m227ac(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ac", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoStatsPixel m230pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoStatsPixel m231pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public VideoStatsPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoStatsPixel m232r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoStatsPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoStatsPixel m228cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public VideoStatsPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-stats.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class SlotOppPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public SlotOppPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public SlotOppPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public SlotOppPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public SlotOppPixel m184at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public SlotOppPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public SlotOppPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public SlotOppPixel slot(String str) {
            TrackingPixelsGenerator.add(this.params, "slot", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public SlotOppPixel m187pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public SlotOppPixel m188pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public SlotOppPixel m186ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public SlotOppPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public SlotOppPixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public SlotOppPixel m189r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public SlotOppPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public SlotOppPixel m185cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        /* JADX INFO: renamed from: s */
        public SlotOppPixel m190s(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "s", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public SlotOppPixel m191w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        public SlotOppPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/slot-opp.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdRequestPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdRequestPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdRequestPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdRequestPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdRequestPixel m106at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public AdRequestPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdRequestPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public AdRequestPixel asn(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "asn", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdRequestPixel m109pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdRequestPixel m108ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public AdRequestPixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdRequestPixel m110pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public AdRequestPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdRequestPixel m111r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdRequestPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdRequestPixel m107cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdRequestPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-request.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdServerRequestPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdServerRequestPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdServerRequestPixel bcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bcid", str);
            return this;
        }

        public AdServerRequestPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public AdServerRequestPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdServerRequestPixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdServerRequestPixel m113ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdServerRequestPixel m114r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public AdServerRequestPixel uuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "uuid", str);
            return this;
        }

        public AdServerRequestPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdServerRequestPixel m112cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdServerRequestPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "ads/ad-request.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdIssuePixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdIssuePixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdIssuePixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdIssuePixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public AdIssuePixel m105v(String str) {
            TrackingPixelsGenerator.add(this.params, "v", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdIssuePixel m98at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public AdIssuePixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdIssuePixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: dt */
        public AdIssuePixel m100dt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "dt", str);
            return this;
        }

        public AdIssuePixel stg(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "stg", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdIssuePixel m102pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdIssuePixel m103pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdIssuePixel m101ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public AdIssuePixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public AdIssuePixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        public AdIssuePixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        public AdIssuePixel rcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rcid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdIssuePixel m104r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdIssuePixel aen(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aen", str);
            return this;
        }

        public AdIssuePixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdIssuePixel m99cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdIssuePixel aid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aid", str);
            return this;
        }

        public AdIssuePixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-issue.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdViewTimePixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdViewTimePixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdViewTimePixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdViewTimePixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdViewTimePixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public AdViewTimePixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public AdViewTimePixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: s */
        public AdViewTimePixel m123s(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "s", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdViewTimePixel m120pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdViewTimePixel m121pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public AdViewTimePixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public AdViewTimePixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        public AdViewTimePixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        public AdViewTimePixel adid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "adid", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public AdViewTimePixel m124t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdViewTimePixel m122r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdViewTimePixel m119cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        /* JADX INFO: renamed from: al */
        public AdViewTimePixel m118al(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "al", str);
            return this;
        }

        public AdViewTimePixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-view-time.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdEngineRequestPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdEngineRequestPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdEngineRequestPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdEngineRequestPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public AdEngineRequestPixel m87v(String str) {
            TrackingPixelsGenerator.add(this.params, "v", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdEngineRequestPixel m81at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public AdEngineRequestPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdEngineRequestPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdEngineRequestPixel m84pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdEngineRequestPixel m85pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdEngineRequestPixel m83ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public AdEngineRequestPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public AdEngineRequestPixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        public AdEngineRequestPixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        public AdEngineRequestPixel rcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rcid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdEngineRequestPixel m86r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdEngineRequestPixel aen(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aen", str);
            return this;
        }

        public AdEngineRequestPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdEngineRequestPixel m82cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdEngineRequestPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-engine-request.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdEngineResponsePixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdEngineResponsePixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdEngineResponsePixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdEngineResponsePixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public AdEngineResponsePixel m97v(String str) {
            TrackingPixelsGenerator.add(this.params, "v", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdEngineResponsePixel m89at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        /* JADX INFO: renamed from: ar */
        public AdEngineResponsePixel m88ar(String str) {
            TrackingPixelsGenerator.add(this.params, "ar", str);
            return this;
        }

        public AdEngineResponsePixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdEngineResponsePixel aert(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aert", str);
            return this;
        }

        public AdEngineResponsePixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: to */
        public AdEngineResponsePixel m96to(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "to", str);
            return this;
        }

        /* JADX INFO: renamed from: ft */
        public AdEngineResponsePixel m91ft(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ft", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdEngineResponsePixel m93pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdEngineResponsePixel m94pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdEngineResponsePixel m92ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public AdEngineResponsePixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public AdEngineResponsePixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        public AdEngineResponsePixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        public AdEngineResponsePixel rcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rcid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdEngineResponsePixel m95r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdEngineResponsePixel aen(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aen", str);
            return this;
        }

        public AdEngineResponsePixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdEngineResponsePixel m90cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdEngineResponsePixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-engine-response.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdEngineFlowPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdEngineFlowPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdEngineFlowPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdEngineFlowPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public AdEngineFlowPixel m79v(String str) {
            TrackingPixelsGenerator.add(this.params, "v", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdEngineFlowPixel m72at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public AdEngineFlowPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdEngineFlowPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public AdEngineFlowPixel m80w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        /* JADX INFO: renamed from: h */
        public AdEngineFlowPixel m74h(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "h", str);
            return this;
        }

        /* JADX INFO: renamed from: ap */
        public AdEngineFlowPixel m71ap(String str) {
            TrackingPixelsGenerator.add(this.params, "ap", str);
            return this;
        }

        public AdEngineFlowPixel stg(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "stg", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdEngineFlowPixel m76pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdEngineFlowPixel m77pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdEngineFlowPixel m75ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        public AdEngineFlowPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public AdEngineFlowPixel txid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "txid", str);
            return this;
        }

        public AdEngineFlowPixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        public AdEngineFlowPixel rcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rcid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdEngineFlowPixel m78r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdEngineFlowPixel aen(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aen", str);
            return this;
        }

        public AdEngineFlowPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdEngineFlowPixel m73cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdEngineFlowPixel aid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "aid", str);
            return this;
        }

        public AdEngineFlowPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/ad-engine-flow.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdViewabilityPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdViewabilityPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdViewabilityPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public AdViewabilityPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public AdViewabilityPixel m131v(String str) {
            TrackingPixelsGenerator.add(this.params, "v", str);
            return this;
        }

        /* JADX INFO: renamed from: ap */
        public AdViewabilityPixel m125ap(String str) {
            TrackingPixelsGenerator.add(this.params, "ap", str);
            return this;
        }

        /* JADX INFO: renamed from: at */
        public AdViewabilityPixel m126at(String str) {
            TrackingPixelsGenerator.add(this.params, "at", str);
            return this;
        }

        public AdViewabilityPixel vstd(String str) {
            TrackingPixelsGenerator.add(this.params, "vstd", str);
            return this;
        }

        public AdViewabilityPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public AdViewabilityPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public AdViewabilityPixel m128pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public AdViewabilityPixel m129pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public AdViewabilityPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdViewabilityPixel m130r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public AdViewabilityPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdViewabilityPixel m127cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdViewabilityPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/mrc-ad-view.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class ImpressionsPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public ImpressionsPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public ImpressionsPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public ImpressionsPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public ImpressionsPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public ImpressionsPixel m171pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        public ImpressionsPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public ImpressionsPixel m172r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public ImpressionsPixel m170cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public ImpressionsPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/impression.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class VideoImpressionPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public VideoImpressionPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public VideoImpressionPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public VideoImpressionPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public VideoImpressionPixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        public VideoImpressionPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public VideoImpressionPixel m209pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public VideoImpressionPixel m210pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public VideoImpressionPixel m211r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public VideoImpressionPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public VideoImpressionPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: ts */
        public VideoImpressionPixel m212ts(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ts", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public VideoImpressionPixel m207cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public VideoImpressionPixel m213w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        /* JADX INFO: renamed from: h */
        public VideoImpressionPixel m208h(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "h", str);
            return this;
        }

        public VideoImpressionPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public VideoImpressionPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        public VideoImpressionPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        public VideoImpressionPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/video-impression.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class DisplaysPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public DisplaysPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public DisplaysPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public DisplaysPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public DisplaysPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public DisplaysPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        /* JADX INFO: renamed from: dt */
        public DisplaysPixel m150dt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "dt", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public DisplaysPixel m155w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        /* JADX INFO: renamed from: h */
        public DisplaysPixel m151h(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "h", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public DisplaysPixel m152pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public DisplaysPixel m153pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public DisplaysPixel m154r(String str) {
            TrackingPixelsGenerator.add(this.params, "r", str);
            return this;
        }

        public DisplaysPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public DisplaysPixel m149cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public DisplaysPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "trk/display.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class AdStartPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public AdStartPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public AdStartPixel bcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bcid", str);
            return this;
        }

        public AdStartPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public AdStartPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public AdStartPixel rid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "rid", str);
            return this;
        }

        /* JADX INFO: renamed from: ps */
        public AdStartPixel m116ps(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ps", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public AdStartPixel m117r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public AdStartPixel uuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "uuid", str);
            return this;
        }

        public AdStartPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public AdStartPixel m115cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public AdStartPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "ads/ad-start.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class Video3SecPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public Video3SecPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public Video3SecPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public Video3SecPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public Video3SecPixel vid(String str) {
            TrackingPixelsGenerator.add(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public Video3SecPixel m199pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public Video3SecPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public Video3SecPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public Video3SecPixel m200r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public Video3SecPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public Video3SecPixel m198pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public Video3SecPixel m197cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public Video3SecPixel app_id(String str) {
            TrackingPixelsGenerator.add(this.params, "app_id", str);
            return this;
        }

        public Video3SecPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public Video3SecPixel vcid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcid", str);
            return this;
        }

        public Video3SecPixel mpid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "mpid", str);
            return this;
        }

        public Video3SecPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public Video3SecPixel bft(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bft", str);
            return this;
        }

        public Video3SecPixel bit(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bit", str);
            return this;
        }

        public Video3SecPixel cvt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "cvt", str);
            return this;
        }

        public Video3SecPixel vcdn(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcdn", str);
            return this;
        }

        public Video3SecPixel apid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "apid", str);
            return this;
        }

        public Video3SecPixel pvwsound(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "p.vw.sound", str);
            return this;
        }

        public String get() {
            return "trk/video-3sec.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class HeartbeatPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public HeartbeatPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public HeartbeatPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public HeartbeatPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public HeartbeatPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public HeartbeatPixel m167r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public HeartbeatPixel m165pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public HeartbeatPixel m166pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public HeartbeatPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public HeartbeatPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public HeartbeatPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        public HeartbeatPixel cvt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "cvt", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public HeartbeatPixel m168t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        public HeartbeatPixel seq(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "seq", str);
            return this;
        }

        /* JADX INFO: renamed from: w */
        public HeartbeatPixel m169w(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "w", str);
            return this;
        }

        /* JADX INFO: renamed from: h */
        public HeartbeatPixel m164h(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "h", str);
            return this;
        }

        public HeartbeatPixel vpt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vpt", str);
            return this;
        }

        public HeartbeatPixel bft(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bft", str);
            return this;
        }

        public HeartbeatPixel bit(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bit", str);
            return this;
        }

        public HeartbeatPixel vcdn(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vcdn", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public HeartbeatPixel m163cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public HeartbeatPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public HeartbeatPixel apid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "apid", str);
            return this;
        }

        public HeartbeatPixel pvwsound(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "p.vw.sound", str);
            return this;
        }

        public String get() {
            return "lstr/heartbeat.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class IntentPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public IntentPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public IntentPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public IntentPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public IntentPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public IntentPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public IntentPixel m176pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public IntentPixel m175pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public IntentPixel m177r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public IntentPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        public IntentPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public IntentPixel m174it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        public IntentPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public IntentPixel m173cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public IntentPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/intent.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class StartPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public StartPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public StartPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public StartPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public StartPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public StartPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public StartPixel m193it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public StartPixel m195pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public StartPixel m194pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public StartPixel m196r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public StartPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        public StartPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public StartPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public StartPixel m192cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public StartPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/start.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class ErrorPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public ErrorPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public ErrorPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public ErrorPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public ErrorPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        public ErrorPixel msg(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "msg", str);
            return this;
        }

        /* JADX INFO: renamed from: ec */
        public ErrorPixel m157ec(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "ec", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public ErrorPixel m158it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public ErrorPixel m162t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public ErrorPixel m161r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        public ErrorPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public ErrorPixel m159pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public ErrorPixel m160pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        public ErrorPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public ErrorPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public ErrorPixel m156cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public ErrorPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/error.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class RayLoadPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public RayLoadPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public RayLoadPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public RayLoadPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public RayLoadPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public RayLoadPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public RayLoadPixel m179it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public RayLoadPixel m181pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public RayLoadPixel m180pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public RayLoadPixel m182r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public RayLoadPixel m183t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        public RayLoadPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        public RayLoadPixel lvl(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "lvl", str);
            return this;
        }

        public RayLoadPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public RayLoadPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public RayLoadPixel m178cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public RayLoadPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/ray-load.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class BufferStartPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public BufferStartPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public BufferStartPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public BufferStartPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public BufferStartPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public BufferStartPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public BufferStartPixel m140it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public BufferStartPixel m142pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public BufferStartPixel m141pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public BufferStartPixel m143r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public BufferStartPixel m144t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        public BufferStartPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        public BufferStartPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public BufferStartPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public BufferStartPixel m139cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public BufferStartPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/buffer-start.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    public static final class BufferEndPixel {
        private final ArrayList<String> params = new ArrayList<>();

        public BufferEndPixel pid(String str) {
            TrackingPixelsGenerator.add(this.params, "pid", str);
            return this;
        }

        public BufferEndPixel bid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bid", str);
            return this;
        }

        public BufferEndPixel bcid(String str) {
            TrackingPixelsGenerator.add(this.params, "bcid", str);
            return this;
        }

        public BufferEndPixel sid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "sid", str);
            return this;
        }

        public BufferEndPixel vid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vid", str);
            return this;
        }

        /* JADX INFO: renamed from: it */
        public BufferEndPixel m134it(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "it", str);
            return this;
        }

        /* JADX INFO: renamed from: bt */
        public BufferEndPixel m132bt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "bt", str);
            return this;
        }

        /* JADX INFO: renamed from: pv */
        public BufferEndPixel m136pv(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pv", str);
            return this;
        }

        /* JADX INFO: renamed from: pt */
        public BufferEndPixel m135pt(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "pt", str);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public BufferEndPixel m137r(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "r", str);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public BufferEndPixel m138t(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "t", str);
            return this;
        }

        public BufferEndPixel url(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "url", str);
            return this;
        }

        public BufferEndPixel vvuid(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "vvuid", str);
            return this;
        }

        public BufferEndPixel app_id(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "app_id", str);
            return this;
        }

        /* JADX INFO: renamed from: cb */
        public BufferEndPixel m133cb(String str) {
            TrackingPixelsGenerator.add(this.params, "cb", str);
            return this;
        }

        public BufferEndPixel mfwsitesection(String str) {
            TrackingPixelsGenerator.addIfNotNull(this.params, "m.fwsitesection", str);
            return this;
        }

        public String get() {
            return "qoe/buffer-end.gif?" + TrackingPixelsGenerator.join("&", this.params);
        }
    }

    static void addIfNotNull(ArrayList<String> arrayList, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        add(arrayList, str, str2);
    }

    static void add(ArrayList<String> arrayList, String str, String str2) {
        try {
            arrayList.add(URLEncoder.encode(str, "UTF-8") + "=" + URLEncoder.encode(str2, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public static String join(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }
}
