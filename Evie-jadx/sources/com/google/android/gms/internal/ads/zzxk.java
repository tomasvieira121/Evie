package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzxk implements zzww {
    private final Context mContext;
    private final long mStartTime;
    private final boolean zzael;
    private final zzwy zzbtj;
    private final boolean zzbtn;
    private final boolean zzbto;
    private final zzaef zzbuc;
    private final long zzbud;
    private final String zzbuh;
    private zzxb zzbum;
    private final zznx zzvr;
    private final zzxn zzwh;
    private final Object mLock = new Object();
    private boolean zzbuf = false;
    private List<zzxe> zzbui = new ArrayList();

    public zzxk(Context context, zzaef zzaefVar, zzxn zzxnVar, zzwy zzwyVar, boolean z, boolean z2, String str, long j, long j2, zznx zznxVar, boolean z3) {
        this.mContext = context;
        this.zzbuc = zzaefVar;
        this.zzwh = zzxnVar;
        this.zzbtj = zzwyVar;
        this.zzael = z;
        this.zzbtn = z2;
        this.zzbuh = str;
        this.mStartTime = j;
        this.zzbud = j2;
        this.zzvr = zznxVar;
        this.zzbto = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final void cancel() {
        synchronized (this.mLock) {
            this.zzbuf = true;
            if (this.zzbum != null) {
                this.zzbum.cancel();
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0167 */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0165, code lost:
    
        r0 = th;
     */
    @Override // com.google.android.gms.internal.ads.zzww
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzxe zzh(java.util.List<com.google.android.gms.internal.ads.zzwx> r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxk.zzh(java.util.List):com.google.android.gms.internal.ads.zzxe");
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final List<zzxe> zzme() {
        return this.zzbui;
    }
}
