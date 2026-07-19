package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzur implements zzxi {
    private int tag;
    private final zzuo zzbur;
    private int zzbus;
    private int zzbut = 0;

    public static zzur zza(zzuo zzuoVar) {
        return zzuoVar.zzbuk != null ? zzuoVar.zzbuk : new zzur(zzuoVar);
    }

    private zzur(zzuo zzuoVar) {
        this.zzbur = (zzuo) zzvo.zza(zzuoVar, "input");
        this.zzbur.zzbuk = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzve() throws IOException {
        int i = this.zzbut;
        if (i != 0) {
            this.tag = i;
            this.zzbut = 0;
        } else {
            this.tag = this.zzbur.zzug();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.zzbus) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final boolean zzvf() throws IOException {
        int i;
        if (this.zzbur.zzuw() || (i = this.tag) == this.zzbus) {
            return false;
        }
        return this.zzbur.zzao(i);
    }

    private final void zzat(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzvt.zzwo();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final double readDouble() throws IOException {
        zzat(1);
        return this.zzbur.readDouble();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final float readFloat() throws IOException {
        zzat(5);
        return this.zzbur.readFloat();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuh() throws IOException {
        zzat(0);
        return this.zzbur.zzuh();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzui() throws IOException {
        zzat(0);
        return this.zzbur.zzui();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzuj() throws IOException {
        zzat(0);
        return this.zzbur.zzuj();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuk() throws IOException {
        zzat(1);
        return this.zzbur.zzuk();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzul() throws IOException {
        zzat(5);
        return this.zzbur.zzul();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final boolean zzum() throws IOException {
        zzat(0);
        return this.zzbur.zzum();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final String readString() throws IOException {
        zzat(2);
        return this.zzbur.readString();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final String zzun() throws IOException {
        zzat(2);
        return this.zzbur.zzun();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> T zza(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        zzat(2);
        return (T) zzc(zzxjVar, zzuzVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> T zzb(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        zzat(3);
        return (T) zzd(zzxjVar, zzuzVar);
    }

    private final <T> T zzc(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int iZzup = this.zzbur.zzup();
        if (this.zzbur.zzbuh >= this.zzbur.zzbui) {
            throw zzvt.zzwp();
        }
        int iZzaq = this.zzbur.zzaq(iZzup);
        T tNewInstance = zzxjVar.newInstance();
        this.zzbur.zzbuh++;
        zzxjVar.zza(tNewInstance, this, zzuzVar);
        zzxjVar.zzu(tNewInstance);
        this.zzbur.zzan(0);
        this.zzbur.zzbuh--;
        this.zzbur.zzar(iZzaq);
        return tNewInstance;
    }

    private final <T> T zzd(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int i = this.zzbus;
        this.zzbus = ((this.tag >>> 3) << 3) | 4;
        try {
            T tNewInstance = zzxjVar.newInstance();
            zzxjVar.zza(tNewInstance, this, zzuzVar);
            zzxjVar.zzu(tNewInstance);
            if (this.tag != this.zzbus) {
                throw zzvt.zzwq();
            }
            this.zzbus = i;
            return tNewInstance;
        } catch (Throwable th) {
            this.zzbus = i;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final zzud zzuo() throws IOException {
        zzat(2);
        return this.zzbur.zzuo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzup() throws IOException {
        zzat(0);
        return this.zzbur.zzup();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzuq() throws IOException {
        zzat(0);
        return this.zzbur.zzuq();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzur() throws IOException {
        zzat(5);
        return this.zzbur.zzur();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzus() throws IOException {
        zzat(1);
        return this.zzbur.zzus();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzut() throws IOException {
        zzat(0);
        return this.zzbur.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuu() throws IOException {
        zzat(0);
        return this.zzbur.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzh(List<Double> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzuw) {
            zzuw zzuwVar = (zzuw) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzup = this.zzbur.zzup();
                    zzau(iZzup);
                    int iZzux = this.zzbur.zzux() + iZzup;
                    do {
                        zzuwVar.zzd(this.zzbur.readDouble());
                    } while (this.zzbur.zzux() < iZzux);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzuwVar.zzd(this.zzbur.readDouble());
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug2 = this.zzbur.zzug();
                }
            } while (iZzug2 == this.tag);
            this.zzbut = iZzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzup2 = this.zzbur.zzup();
                zzau(iZzup2);
                int iZzux2 = this.zzbur.zzux() + iZzup2;
                do {
                    list.add(Double.valueOf(this.zzbur.readDouble()));
                } while (this.zzbur.zzux() < iZzux2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Double.valueOf(this.zzbur.readDouble()));
            if (this.zzbur.zzuw()) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == this.tag);
        this.zzbut = iZzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzi(List<Float> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvj) {
            zzvj zzvjVar = (zzvj) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzup = this.zzbur.zzup();
                zzav(iZzup);
                int iZzux = this.zzbur.zzux() + iZzup;
                do {
                    zzvjVar.zzc(this.zzbur.readFloat());
                } while (this.zzbur.zzux() < iZzux);
                return;
            }
            if (i == 5) {
                do {
                    zzvjVar.zzc(this.zzbur.readFloat());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzup2 = this.zzbur.zzup();
            zzav(iZzup2);
            int iZzux2 = this.zzbur.zzux() + iZzup2;
            do {
                list.add(Float.valueOf(this.zzbur.readFloat()));
            } while (this.zzbur.zzux() < iZzux2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Float.valueOf(this.zzbur.readFloat()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzj(List<Long> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzuh());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzuh());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbur.zzuh()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Long.valueOf(this.zzbur.zzuh()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzk(List<Long> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzui());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzui());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbur.zzui()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Long.valueOf(this.zzbur.zzui()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzl(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzuj());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzuj());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzuj()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Integer.valueOf(this.zzbur.zzuj()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzm(List<Long> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzup = this.zzbur.zzup();
                    zzau(iZzup);
                    int iZzux = this.zzbur.zzux() + iZzup;
                    do {
                        zzwhVar.zzbg(this.zzbur.zzuk());
                    } while (this.zzbur.zzux() < iZzux);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzwhVar.zzbg(this.zzbur.zzuk());
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug2 = this.zzbur.zzug();
                }
            } while (iZzug2 == this.tag);
            this.zzbut = iZzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzup2 = this.zzbur.zzup();
                zzau(iZzup2);
                int iZzux2 = this.zzbur.zzux() + iZzup2;
                do {
                    list.add(Long.valueOf(this.zzbur.zzuk()));
                } while (this.zzbur.zzux() < iZzux2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Long.valueOf(this.zzbur.zzuk()));
            if (this.zzbur.zzuw()) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == this.tag);
        this.zzbut = iZzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzn(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzup = this.zzbur.zzup();
                zzav(iZzup);
                int iZzux = this.zzbur.zzux() + iZzup;
                do {
                    zzvnVar.zzbm(this.zzbur.zzul());
                } while (this.zzbur.zzux() < iZzux);
                return;
            }
            if (i == 5) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzul());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzup2 = this.zzbur.zzup();
            zzav(iZzup2);
            int iZzux2 = this.zzbur.zzux() + iZzup2;
            do {
                list.add(Integer.valueOf(this.zzbur.zzul()));
            } while (this.zzbur.zzux() < iZzux2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzul()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzo(List<Boolean> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzub) {
            zzub zzubVar = (zzub) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzubVar.addBoolean(this.zzbur.zzum());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzubVar.addBoolean(this.zzbur.zzum());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Boolean.valueOf(this.zzbur.zzum()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Boolean.valueOf(this.zzbur.zzum()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzp(List<String> list) throws IOException {
        zza(list, true);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final void zza(List<String> list, boolean z) throws IOException {
        int iZzug;
        int iZzug2;
        if ((this.tag & 7) != 2) {
            throw zzvt.zzwo();
        }
        if ((list instanceof zzwc) && !z) {
            zzwc zzwcVar = (zzwc) list;
            do {
                zzwcVar.zzc(zzuo());
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug2 = this.zzbur.zzug();
                }
            } while (iZzug2 == this.tag);
            this.zzbut = iZzug2;
            return;
        }
        do {
            list.add(z ? zzun() : readString());
            if (this.zzbur.zzuw()) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == this.tag);
        this.zzbut = iZzug;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> void zza(List<T> list, zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int iZzug;
        int i = this.tag;
        if ((i & 7) != 2) {
            throw zzvt.zzwo();
        }
        do {
            list.add(zzc(zzxjVar, zzuzVar));
            if (this.zzbur.zzuw() || this.zzbut != 0) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == i);
        this.zzbut = iZzug;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> void zzb(List<T> list, zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int iZzug;
        int i = this.tag;
        if ((i & 7) != 3) {
            throw zzvt.zzwo();
        }
        do {
            list.add(zzd(zzxjVar, zzuzVar));
            if (this.zzbur.zzuw() || this.zzbut != 0) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == i);
        this.zzbut = iZzug;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzq(List<zzud> list) throws IOException {
        int iZzug;
        if ((this.tag & 7) != 2) {
            throw zzvt.zzwo();
        }
        do {
            list.add(zzuo());
            if (this.zzbur.zzuw()) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == this.tag);
        this.zzbut = iZzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzr(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzup());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzup());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzup()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Integer.valueOf(this.zzbur.zzup()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzs(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzuq());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzuq());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzuq()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Integer.valueOf(this.zzbur.zzuq()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzt(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzup = this.zzbur.zzup();
                zzav(iZzup);
                int iZzux = this.zzbur.zzux() + iZzup;
                do {
                    zzvnVar.zzbm(this.zzbur.zzur());
                } while (this.zzbur.zzux() < iZzux);
                return;
            }
            if (i == 5) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzur());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzup2 = this.zzbur.zzup();
            zzav(iZzup2);
            int iZzux2 = this.zzbur.zzux() + iZzup2;
            do {
                list.add(Integer.valueOf(this.zzbur.zzur()));
            } while (this.zzbur.zzux() < iZzux2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzur()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzu(List<Long> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzup = this.zzbur.zzup();
                    zzau(iZzup);
                    int iZzux = this.zzbur.zzux() + iZzup;
                    do {
                        zzwhVar.zzbg(this.zzbur.zzus());
                    } while (this.zzbur.zzux() < iZzux);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzwhVar.zzbg(this.zzbur.zzus());
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug2 = this.zzbur.zzug();
                }
            } while (iZzug2 == this.tag);
            this.zzbut = iZzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzup2 = this.zzbur.zzup();
                zzau(iZzup2);
                int iZzux2 = this.zzbur.zzux() + iZzup2;
                do {
                    list.add(Long.valueOf(this.zzbur.zzus()));
                } while (this.zzbur.zzux() < iZzux2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Long.valueOf(this.zzbur.zzus()));
            if (this.zzbur.zzuw()) {
                return;
            } else {
                iZzug = this.zzbur.zzug();
            }
        } while (iZzug == this.tag);
        this.zzbut = iZzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzv(List<Integer> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzut());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzut());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbur.zzut()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Integer.valueOf(this.zzbur.zzut()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzw(List<Long> list) throws IOException {
        int iZzug;
        int iZzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzuu());
                    if (this.zzbur.zzuw()) {
                        return;
                    } else {
                        iZzug2 = this.zzbur.zzug();
                    }
                } while (iZzug2 == this.tag);
                this.zzbut = iZzug2;
                return;
            }
            if (i == 2) {
                int iZzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzuu());
                } while (this.zzbur.zzux() < iZzux);
                zzaw(iZzux);
                return;
            }
            throw zzvt.zzwo();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbur.zzuu()));
                if (this.zzbur.zzuw()) {
                    return;
                } else {
                    iZzug = this.zzbur.zzug();
                }
            } while (iZzug == this.tag);
            this.zzbut = iZzug;
            return;
        }
        if (i2 == 2) {
            int iZzux2 = this.zzbur.zzux() + this.zzbur.zzup();
            do {
                list.add(Long.valueOf(this.zzbur.zzuu()));
            } while (this.zzbur.zzux() < iZzux2);
            zzaw(iZzux2);
            return;
        }
        throw zzvt.zzwo();
    }

    private static void zzau(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzvt.zzwq();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <K, V> void zza(Map<K, V> map, zzwm<K, V> zzwmVar, zzuz zzuzVar) throws IOException {
        zzat(2);
        int iZzaq = this.zzbur.zzaq(this.zzbur.zzup());
        Object objZza = zzwmVar.zzcas;
        Object objZza2 = zzwmVar.zzbre;
        while (true) {
            try {
                int iZzve = zzve();
                if (iZzve != Integer.MAX_VALUE && !this.zzbur.zzuw()) {
                    switch (iZzve) {
                        case 1:
                            objZza = zza(zzwmVar.zzcar, (Class<?>) null, (zzuz) null);
                            continue;
                        case 2:
                            objZza2 = zza(zzwmVar.zzcat, zzwmVar.zzbre.getClass(), zzuzVar);
                            continue;
                        default:
                            try {
                                if (!zzvf()) {
                                    throw new zzvt("Unable to parse map entry.");
                                }
                                continue;
                            } catch (zzvu unused) {
                                if (!zzvf()) {
                                    throw new zzvt("Unable to parse map entry.");
                                }
                            }
                    }
                    this.zzbur.zzar(iZzaq);
                    throw th;
                }
            } catch (Throwable th) {
                this.zzbur.zzar(iZzaq);
                throw th;
            }
        }
        map.put(objZza, objZza2);
        this.zzbur.zzar(iZzaq);
    }

    private final Object zza(zzyq zzyqVar, Class<?> cls, zzuz zzuzVar) throws IOException {
        switch (zzus.zzbuu[zzyqVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzum());
            case 2:
                return zzuo();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzuq());
            case 5:
                return Integer.valueOf(zzul());
            case 6:
                return Long.valueOf(zzuk());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzuj());
            case 9:
                return Long.valueOf(zzui());
            case 10:
                zzat(2);
                return zzc(zzxf.zzxn().zzi(cls), zzuzVar);
            case 11:
                return Integer.valueOf(zzur());
            case 12:
                return Long.valueOf(zzus());
            case 13:
                return Integer.valueOf(zzut());
            case 14:
                return Long.valueOf(zzuu());
            case 15:
                return zzun();
            case 16:
                return Integer.valueOf(zzup());
            case 17:
                return Long.valueOf(zzuh());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzav(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzvt.zzwq();
        }
    }

    private final void zzaw(int i) throws IOException {
        if (this.zzbur.zzux() != i) {
            throw zzvt.zzwk();
        }
    }
}
