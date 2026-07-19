package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p005ui.SubtitleView;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MergingMediaSource;
import com.google.android.exoplayer2.source.SingleSampleMediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.FixedTrackSelection;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoListener;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.a */
/* JADX INFO: loaded from: classes.dex */
class C0306a extends FrameLayout implements VideoRenderer, InterfaceC0314i, Player.EventListener, VideoListener {

    /* JADX INFO: renamed from: a */
    static final /* synthetic */ boolean f186a = !C0306a.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: A */
    private boolean f187A;

    /* JADX INFO: renamed from: B */
    private String f188B;

    /* JADX INFO: renamed from: C */
    private String f189C;

    /* JADX INFO: renamed from: D */
    private String f190D;

    /* JADX INFO: renamed from: b */
    private final Handler f191b;

    /* JADX INFO: renamed from: c */
    private final DefaultBandwidthMeter f192c;
    protected VideoVM.Callbacks callbacks;

    /* JADX INFO: renamed from: d */
    private final TrackSelection.Factory f193d;

    /* JADX INFO: renamed from: e */
    private final TrackSelection.Factory f194e;

    /* JADX INFO: renamed from: f */
    private final DefaultTrackSelector f195f;

    /* JADX INFO: renamed from: g */
    private final ExtractorMediaSource.Factory f196g;

    /* JADX INFO: renamed from: h */
    private final HlsMediaSource.Factory f197h;

    /* JADX INFO: renamed from: i */
    private final SingleSampleMediaSource.Factory f198i;

    /* JADX INFO: renamed from: j */
    private final SubtitleView f199j;

    /* JADX INFO: renamed from: k */
    private SimpleExoPlayer f200k;

    /* JADX INFO: renamed from: l */
    private a f201l;

    /* JADX INFO: renamed from: m */
    private boolean f202m;

    /* JADX INFO: renamed from: n */
    private View f203n;

    /* JADX INFO: renamed from: o */
    private Surface f204o;

    /* JADX INFO: renamed from: p */
    private Context f205p;

    /* JADX INFO: renamed from: q */
    private AudioTrack f206q;

    /* JADX INFO: renamed from: r */
    private TextTrack f207r;

    /* JADX INFO: renamed from: s */
    private Long f208s;

    /* JADX INFO: renamed from: t */
    private boolean f209t;

    /* JADX INFO: renamed from: u */
    private int f210u;

    /* JADX INFO: renamed from: v */
    private int f211v;

    /* JADX INFO: renamed from: w */
    private int f212w;

    /* JADX INFO: renamed from: x */
    private int f213x;

    /* JADX INFO: renamed from: y */
    private int f214y;

    /* JADX INFO: renamed from: z */
    private boolean f215z;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.a$a */
    class a {

        /* JADX INFO: renamed from: b */
        private Runnable f220b;

