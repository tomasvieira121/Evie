package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzawq extends zzbbo<zzawq, zza> implements zzbcw {
    private static volatile zzbdf<zzawq> zzakh;
    private static final zzawq zzdjo = new zzawq();
    private zzaww zzdjl;
    private zzawm zzdjm;
    private int zzdjn;

    public static final class zza extends zzbbo.zza<zzawq, zza> implements zzbcw {
        private zza() {
            super(zzawq.zzdjo);
        }

        /* synthetic */ zza(zzawr zzawrVar) {
            this();
        }
    }

    static {
        zzbbo.zza((Class<zzawq>) zzawq.class, zzdjo);
    }

    private zzawq() {
    }

    public static zzawq zzxx() {
        return zzdjo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzbbo$zzb, com.google.android.gms.internal.ads.zzbdf<com.google.android.gms.internal.ads.zzawq>] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    @Override // com.google.android.gms.internal.ads.zzbbo
    protected final Object zza(int i, Object obj, Object obj2) {
        ?? r2;
        zzawr zzawrVar = null;
        switch (zzawr.zzakf[i - 1]) {
            case 1:
                return new zzawq();
            case 2:
                return new zza(zzawrVar);
            case 3:
                return zza(zzdjo, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzdjl", "zzdjm", "zzdjn"});
            case 4:
                return zzdjo;
            case 5:
                zzbdf<zzawq> zzbdfVar = zzakh;
                Object obj3 = zzbdfVar;
                if (zzbdfVar == null) {
                    synchronized (zzawq.class) {
                        zzbdf<zzawq> zzbdfVar2 = zzakh;
                        r2 = zzbdfVar2;
                        if (zzbdfVar2 == null) {
                            ?? zzbVar = new zzbbo.zzb(zzdjo);
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

    public final zzaww zzxu() {
        zzaww zzawwVar = this.zzdjl;
        return zzawwVar == null ? zzaww.zzyk() : zzawwVar;
    }

    public final zzawm zzxv() {
        zzawm zzawmVar = this.zzdjm;
        return zzawmVar == null ? zzawm.zzxq() : zzawmVar;
    }

    public final zzawk zzxw() {
        zzawk zzawkVarZzaq = zzawk.zzaq(this.zzdjn);
        return zzawkVarZzaq == null ? zzawk.UNRECOGNIZED : zzawkVarZzaq;
    }
}
