package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzawm extends zzbbo<zzawm, zza> implements zzbcw {
    private static volatile zzbdf<zzawm> zzakh;
    private static final zzawm zzdji = new zzawm();
    private zzaxn zzdjh;

    public static final class zza extends zzbbo.zza<zzawm, zza> implements zzbcw {
        private zza() {
            super(zzawm.zzdji);
        }

        /* synthetic */ zza(zzawn zzawnVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzawm>) zzawm.class, zzdji);
    }

    private zzawm() {
    }

    public static zzawm zzxq() {
        return zzdji;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzawm>] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r1;
        zzawn zzawnVar = null;
        switch (zzawn.zzakf[i - 1]) {
            case 1:
                return new zzawm();
            case 2:
                return new zza(zzawnVar);
            case 3:
                return zza(zzdji, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0003\u0000\u0000\u0000\u0002\t", new Object[]{"zzdjh"});
            case 4:
                return zzdji;
            case 5:
                zzbdf<zzawm> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzawm.class) {
                        zzbdf<zzawm> zzbdfVar2 = zzakh;
                        r1 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdji);
                            zzakh = zzbVar;
                            r1 = zzbVar;
                        }
                        break;
                    }
                    obj3 = r1;
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

    public final zzaxn zzxp() {
        zzaxn zzaxnVar = this.zzdjh;
        return zzaxnVar == null ? zzaxn.zzzc() : zzaxnVar;
    }
}
