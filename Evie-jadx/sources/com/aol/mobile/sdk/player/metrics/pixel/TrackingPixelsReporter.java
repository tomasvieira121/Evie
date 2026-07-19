package com.aol.mobile.sdk.player.metrics.pixel;

import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.listener.detector.BufferEndDetector;
import com.aol.mobile.sdk.player.listener.detector.BufferStartDetector;
import com.aol.mobile.sdk.player.listener.detector.ContextStartedDetector;
import com.aol.mobile.sdk.player.listener.detector.DecileDetector;
import com.aol.mobile.sdk.player.listener.detector.HeartbeatDetector;
import com.aol.mobile.sdk.player.listener.detector.ImpressionDisplayDetector;
import com.aol.mobile.sdk.player.listener.detector.IntentDetector;
import com.aol.mobile.sdk.player.listener.detector.PlaylistStatisticDetector;
import com.aol.mobile.sdk.player.listener.detector.QuartileDetector;
import com.aol.mobile.sdk.player.listener.detector.SlotOppDetector;
import com.aol.mobile.sdk.player.listener.detector.StartDetector;
import com.aol.mobile.sdk.player.listener.detector.Video3SecDetector;
import com.aol.mobile.sdk.player.listener.detector.VideoPlayDetector;
import com.aol.mobile.sdk.player.listener.detector.VideoTimeDetector;
import com.aol.mobile.sdk.player.utils.CacheBuster;
import com.aol.mobile.sdk.player.utils.TimeProvider;
import com.aol.mobile.sdk.player.utils.VolumeGetter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TrackingPixelsReporter implements BufferEndDetector.Callback, BufferStartDetector.Callback, ContextStartedDetector.Callback, DecileDetector.Callback, HeartbeatDetector.Callback, ImpressionDisplayDetector.Callback, IntentDetector.Callback, PlaylistStatisticDetector.Callback, QuartileDetector.Callback, SlotOppDetector.Callback, StartDetector.Callback, Video3SecDetector.Callback, VideoPlayDetector.Callback, VideoTimeDetector.Callback {
    private final String adUrl;
    private final String apid;
    private final String applicationId;
    private final String buyingCompanyId;
    private final CacheBuster cacheBuster;
    private final String[] mediaFileHosts;
    private String[] mpids;
    private final String platformSupport;
    private final String playerId;
    private final String playerType;
    private final String playerVersion;
    private final String playlistId;
    private final String referringUrl;
    private final TrackingPixelsSender sender;
    private final String sessionId;
    private final String siteSection;
    private final TimeProvider timeProvider;
    private final String trkUrl;
    private final String uuid;
    private String[] vcids;
    private String[] videoIds;
    private final String videoPlayType;
    private final VolumeGetter volumeGetter;

    private String checkNull(String str) {
        return str == null ? "" : str;
    }

    public TrackingPixelsReporter(PixelsSender pixelsSender, VideoProviderResponse.TrackingContext trackingContext, CacheBuster cacheBuster, TimeProvider timeProvider, VolumeGetter volumeGetter) {
        this.sender = pixelsSender;
        this.trkUrl = trackingContext.trkUrl;
        this.adUrl = trackingContext.adUrl;
        this.applicationId = trackingContext.appId;
        this.playerId = trackingContext.pid;
        this.buyingCompanyId = trackingContext.bcid;
        this.uuid = trackingContext.uuid;
        this.playerType = trackingContext.playerType;
        this.platformSupport = trackingContext.platformSupport;
        this.videoIds = trackingContext.videoIds;
        this.mediaFileHosts = trackingContext.mediaFileHosts;
        this.playlistId = trackingContext.playlistId;
        this.siteSection = trackingContext.siteSection;
        this.referringUrl = trackingContext.referringUrl;
        this.videoPlayType = trackingContext.videoPlayType;
        this.playerVersion = trackingContext.playerVersion;
        this.sessionId = trackingContext.sessionId;
        this.apid = trackingContext.apid;
        this.vcids = trackingContext.vcids;
        this.mpids = trackingContext.mpids;
        this.cacheBuster = cacheBuster;
        this.timeProvider = timeProvider;
        this.volumeGetter = volumeGetter;
    }

    private int getVolume(boolean z) {
        if (z) {
            return 0;
        }
        return this.volumeGetter.getAudioVolume();
    }

    private String getVcdn(int i) {
        String[] strArr = this.mediaFileHosts;
        if (strArr == null) {
            return null;
        }
        return strArr[i];
    }

    private String formatVideoDecileUrl(int i, int i2, String str) {
        return new TrackingPixelsGenerator.VideoDecilesPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).seq(String.valueOf(i)).m202d(String.valueOf(i2)).bid(this.playlistId).m204pv(this.playerVersion).sid(this.sessionId).vpt(this.videoPlayType).m203pt(this.playerType).m205r(this.referringUrl).m206ts(this.timeProvider.get()).vvuid(str).m201cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatVideoQuartileUrl(int i, int i2, String str) {
        return new TrackingPixelsGenerator.VideoQuartilesPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).seq(String.valueOf(i)).bid(this.playlistId).m224q(String.valueOf(i2)).m223pv(this.playerVersion).sid(this.sessionId).vpt(this.videoPlayType).m222pt(this.playerType).m225r(this.referringUrl).m226ts(this.timeProvider.get()).vvuid(str).m221cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatVideoPlayUrl(int i, int i2, int i3, String str) {
        return new TrackingPixelsGenerator.VideoPlayPixel().app_id(this.applicationId).pid(this.playerId).vid(this.videoIds[i]).seq(String.valueOf(i)).bid(this.playlistId).bcid(this.buyingCompanyId).vpt(this.videoPlayType).m220w(String.valueOf(i2)).m215h(String.valueOf(i3)).m216pt(this.playerType).m217pv(this.playerVersion).sid(this.sessionId).m218r(this.referringUrl).m219ts(this.timeProvider.get()).vvuid(str).m214cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatVideoStatisticUrl(int i, float f, int i2, String str) {
        return new TrackingPixelsGenerator.VideoStatsPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).bid(this.playlistId).m229nv(String.valueOf(i)).m233t(String.format(Locale.ENGLISH, "%.4f", Float.valueOf(f))).m227ac(String.valueOf(i2)).m230pt(this.playerType).m231pv(this.playerVersion).m232r(this.referringUrl).sid(this.sessionId).vvuid(str).m228cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatVideoTimeUrl(int i, float f, Double d, String str) {
        return new TrackingPixelsGenerator.VideoTimePixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).seq(String.valueOf(i)).bid(this.playlistId).vpt(this.videoPlayType).m238t(String.format(Locale.ENGLISH, "%.4f", Float.valueOf(f))).pct(d == null ? null : String.format(Locale.ENGLISH, "%.4f", d)).m235pt(this.playerType).m236pv(this.playerVersion).sid(this.sessionId).m237r(this.referringUrl).m239ts(this.timeProvider.get()).vvuid(str).m234cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdRequestUrl(int i, String str, String str2, int i2, String str3) {
        return new TrackingPixelsGenerator.AdRequestPixel().app_id(this.applicationId).bcid(this.buyingCompanyId).pid(this.playerId).m106at(str).bid(this.playlistId).vid(this.videoIds[i]).asn(String.valueOf(i2)).txid(str2).m109pt(this.playerType).m110pv(this.playerVersion).m108ps(this.platformSupport).sid(this.sessionId).m111r(this.referringUrl).vvuid(str3).m107cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdEngineRequestUrl(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        return new TrackingPixelsGenerator.AdEngineRequestPixel().app_id(this.applicationId).bcid(this.buyingCompanyId).pid(this.playerId).m87v(str).m81at(str2).bid(this.playlistId).vid(this.videoIds[i]).m84pt(this.playerType).m85pv(this.playerVersion).m83ps(this.platformSupport).sid(this.sessionId).txid(str3).m86r(this.referringUrl).rid(str4).rcid(str5).aen(str6).vvuid(str7).m82cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdServerRequestUrl(String str, String str2, String str3) {
        return new TrackingPixelsGenerator.AdServerRequestPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).bid(this.playlistId).m114r(this.referringUrl).rid(str).uuid(str2).vvuid(str3).m112cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).m113ps(this.platformSupport).get();
    }

    private String formatAdIssueUrl(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        return new TrackingPixelsGenerator.AdIssuePixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).m105v(str).m98at(str2).bid(this.playlistId).m102pt(this.playerType).m103pv(this.playerVersion).m101ps(this.platformSupport).sid(this.sessionId).txid(str3).rid(str4).rcid(str5).m100dt(str6).m104r(this.referringUrl).stg(str7).aen(str8).aid(str10).vvuid(str9).m99cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdEngineResponseUrl(int i, String str, String str2, String str3, String str4, String str5, String str6, long j, long j2, int i2, String str7, String str8) {
        return new TrackingPixelsGenerator.AdEngineResponsePixel().app_id(this.applicationId).bcid(this.buyingCompanyId).pid(this.playerId).m97v(str).m89at(str2).m88ar(str6).bid(this.playlistId).aert(String.valueOf(j)).vid(this.videoIds[i]).m91ft(String.valueOf(i2)).m93pt(this.playerType).m94pv(this.playerVersion).m92ps(this.platformSupport).sid(this.sessionId).txid(str3).m95r(this.referringUrl).rid(str4).rcid(str5).m96to(str6.equals("timeout") ? String.valueOf(j2) : null).aen(str7).vvuid(str8).m90cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdEngineFlowUrl(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, String str6, String str7, String str8, String str9) {
        return new TrackingPixelsGenerator.AdEngineFlowPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).m79v(str).m72at(str2).bid(this.playlistId).m76pt(this.playerType).m77pv(this.playerVersion).m75ps(this.platformSupport).sid(this.sessionId).txid(str3).rid(str4).rcid(str5).m78r(this.referringUrl).m80w(i2 == 0 ? null : String.valueOf(i2)).m74h(i3 != 0 ? String.valueOf(i3) : null).m71ap(String.valueOf(z)).stg(str6).aen(str7).aid(str9).vvuid(str8).m73cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdViewabilityUrl(int i, String str, String str2, boolean z, String str3, String str4) {
        return new TrackingPixelsGenerator.AdViewabilityPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).m131v(str).m126at(str2).bid(this.playlistId).m128pt(this.playerType).m129pv(this.playerVersion).sid(this.sessionId).m130r(this.referringUrl).m125ap(String.valueOf(z)).vstd(str3).vvuid(str4).m127cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatContextStartedUrl(int i, String str) {
        return new TrackingPixelsGenerator.ContextStartedPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).seq(String.valueOf(i)).bid(this.playlistId).m146pt(this.playerType).m147pv(this.playerVersion).m148r(this.referringUrl).sid(this.sessionId).vvuid(str).m145cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatSlotOppUrl(int i, String str, String str2, String str3, String str4, int i2) {
        return new TrackingPixelsGenerator.SlotOppPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).bid(this.playlistId).m187pt(this.playerType).m188pv(this.playerVersion).m186ps(this.platformSupport).m189r(this.referringUrl).sid(this.sessionId).vvuid(str).m185cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).txid(str2).m185cb(this.cacheBuster.get()).m190s(String.valueOf(true)).m191w(i2 == 0 ? null : String.valueOf(i2)).slot(str3).m184at(str4).get();
    }

    private String formatImpressionUrl() {
        return new TrackingPixelsGenerator.ImpressionsPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).m172r(this.referringUrl).bid(this.playlistId).m171pt(this.playerType).sid(this.sessionId).m170cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatDisplayUrl(int i, int i2, long j, String str) {
        return new TrackingPixelsGenerator.DisplaysPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).bid(this.playlistId).sid(this.sessionId).m155w(String.valueOf(i)).m151h(String.valueOf(i2)).m150dt(String.valueOf(j)).m152pt(this.playerType).m154r(this.referringUrl).m153pv(this.playerVersion).vvuid(str).m149cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).get();
    }

    private String formatAdStartUrl(String str, String str2, String str3) {
        return new TrackingPixelsGenerator.AdStartPixel().app_id(this.applicationId).pid(this.playerId).bcid(this.buyingCompanyId).bid(this.playlistId).m117r(this.referringUrl).rid(str).uuid(str2).vvuid(str3).m115cb(this.cacheBuster.get()).mfwsitesection(this.siteSection).m116ps(this.platformSupport).get();
    }

    private String formatVideo3SecUrl(int i, String str, int i2, int i3, Double d, boolean z) {
        return new TrackingPixelsGenerator.Video3SecPixel().bid(this.playlistId).pid(this.playerId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).m199pv(this.playerVersion).sid(this.sessionId).seq(String.valueOf(i)).m200r(this.referringUrl).vpt(this.videoPlayType).m198pt(this.playerType).m197cb(this.cacheBuster.get()).app_id(this.applicationId).vvuid(str).vcdn(getVcdn(i)).bit(d == null ? null : String.format(Locale.ENGLISH, "%.5f", d)).bft(String.valueOf(i2)).cvt(String.valueOf(i3)).pvwsound(String.valueOf(getVolume(z))).apid(this.apid).mfwsitesection(this.siteSection).get();
    }

    private String formatAdViewTimeUrl(int i, String str, String str2, String str3, String str4, float f, float f2) {
        return new TrackingPixelsGenerator.AdViewTimePixel().app_id(this.applicationId).bcid(this.buyingCompanyId).bid(this.playlistId).pid(this.playerId).vid(this.videoIds[i]).sid(this.sessionId).m123s(String.valueOf(true)).m120pt(this.playerType).m121pv(this.playerVersion).vvuid(str).txid(str2).rid(str3).adid(str4).m124t(String.valueOf(f)).m122r(this.referringUrl).m119cb(this.cacheBuster.get()).m118al(String.valueOf(f2)).mfwsitesection(this.siteSection).get();
    }

    private String formatHeartbeatUrl(int i, String str, int i2, int i3, int i4, int i5, int i6, Double d, boolean z) {
        return new TrackingPixelsGenerator.HeartbeatPixel().pid(this.playerId).bid(this.playlistId).vid(this.videoIds[i]).bcid(this.buyingCompanyId).m167r(this.referringUrl).m165pt(this.playerType).m166pv(this.playerVersion).sid(this.sessionId).vvuid(str).app_id(this.applicationId).cvt(String.valueOf(i2)).m168t(String.valueOf(i3)).seq(String.valueOf(i)).m169w(String.valueOf(i4)).m164h(String.valueOf(i5)).vpt(this.videoPlayType).bft(String.valueOf(i6)).bit(d == null ? null : String.format(Locale.ENGLISH, "%.5f", d)).vcdn(getVcdn(i)).pvwsound(String.valueOf(getVolume(z))).apid(this.apid).mfwsitesection(this.siteSection).m163cb(this.cacheBuster.get()).get();
    }

    private String formatBufferStartUrl(int i, String str, String str2, float f) {
        return new TrackingPixelsGenerator.BufferStartPixel().pid(this.playerId).bid(this.playlistId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).sid(this.sessionId).m142pv(this.playerVersion).m141pt(this.playerType).m140it(String.valueOf(f)).m143r(this.referringUrl).url(str).app_id(this.applicationId).m139cb(this.cacheBuster.get()).vvuid(str2).mfwsitesection(this.siteSection).get();
    }

    private String formatBufferEndUrl(int i, String str, String str2, float f) {
        return new TrackingPixelsGenerator.BufferEndPixel().pid(this.playerId).bid(this.playlistId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).sid(this.sessionId).m136pv(this.playerVersion).m135pt(this.playerType).m134it(String.valueOf(f)).m137r(this.referringUrl).url(str).app_id(this.applicationId).m133cb(this.cacheBuster.get()).vvuid(str2).mfwsitesection(this.siteSection).get();
    }

    private String formatStartUrl(int i, String str, String str2, float f) {
        return new TrackingPixelsGenerator.StartPixel().pid(this.playerId).bid(this.playlistId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).sid(this.sessionId).m195pv(this.playerVersion).m194pt(this.playerType).m193it(String.valueOf(f)).m196r(this.referringUrl).url(str).app_id(this.applicationId).m192cb(this.cacheBuster.get()).vvuid(str2).mfwsitesection(this.siteSection).get();
    }

    private String formatIntentUrl(int i, String str, String str2, float f) {
        return new TrackingPixelsGenerator.IntentPixel().pid(this.playerId).bid(this.playlistId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).sid(this.sessionId).m176pv(this.playerVersion).m175pt(this.playerType).m174it(String.valueOf(f)).m177r(this.referringUrl).url(str).app_id(this.applicationId).m173cb(this.cacheBuster.get()).vvuid(str2).mfwsitesection(this.siteSection).get();
    }

    private String formatVideoImpressionUrl(int i, int i2, int i3) {
        return new TrackingPixelsGenerator.VideoImpressionPixel().pid(this.playerId).bid(this.playlistId).bcid(this.buyingCompanyId).vid(this.videoIds[i]).sid(this.sessionId).m210pv(this.playerVersion).m209pt(this.playerType).m211r(this.referringUrl).vpt(this.videoPlayType).m213w(String.valueOf(i2)).m208h(String.valueOf(i3)).vcid(checkNull(this.vcids[i])).vcid(checkNull(this.mpids[i])).m212ts(this.timeProvider.get()).app_id(this.applicationId).m207cb(this.cacheBuster.get()).seq(String.valueOf(i)).mfwsitesection(this.siteSection).get();
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.QuartileDetector.Callback
    public void onQuartileDetected(int i, int i2, String str) {
        this.sender.sendPixel(this.trkUrl, formatVideoQuartileUrl(i, i2, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.VideoPlayDetector.Callback
    public void onPlayDetected(int i, int i2, int i3, String str) {
        this.sender.sendPixel(this.trkUrl, formatVideoPlayUrl(i, i2, i3, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.PlaylistStatisticDetector.Callback
    public void onStatisticDetected(int i, float f, int i2, String str) {
        this.sender.sendPixel(this.trkUrl, formatVideoStatisticUrl(i, f, i2, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.DecileDetector.Callback
    public void onDecileDetected(int i, int i2, String str) {
        this.sender.sendPixel(this.trkUrl, formatVideoDecileUrl(i, i2, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.VideoTimeDetector.Callback
    public void onTimeDetected(int i, float f, Double d, String str) {
        this.sender.sendPixel(this.trkUrl, formatVideoTimeUrl(i, f, d, str));
    }

    public void sendAdRequest(int i, String str, String str2, int i2, String str3) {
        this.sender.sendPixel(this.trkUrl, formatAdRequestUrl(i, checkNull(str), checkNull(str2), i2, str3));
    }

    public void sendAdEngineRequest(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineRequestUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), checkNull(str4), str6));
    }

    public void sendAdServerRequest(String str, String str2) {
        this.sender.sendPixel(this.adUrl, formatAdServerRequestUrl(checkNull(str), this.uuid, str2));
    }

    public void sendAdEngineResponse(int i, String str, String str2, String str3, String str4, String str5, String str6, long j, long j2, int i2, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineResponseUrl(i, checkNull(str), checkNull(str5), checkNull(str8), checkNull(str2), checkNull(str3), str6, j, j2, i2, checkNull(str4), str7));
    }

    public void sendAdIssue(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this.sender.sendPixel(this.trkUrl, formatAdIssueUrl(i, checkNull(str), checkNull(str5), checkNull(str9), checkNull(str2), checkNull(str3), str6, str7, checkNull(str4), str8, checkNull(str10)));
    }

    public void sendPixel(String str) {
        this.sender.sendPixelDirect(str);
    }

    public void sendAdEngineStart(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, String str6, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineFlowUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), i2, i3, z, "started", checkNull(str4), str6, checkNull(str8)));
    }

    public void sendAdStart(String str, String str2) {
        this.sender.sendPixel(this.adUrl, formatAdStartUrl(checkNull(str), this.uuid, str2));
    }

    public void sendAdQuartile(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, int i4, String str6, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineFlowUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), i2, i3, z, "q" + i4, checkNull(str4), str6, checkNull(str8)));
    }

    public void sendAdFinished(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, String str6, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineFlowUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), i2, i3, z, "finished", checkNull(str4), str6, checkNull(str8)));
    }

    public void sendAdWin(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, String str6, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineFlowUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), i2, i3, z, "win", checkNull(str4), str6, checkNull(str8)));
    }

    public void sendAdLoaded(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, boolean z, String str6, String str7, String str8) {
        this.sender.sendPixel(this.trkUrl, formatAdEngineFlowUrl(i, checkNull(str), checkNull(str5), checkNull(str7), checkNull(str2), checkNull(str3), i2, i3, z, "loaded", checkNull(str4), str6, checkNull(str8)));
    }

    public void sendAdViewability(int i, String str, String str2, boolean z, String str3, String str4) {
        this.sender.sendPixel(this.trkUrl, formatAdViewabilityUrl(i, checkNull(str), checkNull(str2), z, str3, str4));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.ContextStartedDetector.Callback
    public void onContextStartedDetected(int i, String str) {
        this.sender.sendPixel(this.trkUrl, formatContextStartedUrl(i, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.ImpressionDisplayDetector.Callback
    public void onImpressionDetected() {
        this.sender.sendPixel(this.trkUrl, formatImpressionUrl());
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.ImpressionDisplayDetector.Callback
    public void onDisplayDetected(int i, int i2, long j, String str) {
        this.sender.sendPixel(this.trkUrl, formatDisplayUrl(i, i2, j, str));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.Video3SecDetector.Callback
    public void onVideo3SecDetected(int i, String str, int i2, int i3, Double d, boolean z) {
        this.sender.sendPixel(this.trkUrl, formatVideo3SecUrl(i, str, i2, i3, d, z));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.SlotOppDetector.Callback
    public void onSlotOppDetected(int i, String str, int i2, String str2, String str3, String str4) {
        this.sender.sendPixel(this.trkUrl, formatSlotOppUrl(i, str, str2, str3, str4, i2));
    }

    public void sendAdViewTime(int i, String str, String str2, String str3, String str4, float f, float f2) {
        this.sender.sendPixel(this.trkUrl, formatAdViewTimeUrl(i, str, checkNull(str2), checkNull(str3), checkNull(str4), f, f2));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.HeartbeatDetector.Callback
    public void onHeartbeatDetected(int i, String str, int i2, int i3, int i4, int i5, int i6, Double d, boolean z) {
        this.sender.sendPixel(this.trkUrl, formatHeartbeatUrl(i, str, i2, i3, i4, i5, i6, d, z));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.BufferStartDetector.Callback
    public void onBufferStartDetected(int i, String str, String str2, float f) {
        this.sender.sendPixel(this.trkUrl, formatBufferStartUrl(i, str, str2, f));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.BufferEndDetector.Callback
    public void onBufferEndDetected(int i, String str, String str2, float f) {
        this.sender.sendPixel(this.trkUrl, formatBufferEndUrl(i, str, str2, f));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.StartDetector.Callback
    public void onStartDetected(int i, String str, String str2, float f) {
        this.sender.sendPixel(this.trkUrl, formatStartUrl(i, str, str2, f));
    }

    @Override // com.aol.mobile.sdk.player.listener.detector.IntentDetector.Callback
    public void onIntentDetected(int i, String str, String str2, float f) {
        this.sender.sendPixel(this.trkUrl, formatIntentUrl(i, str, str2, f));
    }

    public void sendVideoImpression(int i, int i2, int i3) {
        this.sender.sendPixel(this.trkUrl, formatVideoImpressionUrl(i, i2, i3));
    }
}
