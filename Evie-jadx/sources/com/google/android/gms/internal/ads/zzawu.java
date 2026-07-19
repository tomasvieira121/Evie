package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzawu extends zzbbo<zzawu, zza> implements zzbcw {
    private static volatile zzbdf<zzawu> zzakh;
    private static final zzawu zzdjt = new zzawu();
    private int zzdih;
    private zzawq zzdjj;
    private zzbah zzdjr = zzbah.zzdpq;
    private zzbah zzdjs = zzbah.zzdpq;

    public static final class zza extends zzbbo.zza<zzawu, zza> implements zzbcw {
        private zza() {
            super(zzawu.zzdjt);
        }

        /* synthetic */ zza(zzawv zzawvVar) {
            this();
        }

        public final zza zzac(zzbah zzbahVar) {
            zzadh();
            ((zzawu) this.zzdtx).zzz(zzbahVar);
            return this;
        }

        public final zza zzad(zzbah zzbahVar) {
            zzadh();
            ((zzawu) this.zzdtx).zzaa(zzbahVar);
            return this;
        }

        public final zza zzas(int i) {
            zzadh();
            ((zzawu) this.zzdtx).setVersion(0);
            return this;
        }

        public final zza zzc(zzawq zzawqVar) {
            zzadh();
            ((zzawu) this.zzdtx).zzb(zzawqVar);
            return this;
        }
    }

    static {
        zzbbo.zza((Class<zzawu>) zzawu.class, zzdjt);
    }

    private zzawu() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzdih = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(zzbah zzbahVar) {
        if (zzbahVar == null) {
            throw new NullPointerException();
        }
        this.zzdjs = zzbahVar;
    }

    public static zzawu zzab(zzbah zzbahVar) throws zzbbu {
        return (zzawu) zzbbo.zza(zzdjt, zzbahVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzawq zzawqVar) {
        if (zzawqVar == null) {
            throw new NullPointerException();
        }
        this.zzdjj = zzawqVar;
    }

    public static zza zzye() {
        return (zza) ((zzbbo.zza) zzdjt.zza(zzbbo.zze.zzdue, (Object) null, (Object) null));
    }

    public static zzawu zzyf() {
        return zzdjt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzz(zzbah zzbahVar) {
        if (zzbahVar == null) {
            throw new NullPointerException();
        }
        this.zzdjr = zzbahVar;
    }

    public final int getVersion() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzawu>] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r2;
        zzawv zzawvVar = null;
        switch (zzawv.zzakf[i - 1]) {
            case 1:
                return new zzawu();
            case 2:
                return new zza(zzawvVar);
            case 3:
                return zza(zzdjt, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzdih", "zzdjj", "zzdjr", "zzdjs"});
            case 4:
                return zzdjt;
            case 5:
                zzbdf<zzawu> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzawu.class) {
                        zzbdf<zzawu> zzbdfVar2 = zzakh;
                        r2 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdjt);
                            zzakh = zzbVar;
                            r2 = zzbVar;
                        }
                        break;
                    }
                    obj3 = r2;
                }
                return obj3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzawq zzxs() {
        zzawq zzawqVar = this.zzdjj;
        return zzawqVar == null ? zzawq.zzxx() : zzawqVar;
    }

    public final zzbah zzyc() {
        return this.zzdjr;
    }

    public final zzbah zzyd() {
        return this.zzdjs;
    }
}
