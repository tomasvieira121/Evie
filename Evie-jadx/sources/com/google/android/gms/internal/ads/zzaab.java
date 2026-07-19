package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzaab extends zzaal {
    private static final Set<String> zzbvy = CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private final Object mLock;
    private zzaam zzbmy;
    private final zzaqw zzbnd;
    private final Activity zzbvp;
    private String zzbvz;
    private boolean zzbwa;
    private int zzbwb;
    private int zzbwc;
    private int zzbwd;
    private int zzbwe;
    private zzasi zzbwf;
    private ImageView zzbwg;
    private LinearLayout zzbwh;
    private PopupWindow zzbwi;
    private RelativeLayout zzbwj;
    private ViewGroup zzbwk;
    private int zzuq;
    private int zzur;

    public zzaab(zzaqw zzaqwVar, zzaam zzaamVar) {
        super(zzaqwVar, "resize");
        this.zzbvz = "top-right";
        this.zzbwa = true;
        this.zzbwb = 0;
        this.zzbwc = 0;
        this.zzur = -1;
        this.zzbwd = 0;
        this.zzbwe = 0;
        this.zzuq = -1;
        this.mLock = new Object();
        this.zzbnd = zzaqwVar;
        this.zzbvp = zzaqwVar.zzto();
        this.zzbmy = zzaamVar;
    }

    private final void zza(int i, int i2) {
        zzb(i, i2 - com.google.android.gms.ads.internal.zzbv.zzek().zzh(this.zzbvp)[0], this.zzuq, this.zzur);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0080  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:65:0x0103  */
    /* JADX WARN: Code duplicated, block: B:67:0x0114  */
    /* JADX WARN: Code duplicated, block: B:69:0x0136  */
    /* JADX WARN: Code duplicated, block: B:70:0x0138  */
    /* JADX WARN: Code duplicated, block: B:72:0x013e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0140  */
    /* JADX WARN: Code duplicated, block: B:76:0x0145  */
    /* JADX WARN: Code duplicated, block: B:77:0x0148  */
    /* JADX WARN: Code duplicated, block: B:79:0x0150  */
    private final int[] zzne() {
        String str;
        boolean z;
        int[] iArrZzh;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArrZzg = com.google.android.gms.ads.internal.zzbv.zzek().zzg(this.zzbvp);
        int[] iArrZzh2 = com.google.android.gms.ads.internal.zzbv.zzek().zzh(this.zzbvp);
        int i9 = iArrZzg[0];
        int i10 = iArrZzg[1];
        int i11 = this.zzuq;
        if (i11 < 50 || i11 > i9) {
            str = "Width is too small or too large.";
        } else {
            int i12 = this.zzur;
            if (i12 >= 50 && i12 <= i10) {
                if (i12 == i10 && i11 == i9) {
                    str = "Cannot resize to a full-screen ad.";
                } else {
                    if (this.zzbwa) {
                        switch (this.zzbvz) {
                            case "top-left":
                                i7 = this.zzbwb + this.zzbwd;
                                i8 = this.zzbwc + this.zzbwe;
                                break;
                            case "top-center":
                                i7 = ((this.zzbwb + this.zzbwd) + (this.zzuq / 2)) - 25;
                                i8 = this.zzbwc + this.zzbwe;
                                break;
                            case "center":
                                i7 = ((this.zzbwb + this.zzbwd) + (this.zzuq / 2)) - 25;
                                i8 = ((this.zzbwc + this.zzbwe) + (this.zzur / 2)) - 25;
                                break;
                            case "bottom-left":
                                i7 = this.zzbwb + this.zzbwd;
                                i8 = ((this.zzbwc + this.zzbwe) + this.zzur) - 50;
                                break;
                            case "bottom-center":
                                i7 = ((this.zzbwb + this.zzbwd) + (this.zzuq / 2)) - 25;
                                i8 = ((this.zzbwc + this.zzbwe) + this.zzur) - 50;
                                break;
                            case "bottom-right":
                                i7 = ((this.zzbwb + this.zzbwd) + this.zzuq) - 50;
                                i8 = ((this.zzbwc + this.zzbwe) + this.zzur) - 50;
                                break;
                            default:
                                i7 = ((this.zzbwb + this.zzbwd) + this.zzuq) - 50;
                                i8 = this.zzbwc + this.zzbwe;
                                break;
                        }
                        z = i7 >= 0 && i7 + 50 <= i9 && i8 >= iArrZzh2[0] && i8 + 50 <= iArrZzh2[1];
                    }
                }
                if (!z) {
                    return null;
                }
                if (this.zzbwa) {
                    return new int[]{this.zzbwb + this.zzbwd, this.zzbwc + this.zzbwe};
                }
                int[] iArrZzg2 = com.google.android.gms.ads.internal.zzbv.zzek().zzg(this.zzbvp);
                iArrZzh = com.google.android.gms.ads.internal.zzbv.zzek().zzh(this.zzbvp);
                i = iArrZzg2[0];
                i2 = this.zzbwb + this.zzbwd;
                i3 = this.zzbwc + this.zzbwe;
                if (i2 < 0) {
                    i5 = 0;
                } else {
                    i4 = this.zzuq;
                    if (i2 + i4 > i) {
                        i5 = i - i4;
                    } else {
                        i5 = i2;
                    }
                }
                if (i3 < iArrZzh[0]) {
                    i3 = iArrZzh[0];
                } else {
                    i6 = this.zzur;
                    if (i3 + i6 > iArrZzh[1]) {
                        i3 = iArrZzh[1] - i6;
                    }
                }
                return new int[]{i5, i3};
            }
            str = "Height is too small or too large.";
        }
        zzakb.zzdk(str);
        if (!z) {
            return null;
        }
        if (this.zzbwa) {
            return new int[]{this.zzbwb + this.zzbwd, this.zzbwc + this.zzbwe};
        }
        int[] iArrZzg3 = com.google.android.gms.ads.internal.zzbv.zzek().zzg(this.zzbvp);
        iArrZzh = com.google.android.gms.ads.internal.zzbv.zzek().zzh(this.zzbvp);
        i = iArrZzg3[0];
        i2 = this.zzbwb + this.zzbwd;
        i3 = this.zzbwc + this.zzbwe;
        if (i2 < 0) {
            i5 = 0;
        } else {
            i4 = this.zzuq;
            if (i2 + i4 > i) {
                i5 = i - i4;
            } else {
                i5 = i2;
            }
        }
        if (i3 < iArrZzh[0]) {
            i3 = iArrZzh[0];
        } else {
            i6 = this.zzur;
            if (i3 + i6 > iArrZzh[1]) {
                i3 = iArrZzh[1] - i6;
            }
        }
        return new int[]{i5, i3};
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.mLock) {
            this.zzbwb = i;
            this.zzbwc = i2;
            if (this.zzbwi != null && z) {
                int[] iArrZzne = zzne();
                if (iArrZzne != null) {
                    PopupWindow popupWindow = this.zzbwi;
                    zzkb.zzif();
                    int iZza = zzamu.zza(this.zzbvp, iArrZzne[0]);
                    zzkb.zzif();
                    popupWindow.update(iZza, zzamu.zza(this.zzbvp, iArrZzne[1]), this.zzbwi.getWidth(), this.zzbwi.getHeight());
                    zza(iArrZzne[0], iArrZzne[1]);
                } else {
                    zzm(true);
                }
            }
        }
    }

    public final void zzb(int i, int i2) {
        this.zzbwb = i;
        this.zzbwc = i2;
    }

    /* JADX WARN: Code duplicated, block: B:95:0x0231  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final void zzk(Map<String, String> map) {
        synchronized (this.mLock) {
            if (this.zzbvp == null) {
                zzbw("Not an activity context. Cannot resize.");
                return;
            }
            if (this.zzbnd.zzud() == null) {
                zzbw("Webview is not yet available, size is not set.");
                return;
            }
            if (this.zzbnd.zzud().zzvs()) {
                zzbw("Is interstitial. Cannot resize an interstitial.");
                return;
            }
            if (this.zzbnd.zzuj()) {
                zzbw("Cannot resize an expanded banner.");
                return;
            }
            if (!TextUtils.isEmpty(map.get("width"))) {
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzuq = zzakk.zzcv(map.get("width"));
            }
            if (!TextUtils.isEmpty(map.get("height"))) {
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzur = zzakk.zzcv(map.get("height"));
            }
            if (!TextUtils.isEmpty(map.get("offsetX"))) {
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzbwd = zzakk.zzcv(map.get("offsetX"));
            }
            if (!TextUtils.isEmpty(map.get("offsetY"))) {
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzbwe = zzakk.zzcv(map.get("offsetY"));
            }
            if (!TextUtils.isEmpty(map.get("allowOffscreen"))) {
                this.zzbwa = Boolean.parseBoolean(map.get("allowOffscreen"));
            }
            String str = map.get("customClosePosition");
            if (!TextUtils.isEmpty(str)) {
                this.zzbvz = str;
            }
            if (!(this.zzuq >= 0 && this.zzur >= 0)) {
                zzbw("Invalid width and height options. Cannot resize.");
                return;
            }
            Window window = this.zzbvp.getWindow();
            if (window != null && window.getDecorView() != null) {
                int[] iArrZzne = zzne();
                if (iArrZzne == null) {
                    zzbw("Resize location out of screen or close button is not visible.");
                    return;
                }
                zzkb.zzif();
                int iZza = zzamu.zza(this.zzbvp, this.zzuq);
                zzkb.zzif();
                int iZza2 = zzamu.zza(this.zzbvp, this.zzur);
                ViewParent parent = this.zzbnd.getView().getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    zzbw("Webview is detached, probably in the middle of a resize or expand.");
                    return;
                }
                ((ViewGroup) parent).removeView(this.zzbnd.getView());
                if (this.zzbwi == null) {
                    this.zzbwk = (ViewGroup) parent;
                    com.google.android.gms.ads.internal.zzbv.zzek();
                    Bitmap bitmapZzs = zzakk.zzs(this.zzbnd.getView());
                    this.zzbwg = new ImageView(this.zzbvp);
                    this.zzbwg.setImageBitmap(bitmapZzs);
                    this.zzbwf = this.zzbnd.zzud();
                    this.zzbwk.addView(this.zzbwg);
                } else {
                    this.zzbwi.dismiss();
                }
                this.zzbwj = new RelativeLayout(this.zzbvp);
                this.zzbwj.setBackgroundColor(0);
                this.zzbwj.setLayoutParams(new ViewGroup.LayoutParams(iZza, iZza2));
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzbwi = zzakk.zza((View) this.zzbwj, iZza, iZza2, false);
                this.zzbwi.setOutsideTouchable(true);
                this.zzbwi.setTouchable(true);
                this.zzbwi.setClippingEnabled(!this.zzbwa);
                this.zzbwj.addView(this.zzbnd.getView(), -1, -1);
                this.zzbwh = new LinearLayout(this.zzbvp);
                zzkb.zzif();
                int iZza3 = zzamu.zza(this.zzbvp, 50);
                zzkb.zzif();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iZza3, zzamu.zza(this.zzbvp, 50));
                switch (this.zzbvz) {
                    case "top-left":
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                        break;
                    case "top-center":
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                        break;
                    case "center":
                        layoutParams.addRule(13);
                        break;
                    case "bottom-left":
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                        break;
                    case "bottom-center":
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                        break;
                    case "bottom-right":
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                        break;
                    default:
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                        break;
                }
                this.zzbwh.setOnClickListener(new zzaac(this));
                this.zzbwh.setContentDescription("Close button");
                this.zzbwj.addView(this.zzbwh, layoutParams);
                try {
                    PopupWindow popupWindow = this.zzbwi;
                    View decorView = window.getDecorView();
                    zzkb.zzif();
                    int iZza4 = zzamu.zza(this.zzbvp, iArrZzne[0]);
                    zzkb.zzif();
                    popupWindow.showAtLocation(decorView, 0, iZza4, zzamu.zza(this.zzbvp, iArrZzne[1]));
                    int i = iArrZzne[0];
                    int i2 = iArrZzne[1];
                    if (this.zzbmy != null) {
                        this.zzbmy.zza(i, i2, this.zzuq, this.zzur);
                    }
                    this.zzbnd.zza(zzasi.zzi(iZza, iZza2));
                    zza(iArrZzne[0], iArrZzne[1]);
                    zzby("resized");
                    return;
                } catch (RuntimeException e) {
                    String strValueOf = String.valueOf(e.getMessage());
                    zzbw(strValueOf.length() != 0 ? "Cannot show popup window: ".concat(strValueOf) : new String("Cannot show popup window: "));
                    this.zzbwj.removeView(this.zzbnd.getView());
                    if (this.zzbwk != null) {
                        this.zzbwk.removeView(this.zzbwg);
                        this.zzbwk.addView(this.zzbnd.getView());
                        this.zzbnd.zza(this.zzbwf);
                    }
                    return;
                }
            }
            zzbw("Activity context is not ready, cannot get window or decor view.");
        }
    }

    public final void zzm(boolean z) {
        synchronized (this.mLock) {
            if (this.zzbwi != null) {
                this.zzbwi.dismiss();
                this.zzbwj.removeView(this.zzbnd.getView());
                if (this.zzbwk != null) {
                    this.zzbwk.removeView(this.zzbwg);
                    this.zzbwk.addView(this.zzbnd.getView());
                    this.zzbnd.zza(this.zzbwf);
                }
                if (z) {
                    zzby("default");
                    if (this.zzbmy != null) {
                        this.zzbmy.zzcq();
                    }
                }
                this.zzbwi = null;
                this.zzbwj = null;
                this.zzbwk = null;
                this.zzbwh = null;
            }
        }
    }

    public final boolean zznf() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzbwi != null;
        }
        return z;
    }
}
