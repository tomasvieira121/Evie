package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzawo extends zzbbo<zzawo, zza> implements zzbcw {
    private static volatile zzbdf<zzawo> zzakh;
    private static final zzawo zzdjk = new zzawo();
    private zzawq zzdjj;

    public static final class zza extends zzbbo.zza<zzawo, zza> implements zzbcw {
        private zza() {
            super(zzawo.zzdjk);
        }

        /* synthetic */ zza(zzawp zzawpVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzawo>) zzawo.class, zzdjk);
    }

    private zzawo() {
    }

    public static zzawo zzw(zzbah zzbahVar) throws zzbbu {
        return (zzawo) zzbbo.zza(zzdjk, zzbahVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzawo>] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r1;
        zzawp zzawpVar = null;
        switch (zzawp.zzakf[i - 1]) {
            case 1:
                return new zzawo();
            case 2:
                return new zza(zzawpVar);
            case 3:
                return zza(zzdjk, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\t", new Object[]{"zzdjj"});
            case 4:
                return zzdjk;
            case 5:
                zzbdf<zzawo> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzawo.class) {
                        zzbdf<zzawo> zzbdfVar2 = zzakh;
                        r1 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdjk);
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

    public final zzawq zzxs() {
        zzawq zzawqVar = this.zzdjj;
        return zzawqVar == null ? zzawq.zzxx() : zzawqVar;
    }
}