        private a() {
            this.f220b = new Runnable() { // from class: com.aol.mobile.sdk.renderer.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C0306a.this.callbacks != null && C0306a.this.f200k != null) {
                        long currentPosition = C0306a.this.f200k.getCurrentPosition();
                        if (currentPosition < 0) {
                            currentPosition = 0;
                        }
                        int bufferedPercentage = C0306a.this.f200k.getBufferedPercentage();
                        if (bufferedPercentage > 100) {
                            bufferedPercentage = 100;
                        }
                        if (bufferedPercentage < 0) {
                            bufferedPercentage = 0;
                        }
                        C0306a.this.callbacks.onVideoBufferUpdated(bufferedPercentage);
                        if (C0306a.this.f208s == null) {
                            C0306a.this.m264d();
                        }
                        if (C0306a.this.f208s != null && C0306a.this.f200k.getPlaybackState() == 3 && C0306a.this.f209t && (currentPosition <= C0306a.this.f208s.longValue() || C0306a.this.f208s.longValue() == 0)) {
                            C0306a.this.callbacks.onVideoPositionUpdated(currentPosition);
                        }
                        if (C0306a.this.f208s != null && currentPosition > C0306a.this.f208s.longValue() && C0306a.this.f210u != 4 && C0306a.this.f200k.getPlayWhenReady()) {
                            C0306a.this.onPlayerStateChanged(C0306a.this.f209t, 4);
                        }
                    }
                    C0306a.this.f191b.postDelayed(a.this.f220b, 200L);
                }
            };
        }

        /* JADX INFO: renamed from: a */
        public void m273a() {
            C0306a.this.f191b.removeCallbacks(this.f220b);
            this.f220b.run();
        }

        /* JADX INFO: renamed from: b */
        void m274b() {
            C0306a.this.f191b.removeCallbacks(this.f220b);
        }
    }

    public C0306a(Context context) {
        super(context);
        this.f191b = new Handler();
        this.f192c = new DefaultBandwidthMeter();
        this.f193d = new AdaptiveTrackSelection.Factory(this.f192c);
        this.f194e = new FixedTrackSelection.Factory();
        this.f195f = new DefaultTrackSelector(this.f193d);
        this.f201l = new a();
        this.f202m = false;
        this.f211v = Integer.MIN_VALUE;
        this.f212w = Integer.MIN_VALUE;
        this.f213x = Integer.MIN_VALUE;
        this.f214y = Integer.MIN_VALUE;
        this.f215z = true;
        this.f187A = true;
        this.f199j = new SubtitleView(context);
        DefaultDataSourceFactory defaultDataSourceFactory = new DefaultDataSourceFactory(context, this.f192c, new DefaultHttpDataSourceFactory(Util.getUserAgent(context, "VideoSDK"), this.f192c, EventsFilesManager.MAX_BYTE_SIZE_PER_FILE, EventsFilesManager.MAX_BYTE_SIZE_PER_FILE, true));
        this.f197h = new HlsMediaSource.Factory(defaultDataSourceFactory).setAllowChunklessPreparation(true);
        this.f196g = new ExtractorMediaSource.Factory(defaultDataSourceFactory);
        this.f198i = new SingleSampleMediaSource.Factory(defaultDataSourceFactory);
        this.f205p = context;
    }

    /* JADX INFO: renamed from: a */
    private MediaSource m248a(String str, String str2, String str3) {
        Uri uri = Uri.parse(str);
        if (Util.inferContentType(uri.getLastPathSegment()) == 2) {
            return this.f197h.createMediaSource(uri, this.f191b, new MediaSourceEventListener() { // from class: com.aol.mobile.sdk.renderer.a.1
                @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
                public void onDownstreamFormatChanged(int i, Format format, int i2, Object obj, long j) {
                }

                @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
                public void onLoadCanceled(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
                }

                @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
                public void onLoadCompleted(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
                    if (C0306a.this.callbacks == null || format == null) {
                        return;
                    }
                    C0306a.this.callbacks.onHlsBitrateUpdated(format.bitrate);
                }

                @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
                public void onLoadError(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
                    if (!C0306a.this.f209t || C0306a.this.f200k == null || C0306a.this.f200k.getPlayWhenReady()) {
                        return;
                    }
                    C0306a c0306a = C0306a.this;
                    c0306a.m260b(c0306a.f188B, C0306a.this.f190D, C0306a.this.f189C);
                }

                @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
                public void onLoadStarted(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
                }

                public void onUpstreamDiscarded(int i, long j, long j2) {
                }
            });
        }
        ExtractorMediaSource extractorMediaSourceCreateMediaSource = this.f196g.createMediaSource(uri, this.f191b, null);
        Uri uri2 = str3 != null ? Uri.parse(str3) : null;
        return uri2 != null ? new MergingMediaSource(extractorMediaSourceCreateMediaSource, this.f198i.createMediaSource(uri2, Format.createTextSampleFormat(str2, "application/x-subrip", (String) null, -1, -1, str2, (DrmInitData) null, Long.MAX_VALUE), -9223372036854775807L)) : extractorMediaSourceCreateMediaSource;
    }

    /* JADX INFO: renamed from: a */
    private void m249a() {
        int i;
        int i2;
        int i3;
        float f;
        int i4 = this.f214y;
        if (i4 <= 0 || (i = this.f213x) <= 0 || (i2 = this.f211v) <= 0 || (i3 = this.f212w) <= 0) {
            return;
        }
        float f2 = i / i4;
        float f3 = i2 / i3;
        float f4 = 1.0f;
        if (!this.f215z && i2 <= i && i3 <= i4) {
            f4 = i2 / i;
            f = i3 / i4;
        } else if (f3 > f2) {
            f = f2 / f3;
        } else {
            f4 = this.f187A ? f3 / f2 : 1.0f;
            f = 1.0f;
        }
        if (this.f203n instanceof C0315j) {
            Matrix matrix = new Matrix();
            matrix.setScale(f4, f, this.f213x / 2, this.f214y / 2);
            ((C0315j) this.f203n).setTransform(matrix);
        }
        VideoVM.Callbacks callbacks = this.callbacks;
        if (callbacks != null) {
            callbacks.onViewportResized(this.f213x, this.f214y);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m250a(long j) {
        SimpleExoPlayer simpleExoPlayer = this.f200k;
        if (simpleExoPlayer != null && Math.abs(simpleExoPlayer.getCurrentPosition() - j) > 100) {
            this.f200k.seekTo(j);
        }
        VideoVM.Callbacks callbacks = this.callbacks;
        if (callbacks != null) {
            callbacks.onSeekPerformed();
        }
    }

    /* JADX INFO: renamed from: a */
    private void m251a(AudioTrack audioTrack) {
        if (audioTrack == null) {
            return;
        }
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = this.f195f.getCurrentMappedTrackInfo();
        this.f195f.clearSelectionOverrides(audioTrack.f171b.f172a);
        DefaultTrackSelector defaultTrackSelector = this.f195f;
        defaultTrackSelector.setParameters(defaultTrackSelector.getParameters().buildUpon().setPreferredAudioLanguage(null).build());
        if (audioTrack.f170a == null || audioTrack.f170a.length() == 0) {
            this.f195f.setSelectionOverride(audioTrack.f171b.f172a, currentMappedTrackInfo.getTrackGroups(audioTrack.f171b.f172a), new MappingTrackSelector.SelectionOverride(this.f194e, audioTrack.f171b.f173b, audioTrack.f171b.f174c));
        } else {
            DefaultTrackSelector defaultTrackSelector2 = this.f195f;
            defaultTrackSelector2.setParameters(defaultTrackSelector2.getParameters().buildUpon().setPreferredAudioLanguage(audioTrack.f170a).build());
        }
    }

    /* JADX INFO: renamed from: a */
    private void m252a(TextTrack textTrack) {
        if (textTrack == null) {
            return;
        }
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = this.f195f.getCurrentMappedTrackInfo();
        if (textTrack.f182a.f184b < 0 || textTrack.f182a.f185c < 0) {
            this.f195f.clearSelectionOverrides(textTrack.f182a.f183a);
            this.f195f.setRendererDisabled(textTrack.f182a.f183a, true);
        } else {
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(textTrack.f182a.f183a);
            MappingTrackSelector.SelectionOverride selectionOverride = new MappingTrackSelector.SelectionOverride(this.f194e, textTrack.f182a.f184b, textTrack.f182a.f185c);
            this.f195f.setRendererDisabled(textTrack.f182a.f183a, false);
            this.f195f.setSelectionOverride(textTrack.f182a.f183a, trackGroups, selectionOverride);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m254a(VideoVM.Callbacks callbacks) {
        if (this.callbacks != callbacks) {
            this.callbacks = callbacks;
            if (getWidth() == 0 || getHeight() == 0) {
                return;
            }
            callbacks.onViewportResized(getWidth(), getHeight());
        }
    }

    /* JADX INFO: renamed from: a */
    private void m255a(MediaSource mediaSource) {
        this.f200k = ExoPlayerFactory.newSimpleInstance(this.f205p, this.f195f);
        this.f200k.prepare(mediaSource);
        for (int i = 0; i < this.f200k.getRendererCount(); i++) {
            if (this.f200k.getRendererType(i) == 3) {
                this.f195f.setRendererDisabled(i, true);
                break;
            }
        }
        this.f200k.addTextOutput(this.f199j);
        this.f200k.addListener(this);
        this.f200k.addVideoListener(this);
        this.f200k.setVolume(this.f202m ? 0.0f : 1.0f);
        this.f200k.setVideoSurface(this.f204o);
        this.f200k.setPlayWhenReady(this.f209t);
    }

    /* JADX INFO: renamed from: a */
    private boolean m257a(String str) {
        return str != null && (str.contains("Unable to connect to") || str.contains("Response code"));
    }

    /* JADX INFO: renamed from: b */
    private void m259b() {
        if (this.f209t) {
            this.f209t = false;
            SimpleExoPlayer simpleExoPlayer = this.f200k;
            if (simpleExoPlayer == null || simpleExoPlayer.getPlaybackState() != 3) {
                return;
            }
            this.f200k.setPlayWhenReady(false);
            this.f201l.m274b();
            VideoVM.Callbacks callbacks = this.callbacks;
            if (callbacks != null) {
                callbacks.onVideoPlaybackFlagUpdated(this.f200k.getPlayWhenReady());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public void m260b(String str, String str2, String str3) {
        this.f208s = null;
        if (this.f188B != null) {
            this.f201l.m274b();
            if (this.f200k != null) {
                if (this.f203n instanceof C0315j) {
                    Matrix matrix = new Matrix();
                    matrix.setScale(0.0f, 0.0f, 0.0f, 0.0f);
                    ((C0315j) this.f203n).setTransform(matrix);
                }
                this.f199j.onCues(Collections.emptyList());
                this.f200k.removeTextOutput(this.f199j);
                this.f200k.removeListener(this);
                this.f200k.removeVideoListener(this);
                this.f200k.setVideoSurface(null);
                this.f200k.release();
                this.f200k = null;
            }
        }
        this.f188B = str;
        this.f189C = str3;
        this.f190D = str2;
        if (str == null) {
            return;
        }
        m255a(m248a(str, this.f190D, str3));
    }

    /* JADX INFO: renamed from: c */
    private void m262c() {
        if (this.f209t) {
            return;
        }
        this.f199j.setUserDefaultStyle();
        this.f199j.setUserDefaultTextSize();
        this.f209t = true;
        SimpleExoPlayer simpleExoPlayer = this.f200k;
        if (simpleExoPlayer == null || simpleExoPlayer.getPlaybackState() != 3) {
            return;
        }
        if (this.f200k.isCurrentWindowDynamic() && this.f200k.isCurrentWindowSeekable()) {
            this.f200k.seekToDefaultPosition();
        }
        this.f200k.setPlayWhenReady(true);
        this.f201l.m273a();
        VideoVM.Callbacks callbacks = this.callbacks;
        if (callbacks != null) {
            callbacks.onVideoPlaybackFlagUpdated(this.f200k.getPlayWhenReady());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d */
    public void m264d() {
        SimpleExoPlayer simpleExoPlayer = this.f200k;
        if (simpleExoPlayer != null) {
            if (simpleExoPlayer.getDuration() == -9223372036854775807L && this.f200k.getCurrentPosition() == 0) {
                return;
            }
            long duration = this.f200k.getDuration();
            if (duration == -9223372036854775807L || this.f200k.isCurrentWindowDynamic()) {
                duration = 0;
            }
            this.f208s = Long.valueOf(duration);
            VideoVM.Callbacks callbacks = this.callbacks;
            if (callbacks != null) {
                callbacks.onDurationReceived(this.f208s.longValue());
            }
        }
    }

    private void setMute(boolean z) {
        this.f202m = z;
        SimpleExoPlayer simpleExoPlayer = this.f200k;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setVolume(z ? 0.0f : 1.0f);
        }
    }

    public void dispose() {
        this.callbacks = null;
        if (this.f203n != null) {
            SimpleExoPlayer simpleExoPlayer = this.f200k;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.setVideoSurface(null);
            }
            View view = this.f203n;
            if (view instanceof C0316k) {
                ((C0316k) view).m301a();
            }
            this.f203n = null;
        }
        this.f201l.m274b();
        SimpleExoPlayer simpleExoPlayer2 = this.f200k;
        if (simpleExoPlayer2 != null) {
            simpleExoPlayer2.stop();
            this.f200k.removeListener(this);
            this.f200k.release();
        }
    }

    public void onLoadingChanged(boolean z) {
    }

    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        if (exoPlaybackException.getCause() != null && exoPlaybackException.getCause().getClass() == BehindLiveWindowException.class) {
            m260b(this.f188B, this.f190D, this.f189C);
            return;
        }
        boolean z = m257a(exoPlaybackException.getMessage()) || m257a(exoPlaybackException.getCause() == null ? null : exoPlaybackException.getCause().getMessage());
        if (z && this.f189C != null) {
            m260b(this.f188B, null, null);
            return;
        }
        VideoVM.Callbacks callbacks = this.callbacks;
        if (callbacks != null) {
            callbacks.onErrorOccurred(z ? VideoVM.Callbacks.Error.CONNECTION : VideoVM.Callbacks.Error.CONTENT);
        }
    }

    public void onPlayerStateChanged(boolean z, int i) {
        if (this.f210u != i) {
            this.f210u = i;
            if (!f186a && this.f200k == null) {
                throw new AssertionError();
            }
            switch (i) {
                case 1:
                case 2:
                    this.f201l.m274b();
                    this.f200k.setPlayWhenReady(false);
                    VideoVM.Callbacks callbacks = this.callbacks;
                    if (callbacks != null) {
                        callbacks.onVideoPlaybackFlagUpdated(false);
                        return;
                    }
                    return;
                case 3:
                    this.f201l.m273a();
                    this.f200k.setPlayWhenReady(this.f209t);
                    VideoVM.Callbacks callbacks2 = this.callbacks;
                    if (callbacks2 != null) {
                        callbacks2.onVideoPlaybackFlagUpdated(this.f209t);
                        return;
                    }
                    return;
                case 4:
                    if (this.f200k.isCurrentWindowDynamic()) {
                        return;
                    }
                    this.f200k.setPlayWhenReady(false);
                    this.f201l.m274b();
                    VideoVM.Callbacks callbacks3 = this.callbacks;
                    if (callbacks3 != null) {
                        if (this.f208s == null) {
                            callbacks3.onErrorOccurred(VideoVM.Callbacks.Error.CONTENT);
                            return;
                        }
                        callbacks3.onVideoPositionUpdated(this.f200k.getDuration());
                    }
                    VideoVM.Callbacks callbacks4 = this.callbacks;
                    if (callbacks4 != null) {
                        callbacks4.onVideoPlaybackFlagUpdated(false);
                        this.callbacks.onVideoEnded();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void onPositionDiscontinuity(int i) {
    }

    public void onRenderedFirstFrame() {
    }

    public void onRepeatModeChanged(int i) {
    }

    public void onSeekProcessed() {
    }

    public void onShuffleModeEnabledChanged(boolean z) {
    }

    public void onTimelineChanged(Timeline timeline, Object obj, int i) {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo;
        AudioTrack audioTrackWithSelected;
        if (this.f200k == null || this.callbacks == null) {
            return;
        }
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = this.f195f.getCurrentMappedTrackInfo();
        HashMap map = new HashMap();
        LinkedList linkedList = new LinkedList();
        int i = 0;
        int i2 = -1;
        boolean z = false;
        while (true) {
            int i3 = 1;
            if (i >= this.f200k.getRendererCount()) {
                TextTrack.C0305a c0305a = new TextTrack.C0305a(i2, -1, -1);
                Collections.sort(linkedList, new Comparator<TextTrack>() { // from class: com.aol.mobile.sdk.renderer.a.2
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(TextTrack textTrack, TextTrack textTrack2) {
                        return textTrack.title.compareTo(textTrack2.title);
                    }
                });
                linkedList.addFirst(new TextTrack(c0305a, "None", true ^ z));
                LinkedList linkedList2 = new LinkedList(map.values());
                Collections.sort(linkedList2, new Comparator<AudioTrack>() { // from class: com.aol.mobile.sdk.renderer.a.3
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(AudioTrack audioTrack, AudioTrack audioTrack2) {
                        return audioTrack.title.compareTo(audioTrack2.title);
                    }
                });
                this.callbacks.onTrackInfoAvailable(linkedList2, linkedList);
                return;
            }
            TrackSelection trackSelection = trackSelectionArray.get(i);
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i);
            int rendererType = this.f200k.getRendererType(i);
            if (rendererType == 3) {
                i2 = i;
            }
            boolean z2 = z;
            int i4 = 0;
            while (i4 < trackGroups.length) {
                TrackGroup trackGroup = trackGroups.get(i4);
                boolean z3 = z2;
                int i5 = 0;
                while (i5 < trackGroup.length) {
                    if (currentMappedTrackInfo.getTrackFormatSupport(i, i4, i5) != 4) {
                        mappedTrackInfo = currentMappedTrackInfo;
                        trackGroup = trackGroup;
                        i2 = i2;
                    } else {
                        Format format = trackGroup.getFormat(i5);
                        boolean z4 = trackSelection != null && trackGroups.indexOf(trackSelection.getTrackGroup()) == i4 && i5 == trackSelection.getSelectedIndexInTrackGroup();
                        if (rendererType != i3) {
                            if (rendererType != 3) {
                                mappedTrackInfo = currentMappedTrackInfo;
                            } else {
                                if (!z3 && z4) {
                                    z3 = true;
                                }
                                mappedTrackInfo = currentMappedTrackInfo;
                                if (!"application/cea-608".equals(format.sampleMimeType) || z4) {
                                    linkedList.add(new TextTrack(new TextTrack.C0305a(i, i4, i5), format.language, z4));
                                }
                            }
                            trackGroup = trackGroup;
                            i2 = i2;
                        } else {
                            mappedTrackInfo = currentMappedTrackInfo;
                            AudioTrack audioTrack = (AudioTrack) map.get(format.language == null ? format.f385id : format.language);
                            if (audioTrack == null) {
                                audioTrackWithSelected = new AudioTrack(new AudioTrack.C0302a(i, i4, i5), format.language, format.f385id, z4);
                            } else {
                                audioTrackWithSelected = audioTrack.withSelected(audioTrack.isSelected || z4);
                            }
                            map.put(format.language, audioTrackWithSelected);
                        }
                    }
                    i5++;
                    currentMappedTrackInfo = mappedTrackInfo;
                    trackGroup = trackGroup;
                    i2 = i2;
                    i3 = 1;
                }
                i4++;
                z2 = z3;
                i3 = 1;
            }
            i++;
            z = z2;
        }
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.f211v = i;
        this.f212w = i2;
        m249a();
    }

    public void onVideoSurfaceAvailable(Surface surface) {
        this.f204o = surface;
        SimpleExoPlayer simpleExoPlayer = this.f200k;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setVideoSurface(surface);
        }
    }

    public void onVideoSurfaceReleased(Surface surface) {
        if (this.f204o == surface) {
            this.f204o = null;
            SimpleExoPlayer simpleExoPlayer = this.f200k;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.setVideoSurface(null);
            }
        }
    }

    public void onVideoSurfaceResized(int i, int i2) {
        this.f213x = i;
        this.f214y = i2;
        m249a();
    }

    public void render(VideoVM videoVM) {
        if ((this.f199j.getVisibility() == 0) != videoVM.areSubtitlesEnabled) {
            this.f199j.setVisibility(videoVM.areSubtitlesEnabled ? 0 : 8);
        }
        if (videoVM.callbacks != null) {
            m254a(videoVM.callbacks);
        }
        this.f215z = videoVM.isScalable;
        this.f187A = videoVM.isMaintainAspectRatio;
        if (videoVM.videoUrl != null && !videoVM.videoUrl.equals(this.f188B)) {
            m260b(videoVM.videoUrl, videoVM.subtitleLang, videoVM.subtitleUrl);
        } else if (videoVM.videoUrl == null && this.f188B != null) {
            m260b(null, null, null);
        }
        Long l = videoVM.seekPosition;
        if (l != null) {
            m250a(l.longValue());
        }
        if (videoVM.shouldPlay) {
            m262c();
        } else {
            m259b();
        }
        View view = this.f203n;
        if (view instanceof C0316k) {
            ((C0316k) view).m302a(videoVM.longitude, videoVM.latitude);
        }
        if (videoVM.isMuted != this.f202m) {
            setMute(videoVM.isMuted);
        }
        if (videoVM.selectedAudioTrack != this.f206q) {
            this.f206q = videoVM.selectedAudioTrack;
            m251a(this.f206q);
        }
        if (videoVM.selectedTextTrack != this.f207r) {
            this.f207r = videoVM.selectedTextTrack;
            m252a(this.f207r);
        }
    }

    protected void setRenderer(View view) {
        this.f203n = view;
        removeAllViews();
        addView(this.f203n, -1, -1);
        addView(this.f199j, -1, -1);
    }
}
