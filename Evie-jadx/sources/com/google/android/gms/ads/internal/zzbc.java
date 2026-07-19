package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaaw;
import com.google.android.gms.internal.ads.zzabl;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzacq;
import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzajh;
import com.google.android.gms.internal.ads.zzaji;
import com.google.android.gms.internal.ads.zzakb;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzanz;
import com.google.android.gms.internal.ads.zzaoj;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzarg;
import com.google.android.gms.internal.ads.zzev;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzkb;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzlr;
import com.google.android.gms.internal.ads.zznk;
import com.google.android.gms.internal.ads.zznx;
import com.google.android.gms.internal.ads.zzod;
import com.google.android.gms.internal.ads.zzoo;
import com.google.android.gms.internal.ads.zzoq;
import com.google.android.gms.internal.ads.zzos;
import com.google.android.gms.internal.ads.zzov;
import com.google.android.gms.internal.ads.zzox;
import com.google.android.gms.internal.ads.zzoy;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpa;
import com.google.android.gms.internal.ads.zzpb;
import com.google.android.gms.internal.ads.zzpd;
import com.google.android.gms.internal.ads.zzqs;
import com.google.android.gms.internal.ads.zzrc;
import com.google.android.gms.internal.ads.zzrf;
import com.google.android.gms.internal.ads.zzwy;
import com.google.android.gms.internal.ads.zzxn;
import com.google.android.gms.internal.ads.zzxq;
import com.google.android.gms.internal.ads.zzxz;
import com.google.android.gms.internal.ads.zzyc;
import com.google.android.gms.internal.ads.zzyf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzbc extends zzd implements zzpa {
    private final Object mLock;
    private zzaqw zzaaa;
    private zzaqw zzaab;
    private int zzaac;

    @GuardedBy("mLock")
    private zzacm zzaad;
    private final String zzaae;
    private boolean zzwl;
    private boolean zzzy;
    private zzaoj<zzpb> zzzz;

    public zzbc(Context context, zzw zzwVar, zzjn zzjnVar, String str, zzxn zzxnVar, zzang zzangVar) {
        this(context, zzwVar, zzjnVar, str, zzxnVar, zzangVar, false);
    }

    public zzbc(Context context, zzw zzwVar, zzjn zzjnVar, String str, zzxn zzxnVar, zzang zzangVar, boolean z) {
        super(context, zzjnVar, str, zzxnVar, zzangVar, zzwVar);
        this.mLock = new Object();
        this.zzzz = new zzaoj<>();
        this.zzaac = 1;
        this.zzaae = UUID.randomUUID().toString();
        this.zzzy = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzov zza(zzpb zzpbVar) {
        zzov zzovVar;
        IObjectWrapper iObjectWrapperZzka;
        Object objUnwrap = null;
        if (zzpbVar instanceof zzoq) {
            zzoq zzoqVar = (zzoq) zzpbVar;
            zzovVar = new zzov(zzoqVar.getHeadline(), zzoqVar.getImages(), zzoqVar.getBody(), zzoqVar.zzkg(), zzoqVar.getCallToAction(), zzoqVar.getAdvertiser(), -1.0d, null, null, zzoqVar.zzkc(), zzoqVar.getVideoController(), zzoqVar.zzkd(), zzoqVar.zzke(), zzoqVar.getMediationAdapterClassName(), zzoqVar.getExtras());
            if (zzoqVar.zzka() != null) {
                iObjectWrapperZzka = zzoqVar.zzka();
                objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzka);
            }
        } else if (zzpbVar instanceof zzoo) {
            zzoo zzooVar = (zzoo) zzpbVar;
            zzovVar = new zzov(zzooVar.getHeadline(), zzooVar.getImages(), zzooVar.getBody(), zzooVar.zzjz(), zzooVar.getCallToAction(), null, zzooVar.getStarRating(), zzooVar.getStore(), zzooVar.getPrice(), zzooVar.zzkc(), zzooVar.getVideoController(), zzooVar.zzkd(), zzooVar.zzke(), zzooVar.getMediationAdapterClassName(), zzooVar.getExtras());
            if (zzooVar.zzka() != null) {
                iObjectWrapperZzka = zzooVar.zzka();
                objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzka);
            }
        } else {
            zzovVar = null;
        }
        if (objUnwrap instanceof zzpd) {
            zzovVar.zzb((zzpd) objUnwrap);
        }
        return zzovVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(zzbw zzbwVar, zzbw zzbwVar2) {
        if (zzbwVar2.zzade == null) {
            zzbwVar2.zzade = zzbwVar.zzade;
        }
        if (zzbwVar2.zzadf == null) {
            zzbwVar2.zzadf = zzbwVar.zzadf;
        }
        if (zzbwVar2.zzadh == null) {
            zzbwVar2.zzadh = zzbwVar.zzadh;
        }
        if (zzbwVar2.zzadi == null) {
            zzbwVar2.zzadi = zzbwVar.zzadi;
        }
        if (zzbwVar2.zzadk == null) {
            zzbwVar2.zzadk = zzbwVar.zzadk;
        }
        if (zzbwVar2.zzadj == null) {
            zzbwVar2.zzadj = zzbwVar.zzadj;
        }
        if (zzbwVar2.zzads == null) {
            zzbwVar2.zzads = zzbwVar.zzads;
        }
        if (zzbwVar2.zzacy == null) {
            zzbwVar2.zzacy = zzbwVar.zzacy;
        }
        if (zzbwVar2.zzadt == null) {
            zzbwVar2.zzadt = zzbwVar.zzadt;
        }
        if (zzbwVar2.zzacz == null) {
            zzbwVar2.zzacz = zzbwVar.zzacz;
        }
        if (zzbwVar2.zzada == null) {
            zzbwVar2.zzada = zzbwVar.zzada;
        }
        if (zzbwVar2.zzacv == null) {
            zzbwVar2.zzacv = zzbwVar.zzacv;
        }
        if (zzbwVar2.zzacw == null) {
            zzbwVar2.zzacw = zzbwVar.zzacw;
        }
        if (zzbwVar2.zzacx == null) {
            zzbwVar2.zzacx = zzbwVar.zzacx;
        }
    }

    private final void zza(zzoo zzooVar) {
        zzakk.zzcrm.post(new zzbg(this, zzooVar));
    }

    private final void zza(zzoq zzoqVar) {
        zzakk.zzcrm.post(new zzbi(this, zzoqVar));
    }

    private final void zza(zzov zzovVar) {
        zzakk.zzcrm.post(new zzbh(this, zzovVar));
    }

    private final boolean zzcp() {
        return this.zzvw.zzacw != null && this.zzvw.zzacw.zzcfp;
    }

    private final zzwy zzcw() {
        if (this.zzvw.zzacw == null || !this.zzvw.zzacw.zzceq) {
            return null;
        }
        return this.zzvw.zzacw.zzcod;
    }

    private final void zzdx() {
        zzacm zzacmVarZzdr = zzdr();
        if (zzacmVarZzdr != null) {
            zzacmVarZzdr.zzmc();
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.ads.zzks
    public final String getAdUnitId() {
        return this.zzvw.zzacp;
    }

    public final String getUuid() {
        return this.zzaae;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.ads.zzks
    public final void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.ads.zzks
    public final void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.ads.zzks
    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.ads.zzks
    public final void zza(zzaaw zzaawVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zza
    public final void zza(zzaji zzajiVar, zznx zznxVar) {
        if (zzajiVar.zzacv != null) {
            this.zzvw.zzacv = zzajiVar.zzacv;
        }
        if (zzajiVar.errorCode != -2) {
            zzakk.zzcrm.post(new zzbd(this, zzajiVar));
            return;
        }
        int i = zzajiVar.zzcgs.zzceg;
        if (i == 1) {
            this.zzvw.zzadv = 0;
            zzbw zzbwVar = this.zzvw;
            zzbv.zzej();
            zzbwVar.zzacu = zzabl.zza(this.zzvw.zzrt, this, zzajiVar, this.zzvw.zzacq, null, this.zzwh, this, zznxVar);
            String strValueOf = String.valueOf(this.zzvw.zzacu.getClass().getName());
            zzakb.zzck(strValueOf.length() != 0 ? "AdRenderer: ".concat(strValueOf) : new String("AdRenderer: "));
            return;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArray2 = new JSONObject(zzajiVar.zzcos.zzceo).getJSONArray("slots");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONArray jSONArray3 = jSONArray2.getJSONObject(i2).getJSONArray("ads");
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    jSONArray.put(jSONArray3.get(i3));
                }
            }
            zzdx();
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < i; i4++) {
                arrayList.add(zzaki.zza(new zzbe(this, i4, jSONArray, i, zzajiVar)));
            }
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                try {
                    zzakk.zzcrm.post(new zzbf(this, (zzpb) ((zzanz) arrayList.get(i5)).get(((Long) zzkb.zzik().zzd(zznk.zzbao)).longValue(), TimeUnit.MILLISECONDS), i5, arrayList));
                } catch (InterruptedException e) {
                    zzane.zzc("", e);
                    Thread.currentThread().interrupt();
                } catch (CancellationException | ExecutionException | TimeoutException e2) {
                    zzane.zzc("", e2);
                }
            }
        } catch (JSONException e3) {
            zzakb.zzc("Malformed native ad response", e3);
            zzi(0);
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.ads.zzks
    public final void zza(zzod zzodVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zza(zzox zzoxVar) {
        zzaqw zzaqwVar = this.zzaaa;
        if (zzaqwVar != null) {
            zzaqwVar.zzb(zzoxVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zza(zzoz zzozVar) {
        if (this.zzvw.zzacw.zzcob != null) {
            zzbv.zzeo().zzqd().zza(this.zzvw.zzacv, this.zzvw.zzacw, new zzev(zzozVar), (zzaqw) null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:97:0x02cb  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    protected final boolean zza(zzajh zzajhVar, zzajh zzajhVar2) {
        zzov zzovVar;
        zzd(null);
        if (!this.zzvw.zzfo()) {
            throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
        }
        if (zzajhVar2.zzceq) {
            zzdx();
            try {
                zzyf zzyfVarZzmu = zzajhVar2.zzbtx != null ? zzajhVar2.zzbtx.zzmu() : null;
                zzxz zzxzVarZzmo = zzajhVar2.zzbtx != null ? zzajhVar2.zzbtx.zzmo() : null;
                zzyc zzycVarZzmp = zzajhVar2.zzbtx != null ? zzajhVar2.zzbtx.zzmp() : null;
                zzqs zzqsVarZzmt = zzajhVar2.zzbtx != null ? zzajhVar2.zzbtx.zzmt() : null;
                String strZzc = zzc(zzajhVar2);
                if (zzyfVarZzmu != null && this.zzvw.zzadg != null) {
                    zzovVar = new zzov(zzyfVarZzmu.getHeadline(), zzyfVarZzmu.getImages(), zzyfVarZzmu.getBody(), zzyfVarZzmu.zzjz() != null ? zzyfVarZzmu.zzjz() : null, zzyfVarZzmu.getCallToAction(), zzyfVarZzmu.getAdvertiser(), zzyfVarZzmu.getStarRating(), zzyfVarZzmu.getStore(), zzyfVarZzmu.getPrice(), null, zzyfVarZzmu.getVideoController(), zzyfVarZzmu.zzmw() != null ? (View) ObjectWrapper.unwrap(zzyfVarZzmu.zzmw()) : null, zzyfVarZzmu.zzke(), strZzc, zzyfVarZzmu.getExtras());
                    zzovVar.zzb(new zzoy(this.zzvw.zzrt, this, this.zzvw.zzacq, zzyfVarZzmu, zzovVar));
                } else if (zzxzVarZzmo != null && this.zzvw.zzadg != null) {
                    zzovVar = new zzov(zzxzVarZzmo.getHeadline(), zzxzVarZzmo.getImages(), zzxzVarZzmo.getBody(), zzxzVarZzmo.zzjz() != null ? zzxzVarZzmo.zzjz() : null, zzxzVarZzmo.getCallToAction(), null, zzxzVarZzmo.getStarRating(), zzxzVarZzmo.getStore(), zzxzVarZzmo.getPrice(), null, zzxzVarZzmo.getVideoController(), zzxzVarZzmo.zzmw() != null ? (View) ObjectWrapper.unwrap(zzxzVarZzmo.zzmw()) : null, zzxzVarZzmo.zzke(), strZzc, zzxzVarZzmo.getExtras());
                    zzovVar.zzb(new zzoy(this.zzvw.zzrt, this, this.zzvw.zzacq, zzxzVarZzmo, zzovVar));
                } else if (zzxzVarZzmo != null && this.zzvw.zzade != null) {
                    zzoo zzooVar = new zzoo(zzxzVarZzmo.getHeadline(), zzxzVarZzmo.getImages(), zzxzVarZzmo.getBody(), zzxzVarZzmo.zzjz() != null ? zzxzVarZzmo.zzjz() : null, zzxzVarZzmo.getCallToAction(), zzxzVarZzmo.getStarRating(), zzxzVarZzmo.getStore(), zzxzVarZzmo.getPrice(), null, zzxzVarZzmo.getExtras(), zzxzVarZzmo.getVideoController(), zzxzVarZzmo.zzmw() != null ? (View) ObjectWrapper.unwrap(zzxzVarZzmo.zzmw()) : null, zzxzVarZzmo.zzke(), strZzc);
                    zzooVar.zzb(new zzoy(this.zzvw.zzrt, this, this.zzvw.zzacq, zzxzVarZzmo, zzooVar));
                    zza(zzooVar);
                } else if (zzycVarZzmp != null && this.zzvw.zzadg != null) {
                    zzov zzovVar2 = new zzov(zzycVarZzmp.getHeadline(), zzycVarZzmp.getImages(), zzycVarZzmp.getBody(), zzycVarZzmp.zzkg() != null ? zzycVarZzmp.zzkg() : null, zzycVarZzmp.getCallToAction(), zzycVarZzmp.getAdvertiser(), -1.0d, null, null, null, zzycVarZzmp.getVideoController(), zzycVarZzmp.zzmw() != null ? (View) ObjectWrapper.unwrap(zzycVarZzmp.zzmw()) : null, zzycVarZzmp.zzke(), strZzc, zzycVarZzmp.getExtras());
                    zzyc zzycVar = zzycVarZzmp;
                    zzovVar = zzovVar2;
                    zzovVar.zzb(new zzoy(this.zzvw.zzrt, this, this.zzvw.zzacq, zzycVar, zzovVar2));
                } else if (zzycVarZzmp != null && this.zzvw.zzadf != null) {
                    zzoq zzoqVar = new zzoq(zzycVarZzmp.getHeadline(), zzycVarZzmp.getImages(), zzycVarZzmp.getBody(), zzycVarZzmp.zzkg() != null ? zzycVarZzmp.zzkg() : null, zzycVarZzmp.getCallToAction(), zzycVarZzmp.getAdvertiser(), null, zzycVarZzmp.getExtras(), zzycVarZzmp.getVideoController(), zzycVarZzmp.zzmw() != null ? (View) ObjectWrapper.unwrap(zzycVarZzmp.zzmw()) : null, zzycVarZzmp.zzke(), strZzc);
                    zzoqVar.zzb(new zzoy(this.zzvw.zzrt, this, this.zzvw.zzacq, zzycVarZzmp, zzoqVar));
                    zza(zzoqVar);
                } else {
                    if (zzqsVarZzmt == null || this.zzvw.zzadi == null || this.zzvw.zzadi.get(zzqsVarZzmt.getCustomTemplateId()) == null) {
                        zzakb.zzdk("No matching mapper/listener for retrieved native ad template.");
                        zzi(0);
                        return false;
                    }
                    zzakk.zzcrm.post(new zzbk(this, zzqsVarZzmt));
                }
                zza(zzovVar);
            } catch (RemoteException e) {
                zzakb.zzd("#007 Could not call remote method.", e);
            }
        } else {
            zzpb zzpbVar = zzajhVar2.zzcoj;
            if (this.zzzy) {
                this.zzzz.set(zzpbVar);
            } else {
                boolean z = zzpbVar instanceof zzoq;
                if (z && this.zzvw.zzadg != null) {
                    zza(zza(zzajhVar2.zzcoj));
                } else if (!z || this.zzvw.zzadf == null) {
                    boolean z2 = zzpbVar instanceof zzoo;
                    if (z2 && this.zzvw.zzadg != null) {
                        zza(zza(zzajhVar2.zzcoj));
                    } else {
                        if (!z2 || this.zzvw.zzade == null) {
                            if ((zzpbVar instanceof zzos) && this.zzvw.zzadi != null) {
                                zzos zzosVar = (zzos) zzpbVar;
                                if (this.zzvw.zzadi.get(zzosVar.getCustomTemplateId()) != null) {
                                    zzakk.zzcrm.post(new zzbj(this, zzosVar.getCustomTemplateId(), zzajhVar2));
                                }
                            }
                            zzakb.zzdk("No matching listener for retrieved native ad template.");
                            zzi(0);
                            return false;
                        }
                        zza((zzoo) zzajhVar2.zzcoj);
                    }
                } else {
                    zza((zzoq) zzajhVar2.zzcoj);
                }
            }
        }
        return super.zza(zzajhVar, zzajhVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zza(zzjj zzjjVar, zzajh zzajhVar, boolean z) {
        return this.zzvv.zzdz();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public final boolean zza(zzjj zzjjVar, zznx zznxVar) {
        try {
            zzdq();
            return super.zza(zzjjVar, zznxVar, this.zzaac);
        } catch (Exception e) {
            if (!zzane.isLoggable(4)) {
                return false;
            }
            Log.i("Ads", "Error initializing webview.", e);
            return false;
        }
    }

    protected final void zzb(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null;
        if (objUnwrap instanceof zzoz) {
            ((zzoz) objUnwrap).zzkl();
        }
        super.zzb(this.zzvw.zzacw, false);
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected final void zzb(boolean z) {
        String str;
        super.zzb(z);
        if (this.zzwl) {
            if (((Boolean) zzkb.zzik().zzd(zznk.zzbcb)).booleanValue()) {
                zzdt();
            }
        }
        if (zzcp()) {
            if (this.zzaab == null && this.zzaaa == null) {
                return;
            }
            zzaqw zzaqwVar = this.zzaab;
            String str2 = null;
            if (zzaqwVar == null) {
                zzaqwVar = this.zzaaa;
                if (zzaqwVar != null) {
                    str2 = "javascript";
                    str = str2;
                } else {
                    zzaqwVar = null;
                    str = null;
                }
            } else {
                str = str2;
            }
            if (zzaqwVar.getWebView() == null || !zzbv.zzfa().zzi(this.zzvw.zzrt)) {
                return;
            }
            int i = this.zzvw.zzacr.zzcve;
            int i2 = this.zzvw.zzacr.zzcvf;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            this.zzwb = zzbv.zzfa().zza(sb.toString(), zzaqwVar.getWebView(), "", "javascript", str);
            if (this.zzwb != null) {
                zzbv.zzfa().zzm(this.zzwb);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected final void zzbq() {
        zzb(false);
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected final void zzc(int i, boolean z) {
        zzdx();
        super.zzc(i, z);
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.ads.zzwz
    public final void zzcd() {
        zzlr zzlrVarZzio;
        zzajh zzajhVar = this.zzvw.zzacw;
        if (zzajhVar.zzbtx == null) {
            super.zzcd();
            return;
        }
        try {
            zzxq zzxqVar = zzajhVar.zzbtx;
            zzlo videoController = null;
            zzxz zzxzVarZzmo = zzxqVar.zzmo();
            if (zzxzVarZzmo != null) {
                videoController = zzxzVarZzmo.getVideoController();
            } else {
                zzyc zzycVarZzmp = zzxqVar.zzmp();
                if (zzycVarZzmp != null) {
                    videoController = zzycVarZzmp.getVideoController();
                } else {
                    zzqs zzqsVarZzmt = zzxqVar.zzmt();
                    if (zzqsVarZzmt != null) {
                        videoController = zzqsVarZzmt.getVideoController();
                    }
                }
            }
            if (videoController == null || (zzlrVarZzio = videoController.zzio()) == null) {
                return;
            }
            zzlrVarZzio.onVideoEnd();
        } catch (RemoteException e) {
            zzakb.zzd("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.ads.zzwz
    public final void zzce() {
        if (this.zzvw.zzacw == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzvw.zzacw.zzbty)) {
            super.zzce();
        } else {
            zzbs();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.ads.zzwz
    public final void zzcj() {
        if (this.zzvw.zzacw == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzvw.zzacw.zzbty)) {
            super.zzcj();
        } else {
            zzbr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zzcr() {
        if (zzcp() && this.zzwb != null) {
            zzaqw zzaqwVar = this.zzaab;
            if (zzaqwVar == null && (zzaqwVar = this.zzaaa) == null) {
                zzaqwVar = null;
            }
            if (zzaqwVar != null) {
                zzaqwVar.zza("onSdkImpression", new HashMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zzcs() {
        super.zzby();
        zzaqw zzaqwVar = this.zzaab;
        if (zzaqwVar != null) {
            zzaqwVar.destroy();
            this.zzaab = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zzct() {
        zzaqw zzaqwVar = this.zzaaa;
        if (zzaqwVar != null) {
            zzaqwVar.destroy();
            this.zzaaa = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final boolean zzcu() {
        if (zzcw() != null) {
            return zzcw().zzbta;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final boolean zzcv() {
        if (zzcw() != null) {
            return zzcw().zzbtb;
        }
        return false;
    }

    public final void zzd(List<String> list) {
        Preconditions.checkMainThread("setNativeTemplates must be called on the main UI thread.");
        this.zzvw.zzads = list;
    }

    final void zzdq() throws zzarg {
        synchronized (this.mLock) {
            zzakb.m358v("Initializing webview native ads utills");
            this.zzaad = new zzacq(this.zzvw.zzrt, this, this.zzaae, this.zzvw.zzacq, this.zzvw.zzacr);
        }
    }

    public final zzacm zzdr() {
        zzacm zzacmVar;
        synchronized (this.mLock) {
            zzacmVar = this.zzaad;
        }
        return zzacmVar;
    }

    protected final Future<zzpb> zzds() {
        return this.zzzz;
    }

    public final void zzdt() {
        if (this.zzvw.zzacw == null || this.zzaaa == null) {
            this.zzwl = true;
            zzakb.zzdk("Request to enable ActiveView before adState is available.");
        } else {
            zzbv.zzeo().zzqd().zza(this.zzvw.zzacv, this.zzvw.zzacw, this.zzaaa.getView(), this.zzaaa);
            this.zzwl = false;
        }
    }

    public final void zzdu() {
        this.zzwl = false;
        if (this.zzvw.zzacw == null || this.zzaaa == null) {
            zzakb.zzdk("Request to enable ActiveView before adState is available.");
        } else {
            zzbv.zzeo().zzqd().zzh(this.zzvw.zzacw);
        }
    }

    public final SimpleArrayMap<String, zzrf> zzdv() {
        Preconditions.checkMainThread("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzvw.zzadi;
    }

    public final void zzdw() {
        zzaqw zzaqwVar = this.zzaaa;
        if (zzaqwVar == null || zzaqwVar.zztm() == null || this.zzvw.zzadj == null || this.zzvw.zzadj.zzbjr == null) {
            return;
        }
        this.zzaaa.zztm().zzb(this.zzvw.zzadj.zzbjr);
    }

    public final void zzf(zzaqw zzaqwVar) {
        this.zzaaa = zzaqwVar;
    }

    public final void zzg(zzaqw zzaqwVar) {
        this.zzaab = zzaqwVar;
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected final void zzi(int i) {
        zzc(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zzi(View view) {
        if (this.zzwb != null) {
            zzbv.zzfa().zza(this.zzwb, view);
        }
    }

    public final void zzj(int i) {
        Preconditions.checkMainThread("setMaxNumberOfAds must be called on the main UI thread.");
        this.zzaac = i;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final zzrc zzr(String str) {
        Preconditions.checkMainThread("getOnCustomClickListener must be called on the main UI thread.");
        if (this.zzvw.zzadh == null) {
            return null;
        }
        return this.zzvw.zzadh.get(str);
    }
}
