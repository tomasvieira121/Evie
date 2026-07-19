package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzxh implements zzww {
    private final Context mContext;
    private final long mStartTime;
    private final boolean zzael;
    private final zzwy zzbtj;
    private final boolean zzbtn;
    private final boolean zzbto;
    private final zzaef zzbuc;
    private final long zzbud;
    private final String zzbuh;
    private final zzxn zzwh;
    private final Object mLock = new Object();
    private boolean zzbuf = false;
    private final Map<zzanz<zzxe>, zzxb> zzbug = new HashMap();
    private List<zzxe> zzbui = new ArrayList();
    private final int zzbue = 2;

    public zzxh(Context context, zzaef zzaefVar, zzxn zzxnVar, zzwy zzwyVar, boolean z, boolean z2, String str, long j, long j2, int i, boolean z3) {
        this.mContext = context;
        this.zzbuc = zzaefVar;
        this.zzwh = zzxnVar;
        this.zzbtj = zzwyVar;
        this.zzael = z;
        this.zzbtn = z2;
        this.zzbuh = str;
        this.mStartTime = j;
        this.zzbud = j2;
        this.zzbto = z3;
    }

    private final void zza(zzanz<zzxe> zzanzVar) {
        zzakk.zzcrm.post(new zzxj(this, zzanzVar));
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final zzxe zzi(List<zzanz<zzxe>> list) {
        synchronized (this.mLock) {
            if (this.zzbuf) {
                return new zzxe(-1);
            }
            for (zzanz<zzxe> zzanzVar : list) {
                try {
                    zzxe zzxeVar = zzanzVar.get();
                    this.zzbui.add(zzxeVar);
                    if (zzxeVar != null && zzxeVar.zzbtv == 0) {
                        zza(zzanzVar);
                        return zzxeVar;
                    }
                } catch (InterruptedException | ExecutionException e) {
                    zzakb.zzc("Exception while processing an adapter; continuing with other adapters", e);
                }
            }
            zza((zzanz<zzxe>) null);
            return new zzxe(1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0050 A[Catch: all -> 0x0074, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0076, TryCatch #2 {RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x0076, blocks: (B:19:0x0043, B:21:0x0049, B:22:0x004d, B:24:0x0057, B:26:0x005e, B:28:0x0062, B:30:0x0066, B:32:0x006c, B:23:0x0050), top: B:50:0x0043, outer: #0 }] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final zzxe zzj(List<zzanz<zzxe>> list) throws RemoteException {
        zzxe zzxeVar;
        zzxe zzxeVar2;
        zzxw zzxwVar;
        synchronized (this.mLock) {
            if (this.zzbuf) {
                return new zzxe(-1);
            }
            long j = this.zzbtj.zzbsy != -1 ? this.zzbtj.zzbsy : 10000L;
            zzanz<zzxe> zzanzVar = null;
            long jMax = j;
            zzxe zzxeVar3 = null;
            int iZzmm = -1;
            for (zzanz<zzxe> zzanzVar2 : list) {
                long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis();
                if (jMax == 0) {
                    try {
                        try {
                            if (zzanzVar2.isDone()) {
                                zzxeVar = zzanzVar2.get();
                            } else {
                                zzxeVar = zzanzVar2.get(jMax, TimeUnit.MILLISECONDS);
                            }
                            zzxeVar2 = zzxeVar;
                            this.zzbui.add(zzxeVar2);
                            if (zzxeVar2 == null && zzxeVar2.zzbtv == 0 && (zzxwVar = zzxeVar2.zzbua) != null && zzxwVar.zzmm() > iZzmm) {
                                iZzmm = zzxwVar.zzmm();
                                zzanzVar = zzanzVar2;
                                zzxeVar3 = zzxeVar2;
                            }
                        } catch (RemoteException | InterruptedException | ExecutionException | TimeoutException e) {
                            zzakb.zzc("Exception while processing an adapter; continuing with other adapters", e);
                        }
                    } catch (Throwable th) {
                        Math.max(jMax - (com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis() - jCurrentTimeMillis), 0L);
                        throw th;
                    }
                } else {
                    zzxeVar = zzanzVar2.get(jMax, TimeUnit.MILLISECONDS);
                    zzxeVar2 = zzxeVar;
                    this.zzbui.add(zzxeVar2);
                    if (zzxeVar2 == null) {
                    }
                }
                jMax = Math.max(jMax - (com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis() - jCurrentTimeMillis), 0L);
            }
            zza(zzanzVar);
            return zzxeVar3 == null ? new zzxe(1) : zzxeVar3;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzww
    public final void cancel() {
        synchronized (this.mLock) {
            this.zzbuf = true;
            Iterator<zzxb> it = this.zzbug.values().iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final zzxe zzh(List<zzwx> list) {
        zzakb.zzck("Starting mediation.");
        ArrayList arrayList = new ArrayList();
        zzjn zzjnVar = this.zzbuc.zzacv;
        int[] iArr = new int[2];
        if (zzjnVar.zzard != null) {
            com.google.android.gms.ads.internal.zzbv.zzfd();
            if (zzxg.zza(this.zzbuh, iArr)) {
                int i = iArr[0];
                int i2 = iArr[1];
                for (zzjn zzjnVar2 : zzjnVar.zzard) {
                    if (i == zzjnVar2.width && i2 == zzjnVar2.height) {
                        zzjnVar = zzjnVar2;
                        break;
                    }
                }
            }
        }
        Iterator<zzwx> it = list.iterator();
        while (it.hasNext()) {
            zzwx next = it.next();
            String strValueOf = String.valueOf(next.zzbrs);
            zzakb.zzdj(strValueOf.length() != 0 ? "Trying mediation network: ".concat(strValueOf) : new String("Trying mediation network: "));
            for (Iterator<String> it2 = next.zzbrt.iterator(); it2.hasNext(); it2 = it2) {
                ArrayList arrayList2 = arrayList;
                zzxb zzxbVar = new zzxb(this.mContext, it2.next(), this.zzwh, this.zzbtj, next, this.zzbuc.zzccv, zzjnVar, this.zzbuc.zzacr, this.zzael, this.zzbtn, this.zzbuc.zzadj, this.zzbuc.zzads, this.zzbuc.zzcdk, this.zzbuc.zzcef, this.zzbto);
                zzanz<zzxe> zzanzVarZza = zzaki.zza(new zzxi(this, zzxbVar));
                this.zzbug.put(zzanzVarZza, zzxbVar);
                arrayList2.add(zzanzVarZza);
                it = it;
                arrayList = arrayList2;
            }
        }
        ArrayList arrayList3 = arrayList;
        return this.zzbue != 2 ? zzi(arrayList3) : zzj(arrayList3);
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final List<zzxe> zzme() {
        return this.zzbui;
    }
}
