package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
@zzadh
final class zzud {
    private static final zzua zzbpe = zzua.zzlk();
    private static final float zzbpf = ((Float) zzkb.zzik().zzd(zznk.zzazk)).floatValue();
    private static final long zzbpg = ((Long) zzkb.zzik().zzd(zznk.zzazi)).longValue();
    private static final float zzbph = ((Float) zzkb.zzik().zzd(zznk.zzazl)).floatValue();
    private static final long zzbpi = ((Long) zzkb.zzik().zzd(zznk.zzazj)).longValue();

    private static int zzb(long j, int i) {
        return (int) ((j >>> ((i % 16) * 4)) & 15);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003b  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    /* JADX WARN: Code duplicated, block: B:9:0x0035  */
    static boolean zzlv() {
        float f;
        int iZzb;
        float f2;
        int iZzlr = zzbpe.zzlr();
        int iZzls = zzbpe.zzls();
        int iZzlq = zzbpe.zzlq() + zzbpe.zzlp();
        int iZzb2 = Integer.MAX_VALUE;
        if (iZzlr < 16) {
            long j = zzbpi;
            if (j != 0) {
                iZzb = zzb(j, iZzlr);
            } else {
                f = zzbph;
                if (f != 0.0f) {
                    iZzb = ((int) (f * iZzlr)) + 1;
                } else {
                    iZzb = Integer.MAX_VALUE;
                }
            }
        } else {
            f = zzbph;
            if (f != 0.0f) {
                iZzb = ((int) (f * iZzlr)) + 1;
            } else {
                iZzb = Integer.MAX_VALUE;
            }
        }
        if (iZzls > iZzb) {
            return false;
        }
        if (iZzlr < 16) {
            long j2 = zzbpg;
            if (j2 != 0) {
                iZzb2 = zzb(j2, iZzlr);
            } else {
                f2 = zzbpf;
                if (f2 != 0.0f) {
                    iZzb2 = (int) (f2 * iZzlr);
                }
            }
        } else {
            f2 = zzbpf;
            if (f2 != 0.0f) {
                iZzb2 = (int) (f2 * iZzlr);
            }
        }
        return iZzlq <= iZzb2;
    }
}
