package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
@zzadh
public final class zzaov extends zzapg implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> zzcwo = new HashMap();
    private final zzapx zzcwp;
    private final boolean zzcwq;
    private int zzcwr;
    private int zzcws;
    private MediaPlayer zzcwt;
    private Uri zzcwu;
    private int zzcwv;
    private int zzcww;
    private int zzcwx;
    private int zzcwy;
    private int zzcwz;
    private zzapu zzcxa;
    private boolean zzcxb;
    private int zzcxc;
    private zzapf zzcxd;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            zzcwo.put(-1004, "MEDIA_ERROR_IO");
            zzcwo.put(-1007, "MEDIA_ERROR_MALFORMED");
            zzcwo.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            zzcwo.put(-110, "MEDIA_ERROR_TIMED_OUT");
            zzcwo.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzcwo.put(100, "MEDIA_ERROR_SERVER_DIED");
        zzcwo.put(1, "MEDIA_ERROR_UNKNOWN");
        zzcwo.put(1, "MEDIA_INFO_UNKNOWN");
        zzcwo.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzcwo.put(701, "MEDIA_INFO_BUFFERING_START");
        zzcwo.put(702, "MEDIA_INFO_BUFFERING_END");
        zzcwo.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        zzcwo.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        zzcwo.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            zzcwo.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzcwo.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzaov(Context context, boolean z, boolean z2, zzapv zzapvVar, zzapx zzapxVar) {
        super(context);
        this.zzcwr = 0;
        this.zzcws = 0;
        setSurfaceTextureListener(this);
        this.zzcwp = zzapxVar;
        this.zzcxb = z;
        this.zzcwq = z2;
        this.zzcwp.zzb(this);
    }

    private final void zza(float f) {
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer == null) {
            zzakb.zzdk("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        }
    }

    private final void zzag(int i) {
        if (i == 3) {
            this.zzcwp.zztt();
            this.zzcxl.zztt();
        } else if (this.zzcwr == 3) {
            this.zzcwp.zztu();
            this.zzcxl.zztu();
        }
        this.zzcwr = i;
    }

    private final void zzag(boolean z) {
        zzakb.m358v("AdMediaPlayerView release");
        zzapu zzapuVar = this.zzcxa;
        if (zzapuVar != null) {
            zzapuVar.zzti();
            this.zzcxa = null;
        }
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzcwt.release();
            this.zzcwt = null;
            zzag(0);
            if (z) {
                this.zzcws = 0;
                this.zzcws = 0;
            }
        }
    }

    private final void zzsq() {
        zzakb.m358v("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzcwu == null || surfaceTexture == null) {
            return;
        }
        zzag(false);
        try {
            com.google.android.gms.ads.internal.zzbv.zzfb();
            this.zzcwt = new MediaPlayer();
            this.zzcwt.setOnBufferingUpdateListener(this);
            this.zzcwt.setOnCompletionListener(this);
            this.zzcwt.setOnErrorListener(this);
            this.zzcwt.setOnInfoListener(this);
            this.zzcwt.setOnPreparedListener(this);
            this.zzcwt.setOnVideoSizeChangedListener(this);
            this.zzcwx = 0;
            if (this.zzcxb) {
                this.zzcxa = new zzapu(getContext());
                this.zzcxa.zza(surfaceTexture, getWidth(), getHeight());
                this.zzcxa.start();
                SurfaceTexture surfaceTextureZztj = this.zzcxa.zztj();
                if (surfaceTextureZztj != null) {
                    surfaceTexture = surfaceTextureZztj;
                } else {
                    this.zzcxa.zzti();
                    this.zzcxa = null;
                }
            }
            this.zzcwt.setDataSource(getContext(), this.zzcwu);
            com.google.android.gms.ads.internal.zzbv.zzfc();
            this.zzcwt.setSurface(new Surface(surfaceTexture));
            this.zzcwt.setAudioStreamType(3);
            this.zzcwt.setScreenOnWhilePlaying(true);
            this.zzcwt.prepareAsync();
            zzag(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String strValueOf = String.valueOf(this.zzcwu);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(strValueOf);
            zzakb.zzc(sb.toString(), e);
            onError(this.zzcwt, 1, 0);
        }
    }

    private final void zzsr() {
        if (this.zzcwq && zzss() && this.zzcwt.getCurrentPosition() > 0 && this.zzcws != 3) {
            zzakb.m358v("AdMediaPlayerView nudging MediaPlayer");
            zza(0.0f);
            this.zzcwt.start();
            int currentPosition = this.zzcwt.getCurrentPosition();
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis();
            while (zzss() && this.zzcwt.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis() - jCurrentTimeMillis <= 250) {
            }
            this.zzcwt.pause();
            zzst();
        }
    }

    private final boolean zzss() {
        int i;
        return (this.zzcwt == null || (i = this.zzcwr) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final int getCurrentPosition() {
        if (zzss()) {
            return this.zzcwt.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final int getDuration() {
        if (zzss()) {
            return this.zzcwt.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzcwx = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzakb.m358v("AdMediaPlayerView completion");
        zzag(5);
        this.zzcws = 5;
        zzakk.zzcrm.post(new zzaoy(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzcwo.get(Integer.valueOf(i));
        String str2 = zzcwo.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzakb.zzdk(sb.toString());
        zzag(-1);
        this.zzcws = -1;
        zzakk.zzcrm.post(new zzaoz(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzcwo.get(Integer.valueOf(i));
        String str2 = zzcwo.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzakb.m358v(sb.toString());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0069 A[PHI: r6
      0x0069: PHI (r6v6 int) = (r6v5 int), (r6v3 int), (r6v3 int), (r6v3 int) binds: [B:29:0x0068, B:27:0x0065, B:21:0x0055, B:15:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int size;
        int i3;
        int defaultSize = getDefaultSize(this.zzcwv, i);
        int defaultSize2 = getDefaultSize(this.zzcww, i2);
        if (this.zzcwv <= 0 || this.zzcww <= 0 || this.zzcxa != null) {
            size = defaultSize;
        } else {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i4 = this.zzcwv;
                int i5 = i4 * size2;
                int i6 = this.zzcww;
                if (i5 < size * i6) {
                    defaultSize = (i4 * size2) / i6;
                    defaultSize2 = size2;
                    size = defaultSize;
                } else if (i4 * size2 > size * i6) {
                    defaultSize2 = (i6 * size) / i4;
                } else {
                    defaultSize2 = size2;
                }
            } else if (mode == 1073741824) {
                int i7 = (this.zzcww * size) / this.zzcwv;
                if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                    defaultSize2 = i7;
                } else {
                    defaultSize2 = size2;
                }
            } else if (mode2 == 1073741824) {
                int i8 = (this.zzcwv * size2) / this.zzcww;
                if (mode != Integer.MIN_VALUE || i8 <= size) {
                    size = i8;
                }
                defaultSize2 = size2;
            } else {
                int i9 = this.zzcwv;
                int i10 = this.zzcww;
                if (mode2 != Integer.MIN_VALUE || i10 <= size2) {
                    defaultSize2 = i10;
                } else {
                    i9 = (i9 * size2) / i10;
                    defaultSize2 = size2;
                }
                if (mode != Integer.MIN_VALUE || i9 <= size) {
                    size = i9;
                } else {
                    defaultSize2 = (this.zzcww * size) / this.zzcwv;
                }
            }
        }
        setMeasuredDimension(size, defaultSize2);
        zzapu zzapuVar = this.zzcxa;
        if (zzapuVar != null) {
            zzapuVar.zzh(size, defaultSize2);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i11 = this.zzcwy;
            if ((i11 > 0 && i11 != size) || ((i3 = this.zzcwz) > 0 && i3 != defaultSize2)) {
                zzsr();
            }
            this.zzcwy = size;
            this.zzcwz = defaultSize2;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzakb.m358v("AdMediaPlayerView prepared");
        zzag(2);
        this.zzcwp.zzsv();
        zzakk.zzcrm.post(new zzaox(this));
        this.zzcwv = mediaPlayer.getVideoWidth();
        this.zzcww = mediaPlayer.getVideoHeight();
        int i = this.zzcxc;
        if (i != 0) {
            seekTo(i);
        }
        zzsr();
        int i2 = this.zzcwv;
        int i3 = this.zzcww;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzakb.zzdj(sb.toString());
        if (this.zzcws == 3) {
            play();
        }
        zzst();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzakb.m358v("AdMediaPlayerView surface created");
        zzsq();
        zzakk.zzcrm.post(new zzapa(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzakb.m358v("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer != null && this.zzcxc == 0) {
            this.zzcxc = mediaPlayer.getCurrentPosition();
        }
        zzapu zzapuVar = this.zzcxa;
        if (zzapuVar != null) {
            zzapuVar.zzti();
        }
        zzakk.zzcrm.post(new zzapc(this));
        zzag(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzakb.m358v("AdMediaPlayerView surface changed");
        boolean z = this.zzcws == 3;
        boolean z2 = this.zzcwv == i && this.zzcww == i2;
        if (this.zzcwt != null && z && z2) {
            int i3 = this.zzcxc;
            if (i3 != 0) {
                seekTo(i3);
            }
            play();
        }
        zzapu zzapuVar = this.zzcxa;
        if (zzapuVar != null) {
            zzapuVar.zzh(i, i2);
        }
        zzakk.zzcrm.post(new zzapb(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzcwp.zzc(this);
        this.zzcxk.zza(surfaceTexture, this.zzcxd);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzakb.m358v(sb.toString());
        this.zzcwv = mediaPlayer.getVideoWidth();
        this.zzcww = mediaPlayer.getVideoHeight();
        if (this.zzcwv == 0 || this.zzcww == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzakb.m358v(sb.toString());
        zzakk.zzcrm.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzaow
            private final int zzcsi;
            private final zzaov zzcxe;

            {
                this.zzcxe = this;
                this.zzcsi = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcxe.zzah(this.zzcsi);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void pause() {
        zzakb.m358v("AdMediaPlayerView pause");
        if (zzss() && this.zzcwt.isPlaying()) {
            this.zzcwt.pause();
            zzag(4);
            zzakk.zzcrm.post(new zzape(this));
        }
        this.zzcws = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void play() {
        zzakb.m358v("AdMediaPlayerView play");
        if (zzss()) {
            this.zzcwt.start();
            zzag(3);
            this.zzcxk.zzsw();
            zzakk.zzcrm.post(new zzapd(this));
        }
        this.zzcws = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void seekTo(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzakb.m358v(sb.toString());
        if (!zzss()) {
            this.zzcxc = i;
        } else {
            this.zzcwt.seekTo(i);
            this.zzcxc = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void setVideoPath(String str) {
        Uri uri = Uri.parse(str);
        zzhl zzhlVarZzd = zzhl.zzd(uri);
        if (zzhlVarZzd != null) {
            uri = Uri.parse(zzhlVarZzd.url);
        }
        this.zzcwu = uri;
        this.zzcxc = 0;
        zzsq();
        requestLayout();
        invalidate();
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void stop() {
        zzakb.m358v("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzcwt;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzcwt.release();
            this.zzcwt = null;
            zzag(0);
            this.zzcws = 0;
        }
        this.zzcwp.onStop();
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void zza(float f, float f2) {
        zzapu zzapuVar = this.zzcxa;
        if (zzapuVar != null) {
            zzapuVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void zza(zzapf zzapfVar) {
        this.zzcxd = zzapfVar;
    }

    final /* synthetic */ void zzah(int i) {
        zzapf zzapfVar = this.zzcxd;
        if (zzapfVar != null) {
            zzapfVar.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final String zzsp() {
        String strValueOf = String.valueOf(this.zzcxb ? " spherical" : "");
        return strValueOf.length() != 0 ? "MediaPlayer".concat(strValueOf) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzapg, com.google.android.gms.internal.ads.zzaqa
    public final void zzst() {
        zza(this.zzcxl.getVolume());
    }
}
