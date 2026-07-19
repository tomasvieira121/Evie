package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzbda<T> implements zzbdm<T> {
    private final zzbcu zzdwl;
    private final boolean zzdwm;
    private final zzbee<?, ?> zzdwv;
    private final zzbbd<?> zzdww;

    private zzbda(zzbee<?, ?> zzbeeVar, zzbbd<?> zzbbdVar, zzbcu zzbcuVar) {
        this.zzdwv = zzbeeVar;
        this.zzdwm = zzbbdVar.zzh(zzbcuVar);
        this.zzdww = zzbbdVar;
        this.zzdwl = zzbcuVar;
    }

    static <T> zzbda<T> zza(zzbee<?, ?> zzbeeVar, zzbbd<?> zzbbdVar, zzbcu zzbcuVar) {
        return new zzbda<>(zzbeeVar, zzbbdVar, zzbcuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final boolean equals(T t, T t2) {
        if (!this.zzdwv.zzac(t).equals(this.zzdwv.zzac(t2))) {
            return false;
        }
        if (this.zzdwm) {
            return this.zzdww.zzm(t).equals(this.zzdww.zzm(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final int hashCode(T t) {
        int iHashCode = this.zzdwv.zzac(t).hashCode();
        return this.zzdwm ? (iHashCode * 53) + this.zzdww.zzm(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final T newInstance() {
        return (T) this.zzdwl.zzadf().zzadj();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zza(T t, zzbdl zzbdlVar, zzbbb zzbbbVar) throws IOException {
        boolean zZzacj;
        zzbee<?, ?> zzbeeVar = this.zzdwv;
        zzbbd<?> zzbbdVar = this.zzdww;
        Object objZzad = zzbeeVar.zzad(t);
        zzbbg<T> zzbbgVarZzn = zzbbdVar.zzn(t);
        while (zzbdlVar.zzaci() != Integer.MAX_VALUE) {
            try {
                int tag = zzbdlVar.getTag();
                if (tag != 11) {
                    if ((tag & 7) == 2) {
                        Object objZza = zzbbdVar.zza(zzbbbVar, this.zzdwl, tag >>> 3);
                        if (objZza != null) {
                            zzbbdVar.zza(zzbdlVar, objZza, zzbbbVar, zzbbgVarZzn);
                        } else {
                            zZzacj = zzbeeVar.zza(objZzad, zzbdlVar);
                        }
                    } else {
                        zZzacj = zzbdlVar.zzacj();
                    }
                    if (!zZzacj) {
                        zzbeeVar.zzf(t, objZzad);
                        return;
                    }
                } else {
                    int iZzabt = 0;
                    Object objZza2 = null;
                    zzbah zzbahVarZzabs = null;
                    while (zzbdlVar.zzaci() != Integer.MAX_VALUE) {
                        int tag2 = zzbdlVar.getTag();
                        if (tag2 == 16) {
                            iZzabt = zzbdlVar.zzabt();
                            objZza2 = zzbbdVar.zza(zzbbbVar, this.zzdwl, iZzabt);
                        } else if (tag2 == 26) {
                            if (objZza2 != null) {
                                zzbbdVar.zza(zzbdlVar, objZza2, zzbbbVar, zzbbgVarZzn);
                            } else {
                                zzbahVarZzabs = zzbdlVar.zzabs();
                            }
                        } else if (!zzbdlVar.zzacj()) {
                            break;
                        }
                    }
                    if (zzbdlVar.getTag() != 12) {
                        throw zzbbu.zzadp();
                    }
                    if (zzbahVarZzabs != null) {
                        if (objZza2 != null) {
                            zzbbdVar.zza(zzbahVarZzabs, objZza2, zzbbbVar, zzbbgVarZzn);
                        } else {
                            zzbeeVar.zza(objZzad, iZzabt, zzbahVarZzabs);
                        }
                    }
                }
                zZzacj = true;
                if (!zZzacj) {
                    zzbeeVar.zzf(t, objZzad);
                    return;
                }
            } catch (Throwable th) {
                zzbeeVar.zzf(t, objZzad);
                throw th;
            }
        }
        zzbeeVar.zzf(t, objZzad);
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zza(T t, zzbey zzbeyVar) throws IOException {
        int iZzhq;
        Object value;
        for (T t2 : this.zzdww.zzm(t)) {
            zzbbi zzbbiVar = (zzbbi) t2.getKey();
            if (zzbbiVar.zzacz() != zzbex.MESSAGE || zzbbiVar.zzada() || zzbbiVar.zzadb()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t2 instanceof zzbbz) {
                iZzhq = zzbbiVar.zzhq();
                value = ((zzbbz) t2).zzadv().zzaav();
            } else {
                iZzhq = zzbbiVar.zzhq();
                value = t2.getValue();
            }
            zzbeyVar.zza(iZzhq, value);
        }
        zzbee<?, ?> zzbeeVar = this.zzdwv;
        zzbeeVar.zzc(zzbeeVar.zzac(t), zzbeyVar);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0061  */
    /* JADX WARN: Code duplicated, block: B:48:0x005f A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x003e. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zza(T t, byte[] bArr, int i, int i2, zzbae zzbaeVar) throws IOException {
        zzbbo zzbboVar = (zzbbo) t;
        zzbef zzbefVarZzagd = zzbboVar.zzdtt;
        if (zzbefVarZzagd == zzbef.zzagc()) {
            zzbefVarZzagd = zzbef.zzagd();
            zzbboVar.zzdtt = zzbefVarZzagd;
        }
        zzbef zzbefVar = zzbefVarZzagd;
        while (i < i2) {
            int iZza = zzbad.zza(bArr, i, zzbaeVar);
            int i3 = zzbaeVar.zzdpl;
            if (i3 != 11) {
                i = (i3 & 7) == 2 ? zzbad.zza(i3, bArr, iZza, i2, zzbefVar, zzbaeVar) : zzbad.zza(i3, bArr, iZza, i2, zzbaeVar);
            } else {
                int i4 = 0;
                zzbah zzbahVar = null;
                while (iZza < i2) {
                    iZza = zzbad.zza(bArr, iZza, zzbaeVar);
                    int i5 = zzbaeVar.zzdpl;
                    int i6 = i5 & 7;
                    switch (i5 >>> 3) {
                        case 2:
                            if (i6 == 0) {
                                iZza = zzbad.zza(bArr, iZza, zzbaeVar);
                                i4 = zzbaeVar.zzdpl;
                            } else if (i5 != 12) {
                                iZza = zzbad.zza(i5, bArr, iZza, i2, zzbaeVar);
                            }
                            break;
                        case 3:
                            if (i6 == 2) {
                                iZza = zzbad.zze(bArr, iZza, zzbaeVar);
                                zzbahVar = (zzbah) zzbaeVar.zzdpn;
                            } else if (i5 != 12) {
                                iZza = zzbad.zza(i5, bArr, iZza, i2, zzbaeVar);
                            }
                            break;
                        default:
                            if (i5 != 12) {
                                iZza = zzbad.zza(i5, bArr, iZza, i2, zzbaeVar);
                            }
                            break;
                    }
                    if (zzbahVar != null) {
                        zzbefVar.zzb((i4 << 3) | 2, zzbahVar);
                    }
                    i = iZza;
                }
                if (zzbahVar != null) {
                    zzbefVar.zzb((i4 << 3) | 2, zzbahVar);
                }
                i = iZza;
            }
        }
        if (i != i2) {
            throw zzbbu.zzadr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final boolean zzaa(T t) {
        return this.zzdww.zzm(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zzc(T t, T t2) {
        zzbdo.zza(this.zzdwv, t, t2);
        if (this.zzdwm) {
            zzbdo.zza(this.zzdww, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zzo(T t) {
        this.zzdwv.zzo(t);
        this.zzdww.zzo(t);
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final int zzy(T t) {
        zzbee<?, ?> zzbeeVar = this.zzdwv;
        int iZzae = zzbeeVar.zzae(zzbeeVar.zzac(t)) + 0;
        return this.zzdwm ? iZzae + this.zzdww.zzm(t).zzacx() : iZzae;
    }
}
