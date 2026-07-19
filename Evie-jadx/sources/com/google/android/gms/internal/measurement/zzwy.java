package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzwy<T> implements zzxj<T> {
    private final zzwt zzcbd;
    private final boolean zzcbe;
    private final zzyb<?, ?> zzcbn;
    private final zzva<?> zzcbo;

    private zzwy(zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwt zzwtVar) {
        this.zzcbn = zzybVar;
        this.zzcbe = zzvaVar.zze(zzwtVar);
        this.zzcbo = zzvaVar;
        this.zzcbd = zzwtVar;
    }

    static <T> zzwy<T> zza(zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwt zzwtVar) {
        return new zzwy<>(zzybVar, zzvaVar, zzwtVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final T newInstance() {
        return (T) this.zzcbd.zzwe().zzwi();
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean equals(T t, T t2) {
        if (!this.zzcbn.zzah(t).equals(this.zzcbn.zzah(t2))) {
            return false;
        }
        if (this.zzcbe) {
            return this.zzcbo.zzs(t).equals(this.zzcbo.zzs(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int hashCode(T t) {
        int iHashCode = this.zzcbn.zzah(t).hashCode();
        return this.zzcbe ? (iHashCode * 53) + this.zzcbo.zzs(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzd(T t, T t2) {
        zzxl.zza(this.zzcbn, t, t2);
        if (this.zzcbe) {
            zzxl.zza(this.zzcbo, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzyw zzywVar) throws IOException {
        for (T t2 : this.zzcbo.zzs(t)) {
            zzvf zzvfVar = (zzvf) t2.getKey();
            if (zzvfVar.zzvx() != zzyv.MESSAGE || zzvfVar.zzvy() || zzvfVar.zzvz()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t2 instanceof zzvy) {
                zzywVar.zza(zzvfVar.zzc(), (Object) ((zzvy) t2).zzwu().zztt());
            } else {
                zzywVar.zza(zzvfVar.zzc(), t2.getValue());
            }
        }
        zzyb<?, ?> zzybVar = this.zzcbn;
        zzybVar.zzc(zzybVar.zzah(t), zzywVar);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzxi zzxiVar, zzuz zzuzVar) throws IOException {
        boolean zZzvf;
        zzyb<?, ?> zzybVar = this.zzcbn;
        zzva<?> zzvaVar = this.zzcbo;
        Object objZzai = zzybVar.zzai(t);
        zzvd<T> zzvdVarZzt = zzvaVar.zzt(t);
        while (zzxiVar.zzve() != Integer.MAX_VALUE) {
            try {
                int tag = zzxiVar.getTag();
                if (tag != 11) {
                    if ((tag & 7) == 2) {
                        Object objZza = zzvaVar.zza(zzuzVar, this.zzcbd, tag >>> 3);
                        if (objZza != null) {
                            zzvaVar.zza(zzxiVar, objZza, zzuzVar, zzvdVarZzt);
                        } else {
                            zZzvf = zzybVar.zza(objZzai, zzxiVar);
                        }
                    } else {
                        zZzvf = zzxiVar.zzvf();
                    }
                    if (!zZzvf) {
                        zzybVar.zzg(t, objZzai);
                        return;
                    }
                } else {
                    int iZzup = 0;
                    Object objZza2 = null;
                    zzud zzudVarZzuo = null;
                    while (zzxiVar.zzve() != Integer.MAX_VALUE) {
                        int tag2 = zzxiVar.getTag();
                        if (tag2 == 16) {
                            iZzup = zzxiVar.zzup();
                            objZza2 = zzvaVar.zza(zzuzVar, this.zzcbd, iZzup);
                        } else if (tag2 == 26) {
                            if (objZza2 != null) {
                                zzvaVar.zza(zzxiVar, objZza2, zzuzVar, zzvdVarZzt);
                            } else {
                                zzudVarZzuo = zzxiVar.zzuo();
                            }
                        } else if (!zzxiVar.zzvf()) {
                            break;
                        }
                    }
                    if (zzxiVar.getTag() != 12) {
                        throw zzvt.zzwn();
                    }
                    if (zzudVarZzuo != null) {
                        if (objZza2 != null) {
                            zzvaVar.zza(zzudVarZzuo, objZza2, zzuzVar, zzvdVarZzt);
                        } else {
                            zzybVar.zza(objZzai, iZzup, zzudVarZzuo);
                        }
                    }
                }
                zZzvf = true;
                if (!zZzvf) {
                    zzybVar.zzg(t, objZzai);
                    return;
                }
            } catch (Throwable th) {
                zzybVar.zzg(t, objZzai);
                throw th;
            }
        }
        zzybVar.zzg(t, objZzai);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzu(T t) {
        this.zzcbn.zzu(t);
        this.zzcbo.zzu(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean zzaf(T t) {
        return this.zzcbo.zzs(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int zzae(T t) {
        zzyb<?, ?> zzybVar = this.zzcbn;
        int iZzaj = zzybVar.zzaj(zzybVar.zzah(t)) + 0;
        return this.zzcbe ? iZzaj + this.zzcbo.zzs(t).zzvv() : iZzaj;
    }
}
