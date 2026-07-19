package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzald {
    private Handler handler;
    private final Context mContext;
    private int state;
    private String zzaej;
    private final float zzbwx;
    private String zzchz;
    private String zzcrx;
    private float zzcry;
    private float zzcrz;
    private float zzcsa;
    private int zzcsb;
    private float zzcsc;
    private float zzcsd;
    private float zzcse;
    private float zzcsf;
    private Runnable zzcsg;
    private String zzye;

    public zzald(Context context) {
        this.state = 0;
        this.zzcsg = new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzale
            private final zzald zzcsh;

            {
                this.zzcsh = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcsh.zzrv();
            }
        };
        this.mContext = context;
        this.zzbwx = context.getResources().getDisplayMetrics().density;
        this.zzcsb = ViewConfiguration.get(this.mContext).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzbv.zzez().zzsa();
        this.handler = com.google.android.gms.ads.internal.zzbv.zzez().getHandler();
    }

    public zzald(Context context, String str) {
        this(context);
        this.zzcrx = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    private final void zza(int i, float f, float f2) {
        if (i == 0) {
            this.state = 0;
            this.zzcry = f;
            this.zzcrz = f2;
            this.zzcsa = f2;
            return;
        }
        int i2 = this.state;
        if (i2 == -1) {
            return;
        }
        if (i != 2) {
            if (i == 1 && i2 == 4) {
                showDialog();
                return;
            }
            return;
        }
        if (f2 > this.zzcrz) {
            this.zzcrz = f2;
        } else if (f2 < this.zzcsa) {
            this.zzcsa = f2;
        }
        if (this.zzcrz - this.zzcsa > this.zzbwx * 30.0f) {
            this.state = -1;
            return;
        }
        int i3 = this.state;
        if (i3 == 0 || i3 == 2 ? f - this.zzcry >= this.zzbwx * 50.0f : !((i3 != 1 && i3 != 3) || f - this.zzcry > this.zzbwx * (-50.0f))) {
            this.zzcry = f;
            this.state++;
        }
        int i4 = this.state;
        if (i4 == 1 || i4 == 3) {
            if (f > this.zzcry) {
                this.zzcry = f;
            }
        } else {
            if (i4 != 2 || f >= this.zzcry) {
                return;
            }
            this.zzcry = f;
        }
    }

    private final boolean zza(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzcsc - f) < ((float) this.zzcsb) && Math.abs(this.zzcsd - f2) < ((float) this.zzcsb) && Math.abs(this.zzcse - f3) < ((float) this.zzcsb) && Math.abs(this.zzcsf - f4) < ((float) this.zzcsb);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006f  */
    private final void zzrs() {
        final String strTrim;
        if (!(this.mContext instanceof Activity)) {
            zzakb.zzdj("Can not create dialog without Activity Context");
            return;
        }
        String str = this.zzcrx;
        if (TextUtils.isEmpty(str)) {
            strTrim = "No debug information";
        } else {
            Uri uriBuild = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
            StringBuilder sb = new StringBuilder();
            com.google.android.gms.ads.internal.zzbv.zzek();
            Map<String, String> mapZzg = zzakk.zzg(uriBuild);
            for (String str2 : mapZzg.keySet()) {
                sb.append(str2);
                sb.append(" = ");
                sb.append(mapZzg.get(str2));
                sb.append("\n\n");
            }
            strTrim = sb.toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                strTrim = "No debug information";
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setMessage(strTrim);
        builder.setTitle("Ad Information");
        builder.setPositiveButton("Share", new DialogInterface.OnClickListener(this, strTrim) { // from class: com.google.android.gms.internal.ads.zzalg
            private final zzald zzcsh;
            private final String zzzo;

            {
                this.zzcsh = this;
                this.zzzo = strTrim;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.zzcsh.zza(this.zzzo, dialogInterface, i);
            }
        });
        builder.setNegativeButton("Close", zzalh.zzcsl);
        builder.create().show();
    }

    public final void setAdUnitId(String str) {
        this.zzye = str;
    }

    public final void showDialog() {
        try {
            if (!((Boolean) zzkb.zzik().zzd(zznk.zzbec)).booleanValue()) {
                if (!((Boolean) zzkb.zzik().zzd(zznk.zzbeb)).booleanValue()) {
                    zzrs();
                    return;
                }
            }
            if (!(this.mContext instanceof Activity)) {
                zzakb.zzdj("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzbv.zzeu().zzrw()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = com.google.android.gms.ads.internal.zzbv.zzeu().zzrx() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int iZza = zza((List<String>) arrayList, "Ad Information", true);
            final int iZza2 = zza(arrayList, str, ((Boolean) zzkb.zzik().zzd(zznk.zzbeb)).booleanValue());
            final int iZza3 = zza(arrayList, str2, ((Boolean) zzkb.zzik().zzd(zznk.zzbec)).booleanValue());
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext, com.google.android.gms.ads.internal.zzbv.zzem().zzrq());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, iZza, iZza2, iZza3) { // from class: com.google.android.gms.internal.ads.zzalf
                private final zzald zzcsh;
                private final int zzcsi;
                private final int zzcsj;
                private final int zzcsk;

                {
                    this.zzcsh = this;
                    this.zzcsi = iZza;
                    this.zzcsj = iZza2;
                    this.zzcsk = iZza3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zzcsh.zza(this.zzcsi, this.zzcsj, this.zzcsk, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            if (zzakb.zzqp()) {
                Log.v("Ads", "", e);
            }
        }
    }

    final /* synthetic */ void zza(int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (i4 == i) {
            zzrs();
            return;
        }
        if (i4 == i2) {
            if (((Boolean) zzkb.zzik().zzd(zznk.zzbeb)).booleanValue()) {
                zzakb.zzck("Debug mode [Creative Preview] selected.");
                zzaki.zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzali
                    private final zzald zzcsh;

                    {
                        this.zzcsh = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcsh.zzru();
                    }
                });
                return;
            }
        }
        if (i4 == i3) {
            if (((Boolean) zzkb.zzik().zzd(zznk.zzbec)).booleanValue()) {
                zzakb.zzck("Debug mode [Troubleshooting] selected.");
                zzaki.zzb(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzalj
                    private final zzald zzcsh;

                    {
                        this.zzcsh = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcsh.zzrt();
                    }
                });
            }
        }
    }

    final /* synthetic */ void zza(String str, DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzbv.zzek();
        zzakk.zza(this.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public final void zzda(String str) {
        this.zzaej = str;
    }

    public final void zzdb(String str) {
        this.zzcrx = str;
    }

    public final void zzdc(String str) {
        this.zzchz = str;
    }

    public final void zze(MotionEvent motionEvent) {
        if (!((Boolean) zzkb.zzik().zzd(zznk.zzbed)).booleanValue()) {
            int historySize = motionEvent.getHistorySize();
            for (int i = 0; i < historySize; i++) {
                zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
            }
            zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int historySize2 = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.state = 0;
            this.zzcsc = motionEvent.getX();
            this.zzcsd = motionEvent.getY();
            return;
        }
        int i2 = this.state;
        if (i2 != -1) {
            boolean z = true;
            if (i2 == 0 && actionMasked == 5) {
                this.state = 5;
                this.zzcse = motionEvent.getX(1);
                this.zzcsf = motionEvent.getY(1);
                this.handler.postDelayed(this.zzcsg, ((Long) zzkb.zzik().zzd(zznk.zzbee)).longValue());
                return;
            }
            if (this.state == 5) {
                if (pointerCount == 2) {
                    if (actionMasked == 2) {
                        boolean z2 = false;
                        for (int i3 = 0; i3 < historySize2; i3++) {
                            if (!zza(motionEvent.getHistoricalX(0, i3), motionEvent.getHistoricalY(0, i3), motionEvent.getHistoricalX(1, i3), motionEvent.getHistoricalY(1, i3))) {
                                z2 = true;
                            }
                        }
                        if (zza(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                            z = z2;
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    this.state = -1;
                    this.handler.removeCallbacks(this.zzcsg);
                }
            }
        }
    }

    final /* synthetic */ void zzrt() {
        com.google.android.gms.ads.internal.zzbv.zzeu().zza(this.mContext, this.zzye, this.zzaej, this.zzchz);
    }

    final /* synthetic */ void zzru() {
        com.google.android.gms.ads.internal.zzbv.zzeu().zzg(this.mContext, this.zzye, this.zzaej);
    }

    final /* synthetic */ void zzrv() {
        this.state = 4;
        showDialog();
    }
}
