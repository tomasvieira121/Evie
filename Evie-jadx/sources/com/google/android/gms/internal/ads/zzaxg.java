package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxg extends zzbbo<zzaxg, zza> implements zzbcw {
    private static volatile zzbdf<zzaxg> zzakh;
    private static final zzaxg zzdkr = new zzaxg();
    private int zzdkp;
    private int zzdkq;

    public static final class zza extends zzbbo.zza<zzaxg, zza> implements zzbcw {
        private zza() {
            super(zzaxg.zzdkr);
        }

        /* synthetic */ zza(zzaxh zzaxhVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzaxg>) zzaxg.class, zzdkr);
    }

    private zzaxg() {
    }

    public static zzaxg zzyu() {
        return zzdkr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzaxg>] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r2;
        zzaxh zzaxhVar = null;
        switch (zzaxh.zzakf[i - 1]) {
            case 1:
                return new zzaxg();
            case 2:
                return new zza(zzaxhVar);
            case 3:
                return zza(zzdkr, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzdkp", "zzdkq"});
            case 4:
                return zzdkr;
            case 5:
                zzbdf<zzaxg> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzaxg.class) {
                        zzbdf<zzaxg> zzbdfVar2 = zzakh;
                        r2 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdkr);
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

    public final zzaxa zzys() {
        zzaxa zzaxaVarZzau = zzaxa.zzau(this.zzdkp);
        return zzaxaVarZzau == null ? zzaxa.UNRECOGNIZED : zzaxaVarZzau;
    }

    public final int zzyt() {
        return this.zzdkq;
    }
}
