package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.internal.Asserts;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzapi extends FrameLayout implements zzapf {
    private final zzapw zzcxm;
    private final FrameLayout zzcxn;
    private final zznx zzcxo;
    private final zzapy zzcxp;
    private final long zzcxq;
    private zzapg zzcxr;
    private boolean zzcxs;
    private boolean zzcxt;
    private boolean zzcxu;
    private boolean zzcxv;
    private long zzcxw;
    private long zzcxx;
    private String zzcxy;
    private Bitmap zzcxz;
    private ImageView zzcya;
    private boolean zzcyb;

    public zzapi(Context context, zzapw zzapwVar, int i, boolean z, zznx zznxVar, zzapv zzapvVar) {
        super(context);
        this.zzcxm = zzapwVar;
        this.zzcxo = zznxVar;
        this.zzcxn = new FrameLayout(context);
        addView(this.zzcxn, new FrameLayout.LayoutParams(-1, -1));
        Asserts.checkNotNull(zzapwVar.zzbi());
        this.zzcxr = zzapwVar.zzbi().zzwz.zza(context, zzapwVar, i, z, zznxVar, zzapvVar);
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar != null) {
            this.zzcxn.addView(zzapgVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzkb.zzik().zzd(zznk.zzavg)).booleanValue()) {
                zztd();
            }
        }
        this.zzcya = new ImageView(context);
        this.zzcxq = ((Long) zzkb.zzik().zzd(zznk.zzavk)).longValue();
        this.zzcxv = ((Boolean) zzkb.zzik().zzd(zznk.zzavi)).booleanValue();
        zznx zznxVar2 = this.zzcxo;
        if (zznxVar2 != null) {
            zznxVar2.zze("spinner_used", this.zzcxv ? "1" : "0");
        }
        this.zzcxp = new zzapy(this);
        zzapg zzapgVar2 = this.zzcxr;
        if (zzapgVar2 != null) {
            zzapgVar2.zza(this);
        }
        if (this.zzcxr == null) {
            zzg("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzapw zzapwVar) {
        HashMap map = new HashMap();
        map.put("event", "no_video_view");
        zzapwVar.zza("onVideoEvent", map);
    }

    public static void zza(zzapw zzapwVar, String str) {
        HashMap map = new HashMap();
        map.put("event", "decoderProps");
        map.put("error", str);
        zzapwVar.zza("onVideoEvent", map);
    }

    public static void zza(zzapw zzapwVar, Map<String, List<Map<String, Object>>> map) {
        HashMap map2 = new HashMap();
        map2.put("event", "decoderProps");
        map2.put("mimeTypes", map);
        zzapwVar.zza("onVideoEvent", map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, String... strArr) {
        HashMap map = new HashMap();
        map.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.zzcxm.zza("onVideoEvent", map);
    }

    private final boolean zztf() {
        return this.zzcya.getParent() != null;
    }

    private final void zztg() {
        if (this.zzcxm.zzto() == null || !this.zzcxt || this.zzcxu) {
            return;
        }
        this.zzcxm.zzto().getWindow().clearFlags(128);
        this.zzcxt = false;
    }

    public final void destroy() {
        this.zzcxp.pause();
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar != null) {
            zzapgVar.stop();
        }
        zztg();
    }

    public final void finalize() throws Throwable {
        try {
            this.zzcxp.pause();
            if (this.zzcxr != null) {
                zzapg zzapgVar = this.zzcxr;
                Executor executor = zzaoe.zzcvy;
                zzapgVar.getClass();
                executor.execute(zzapj.zza(zzapgVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void onPaused() {
        zza("pause", new String[0]);
        zztg();
        this.zzcxs = false;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzapf
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        if (i == 0) {
            this.zzcxp.resume();
            z = true;
        } else {
            this.zzcxp.pause();
            this.zzcxx = this.zzcxw;
            z = false;
        }
        zzakk.zzcrm.post(new zzapm(this, z));
    }

    public final void pause() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.pause();
    }

    public final void play() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.play();
    }

    public final void seekTo(int i) {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.seekTo(i);
    }

    public final void setVolume(float f) {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.zzcxl.setVolume(f);
        zzapgVar.zzst();
    }

    public final void zza(float f, float f2) {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar != null) {
            zzapgVar.zza(f, f2);
        }
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzcxn.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzdn(String str) {
        this.zzcxy = str;
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzf(int i, int i2) {
        if (this.zzcxv) {
            int iMax = Math.max(i / ((Integer) zzkb.zzik().zzd(zznk.zzavj)).intValue(), 1);
            int iMax2 = Math.max(i2 / ((Integer) zzkb.zzik().zzd(zznk.zzavj)).intValue(), 1);
            Bitmap bitmap = this.zzcxz;
            if (bitmap != null && bitmap.getWidth() == iMax && this.zzcxz.getHeight() == iMax2) {
                return;
            }
            this.zzcxz = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.zzcyb = false;
        }
    }

    @TargetApi(14)
    public final void zzf(MotionEvent motionEvent) {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzg(String str, String str2) {
        zza("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsu() {
        this.zzcxp.resume();
        zzakk.zzcrm.post(new zzapk(this));
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsv() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar != null && this.zzcxx == 0) {
            zza("canplaythrough", "duration", String.valueOf(zzapgVar.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzcxr.getVideoWidth()), "videoHeight", String.valueOf(this.zzcxr.getVideoHeight()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsw() {
        if (this.zzcxm.zzto() != null && !this.zzcxt) {
            this.zzcxu = (this.zzcxm.zzto().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzcxu) {
                this.zzcxm.zzto().getWindow().addFlags(128);
                this.zzcxt = true;
            }
        }
        this.zzcxs = true;
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsx() {
        zza("ended", new String[0]);
        zztg();
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsy() {
        if (this.zzcyb && this.zzcxz != null && !zztf()) {
            this.zzcya.setImageBitmap(this.zzcxz);
            this.zzcya.invalidate();
            this.zzcxn.addView(this.zzcya, new FrameLayout.LayoutParams(-1, -1));
            this.zzcxn.bringChildToFront(this.zzcya);
        }
        this.zzcxp.pause();
        this.zzcxx = this.zzcxw;
        zzakk.zzcrm.post(new zzapl(this));
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzsz() {
        if (this.zzcxs && zztf()) {
            this.zzcxn.removeView(this.zzcya);
        }
        if (this.zzcxz != null) {
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime();
            if (this.zzcxr.getBitmap(this.zzcxz) != null) {
                this.zzcyb = true;
            }
            long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime() - jElapsedRealtime;
            if (zzakb.zzqp()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(jElapsedRealtime2);
                sb.append("ms");
                zzakb.m358v(sb.toString());
            }
            if (jElapsedRealtime2 > this.zzcxq) {
                zzakb.zzdk("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzcxv = false;
                this.zzcxz = null;
                zznx zznxVar = this.zzcxo;
                if (zznxVar != null) {
                    zznxVar.zze("spinner_jank", Long.toString(jElapsedRealtime2));
                }
            }
        }
    }

    public final void zzta() {
        if (this.zzcxr == null) {
            return;
        }
        if (TextUtils.isEmpty(this.zzcxy)) {
            zza("no_src", new String[0]);
        } else {
            this.zzcxr.setVideoPath(this.zzcxy);
        }
    }

    public final void zztb() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.zzcxl.setMuted(true);
        zzapgVar.zzst();
    }

    public final void zztc() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        zzapgVar.zzcxl.setMuted(false);
        zzapgVar.zzst();
    }

    @TargetApi(14)
    public final void zztd() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        TextView textView = new TextView(zzapgVar.getContext());
        String strValueOf = String.valueOf(this.zzcxr.zzsp());
        textView.setText(strValueOf.length() != 0 ? "AdMob - ".concat(strValueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.zzcxn.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzcxn.bringChildToFront(textView);
    }

    final void zzte() {
        zzapg zzapgVar = this.zzcxr;
        if (zzapgVar == null) {
            return;
        }
        long currentPosition = zzapgVar.getCurrentPosition();
        if (this.zzcxw == currentPosition || currentPosition <= 0) {
            return;
        }
        zza("timeupdate", "time", String.valueOf(currentPosition / 1000.0f));
        this.zzcxw = currentPosition;
    }
}
