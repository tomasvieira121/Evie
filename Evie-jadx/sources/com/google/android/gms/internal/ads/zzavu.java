package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzavu extends zzbbo<zzavu, zza> implements zzbcw {
    private static volatile zzbdf<zzavu> zzakh;
    private static final zzavu zzdis = new zzavu();
    private zzavw zzdio;
    private int zzdir;

    public static final class zza extends zzbbo.zza<zzavu, zza> implements zzbcw {
        private zza() {
            super(zzavu.zzdis);
        }

        /* synthetic */ zza(zzavv zzavvVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzavu>) zzavu.class, zzdis);
    }

    private zzavu() {
    }

    public static zzavu zzn(zzbah zzbahVar) throws zzbbu {
        return (zzavu) zzbbo.zza(zzdis, zzbahVar);
    }

    public static zzavu zzwz() {
        return zzdis;
    }

    public final int getKeySize() {
        return this.zzdir;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzavu>] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r2;
        zzavv zzavvVar = null;
        switch (zzavv.zzakf[i - 1]) {
            case 1:
                return new zzavu();
            case 2:
                return new zza(zzavvVar);
            case 3:
                return zza(zzdis, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzdio", "zzdir"});
            case 4:
                return zzdis;
            case 5:
                zzbdf<zzavu> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzavu.class) {
                        zzbdf<zzavu> zzbdfVar2 = zzakh;
                        r2 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdis);
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

    public final zzavw zzwu() {
        zzavw zzavwVar = this.zzdio;
        return zzavwVar == null ? zzavw.zzxc() : zzavwVar;
    }
}
