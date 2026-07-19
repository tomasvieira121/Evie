package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzavq extends zzbbo<zzavq, zza> implements zzbcw {
    private static volatile zzbdf<zzavq> zzakh;
    private static final zzavq zzdin = new zzavq();
    private zzavu zzdil;
    private zzaxe zzdim;

    public static final class zza extends zzbbo.zza<zzavq, zza> implements zzbcw {
        private zza() {
            super(zzavq.zzdin);
        }

        /* synthetic */ zza(zzavr zzavrVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzavq>) zzavq.class, zzdin);
    }

    private zzavq() {
    }

    public static zzavq zzj(zzbah zzbahVar) throws zzbbu {
        return (zzavq) zzbbo.zza(zzdin, zzbahVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzavq>] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r2;
        zzavr zzavrVar = null;
        switch (zzavr.zzakf[i - 1]) {
            case 1:
                return new zzavq();
            case 2:
                return new zza(zzavrVar);
            case 3:
                return zza(zzdin, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzdil", "zzdim"});
            case 4:
                return zzdin;
            case 5:
                zzbdf<zzavq> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzavq.class) {
                        zzbdf<zzavq> zzbdfVar2 = zzakh;
                        r2 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdin);
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

    public final zzavu zzwr() {
        zzavu zzavuVar = this.zzdil;
        return zzavuVar == null ? zzavu.zzwz() : zzavuVar;
    }

    public final zzaxe zzws() {
        zzaxe zzaxeVar = this.zzdim;
        return zzaxeVar == null ? zzaxe.zzyq() : zzaxeVar;
    }
}
