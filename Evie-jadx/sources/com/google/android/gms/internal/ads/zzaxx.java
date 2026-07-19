package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxx extends zzbbo<zzaxx, zza> implements zzbcw {
    private static volatile zzbdf<zzaxx> zzakh;
    private static final zzaxx zzdme = new zzaxx();
    private String zzdmd = "";

    public static final class zza extends zzbbo.zza<zzaxx, zza> implements zzbcw {
        private zza() {
            super(zzaxx.zzdme);
        }

        /* synthetic */ zza(zzaxy zzaxyVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzaxx>) zzaxx.class, zzdme);
    }

    private zzaxx() {
    }

    public static zzaxx zzaac() {
        return zzdme;
    }

    public static zzaxx zzak(zzbah zzbahVar) throws zzbbu {
        return (zzaxx) zzbbo.zza(zzdme, zzbahVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzaxx>] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r1;
        zzaxy zzaxyVar = null;
        switch (zzaxy.zzakf[i - 1]) {
            case 1:
                return new zzaxx();
            case 2:
                return new zza(zzaxyVar);
            case 3:
                return zza(zzdme, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzdmd"});
            case 4:
                return zzdme;
            case 5:
                zzbdf<zzaxx> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzaxx.class) {
                        zzbdf<zzaxx> zzbdfVar2 = zzakh;
                        r1 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdme);
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

    public final String zzaab() {
        return this.zzdmd;
    }
}
