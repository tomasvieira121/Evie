package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzabr extends zzabh {
    private final zzaqw zzbnd;
    private zzwy zzbtj;
    private zzww zzbzq;
    protected zzxe zzbzr;
    private boolean zzbzs;
    private final zznx zzvr;
    private zzxn zzwh;

    zzabr(Context context, zzaji zzajiVar, zzxn zzxnVar, zzabm zzabmVar, zznx zznxVar, zzaqw zzaqwVar) {
        super(context, zzajiVar, zzabmVar);
        this.zzwh = zzxnVar;
        this.zzbtj = zzajiVar.zzcod;
        this.zzvr = zznxVar;
        this.zzbnd = zzaqwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabh, com.google.android.gms.internal.ads.zzajx
    public final void onStop() {
        synchronized (this.zzbzh) {
            super.onStop();
            if (this.zzbzq != null) {
                this.zzbzq.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    protected final zzajh zzaa(int i) {
        zzwy zzwyVar;
        zzael zzaelVar;
        String str;
        boolean z;
        long j;
        String strSubstring;
        Iterator<zzxe> it;
        int i2;
        zzaef zzaefVar = this.zzbze.zzcgs;
        zzjj zzjjVar = zzaefVar.zzccv;
        zzaqw zzaqwVar = this.zzbnd;
        List<String> list = this.zzbzf.zzbsn;
        List<String> list2 = this.zzbzf.zzbso;
        List<String> list3 = this.zzbzf.zzces;
        int i3 = this.zzbzf.orientation;
        long j2 = this.zzbzf.zzbsu;
        String str2 = zzaefVar.zzccy;
        boolean z2 = this.zzbzf.zzceq;
        zzxe zzxeVar = this.zzbzr;
        zzwx zzwxVar = zzxeVar != null ? zzxeVar.zzbtw : null;
        zzxe zzxeVar2 = this.zzbzr;
        zzxq zzxqVar = zzxeVar2 != null ? zzxeVar2.zzbtx : null;
        zzxe zzxeVar3 = this.zzbzr;
        String name = zzxeVar3 != null ? zzxeVar3.zzbty : AdMobAdapter.class.getName();
        zzwy zzwyVar2 = this.zzbtj;
        zzxe zzxeVar4 = this.zzbzr;
        zzxa zzxaVar = zzxeVar4 != null ? zzxeVar4.zzbtz : null;
        zzwx zzwxVar2 = zzwxVar;
        zzxq zzxqVar2 = zzxqVar;
        long j3 = this.zzbzf.zzcer;
        zzjn zzjnVar = this.zzbze.zzacv;
        long j4 = this.zzbzf.zzcep;
        long j5 = this.zzbze.zzcoh;
        long j6 = this.zzbzf.zzceu;
        String str3 = this.zzbzf.zzcev;
        JSONObject jSONObject = this.zzbze.zzcob;
        zzaig zzaigVar = this.zzbzf.zzcfe;
        List<String> list4 = this.zzbzf.zzcff;
        List<String> list5 = this.zzbzf.zzcfg;
        zzwy zzwyVar3 = this.zzbtj;
        boolean z3 = zzwyVar3 != null ? zzwyVar3.zzbsz : false;
        zzael zzaelVar2 = this.zzbzf.zzcfi;
        zzww zzwwVar = this.zzbzq;
        if (zzwwVar != null) {
            List<zzxe> listZzme = zzwwVar.zzme();
            if (listZzme == null) {
                zzwyVar = zzwyVar2;
                zzaelVar = zzaelVar2;
                strSubstring = "".toString();
                str = str2;
                z = z2;
                j = j6;
            } else {
                Iterator<zzxe> it2 = listZzme.iterator();
                String string = "";
                while (it2.hasNext()) {
                    zzael zzaelVar3 = zzaelVar2;
                    zzxe next = it2.next();
                    if (next != null) {
                        it = it2;
                        if (next.zzbtw != null && !TextUtils.isEmpty(next.zzbtw.zzbru)) {
                            String strValueOf = String.valueOf(string);
                            String str4 = next.zzbtw.zzbru;
                            switch (next.zzbtv) {
                                case -1:
                                    i2 = 4;
                                    break;
                                case 0:
                                    i2 = 0;
                                    break;
                                case 1:
                                    i2 = 1;
                                    break;
                                case 2:
                                default:
                                    i2 = 6;
                                    break;
                                case 3:
                                    i2 = 2;
                                    break;
                                case 4:
                                    i2 = 3;
                                    break;
                                case 5:
                                    i2 = 5;
                                    break;
                            }
                            long j7 = next.zzbub;
                            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 33);
                            sb.append(str4);
                            sb.append(".");
                            sb.append(i2);
                            sb.append(".");
                            sb.append(j7);
                            String string2 = sb.toString();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(string2).length());
                            sb2.append(strValueOf);
                            sb2.append(string2);
                            sb2.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                            string = sb2.toString();
                        }
                        it2 = it;
                        zzaelVar2 = zzaelVar3;
                        j6 = j6;
                        zzwyVar2 = zzwyVar2;
                        z2 = z2;
                        str2 = str2;
                    } else {
                        it = it2;
                    }
                    it2 = it;
                    zzaelVar2 = zzaelVar3;
                    j6 = j6;
                    zzwyVar2 = zzwyVar2;
                    z2 = z2;
                    str2 = str2;
                }
                zzwyVar = zzwyVar2;
                zzaelVar = zzaelVar2;
                str = str2;
                z = z2;
                j = j6;
                strSubstring = string.substring(0, Math.max(0, string.length() - 1));
            }
        } else {
            zzwyVar = zzwyVar2;
            zzaelVar = zzaelVar2;
            str = str2;
            z = z2;
            j = j6;
            strSubstring = null;
        }
        return new zzajh(zzjjVar, zzaqwVar, list, i, list2, list3, i3, j2, str, z, zzwxVar2, zzxqVar2, name, zzwyVar, zzxaVar, j3, zzjnVar, j4, j5, j, str3, jSONObject, null, zzaigVar, list4, list5, z3, zzaelVar, strSubstring, this.zzbzf.zzbsr, this.zzbzf.zzcfl, this.zzbze.zzcoq, this.zzbzf.zzzl, this.zzbze.zzcor, this.zzbzf.zzcfp, this.zzbzf.zzbsp, this.zzbzf.zzzm, this.zzbzf.zzcfq);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzabh
    protected final void zze(long j) throws zzabk {
        Bundle bundle;
        synchronized (this.zzbzh) {
            this.zzbzq = this.zzbtj.zzbsx != -1 ? new zzxh(this.mContext, this.zzbze.zzcgs, this.zzwh, this.zzbtj, this.zzbzf.zzare, this.zzbzf.zzarg, this.zzbzf.zzcfj, j, ((Long) zzkb.zzik().zzd(zznk.zzbao)).longValue(), 2, this.zzbze.zzcor) : new zzxk(this.mContext, this.zzbze.zzcgs, this.zzwh, this.zzbtj, this.zzbzf.zzare, this.zzbzf.zzarg, this.zzbzf.zzcfj, j, ((Long) zzkb.zzik().zzd(zznk.zzbao)).longValue(), this.zzvr, this.zzbze.zzcor);
        }
        ArrayList arrayList = new ArrayList(this.zzbtj.zzbsm);
        Bundle bundle2 = this.zzbze.zzcgs.zzccv.zzaqg;
        if ((bundle2 == null || (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) == null) ? false : bundle.getBoolean("_skipMediation")) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (!((zzwx) listIterator.next()).zzbrt.contains("com.google.ads.mediation.admob.AdMobAdapter")) {
                    listIterator.remove();
                }
            }
        }
        this.zzbzr = this.zzbzq.zzh(arrayList);
        switch (this.zzbzr.zzbtv) {
            case 0:
                if (this.zzbzr.zzbtw == null || this.zzbzr.zzbtw.zzbsf == null) {
                    return;
                }
                CountDownLatch countDownLatch = new CountDownLatch(1);
                zzakk.zzcrm.post(new zzabs(this, countDownLatch));
                try {
                    countDownLatch.await(10L, TimeUnit.SECONDS);
                    synchronized (this.zzbzh) {
                        if (!this.zzbzs) {
                            throw new zzabk("View could not be prepared", 0);
                        }
                        if (this.zzbnd.isDestroyed()) {
                            throw new zzabk("Assets not loaded, web view is destroyed", 0);
                        }
                    }
                    return;
                } catch (InterruptedException e) {
                    String strValueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 38);
                    sb.append("Interrupted while waiting for latch : ");
                    sb.append(strValueOf);
                    throw new zzabk(sb.toString(), 0);
                }
            case 1:
                throw new zzabk("No fill from any mediation ad networks.", 3);
            default:
                int i = this.zzbzr.zzbtv;
                StringBuilder sb2 = new StringBuilder(40);
                sb2.append("Unexpected mediation result: ");
                sb2.append(i);
                throw new zzabk(sb2.toString(), 0);
        }
    }
}
