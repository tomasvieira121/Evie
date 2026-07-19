package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfp extends zzbfc<zzbfp> {
    private zzbfq zzecz = null;
    public zzbfo[] zzeda = zzbfo.zzagt();
    private byte[] zzedb = null;
    private byte[] zzedc = null;
    private Integer zzedd = null;

    public zzbfp() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final /* synthetic */ zzbfi zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                if (this.zzecz == null) {
                    this.zzecz = new zzbfq();
                }
                zzbezVar.zza(this.zzecz);
            } else if (iZzabk == 18) {
                int iZzb = zzbfl.zzb(zzbezVar, 18);
                zzbfo[] zzbfoVarArr = this.zzeda;
                int length = zzbfoVarArr == null ? 0 : zzbfoVarArr.length;
                zzbfo[] zzbfoVarArr2 = new zzbfo[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzeda, 0, zzbfoVarArr2, 0, length);
                }
                while (length < zzbfoVarArr2.length - 1) {
                    zzbfoVarArr2[length] = new zzbfo();
                    zzbezVar.zza(zzbfoVarArr2[length]);
                    zzbezVar.zzabk();
                    length++;
                }
                zzbfoVarArr2[length] = new zzbfo();
                zzbezVar.zza(zzbfoVarArr2[length]);
                this.zzeda = zzbfoVarArr2;
            } else if (iZzabk == 26) {
                this.zzedb = zzbezVar.readBytes();
            } else if (iZzabk == 34) {
                this.zzedc = zzbezVar.readBytes();
            } else if (iZzabk == 40) {
                this.zzedd = Integer.valueOf(zzbezVar.zzabn());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        zzbfq zzbfqVar = this.zzecz;
        if (zzbfqVar != null) {
            zzbfaVar.zza(1, zzbfqVar);
        }
        zzbfo[] zzbfoVarArr = this.zzeda;
        if (zzbfoVarArr != null && zzbfoVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzbfo[] zzbfoVarArr2 = this.zzeda;
                if (i >= zzbfoVarArr2.length) {
                    break;
                }
                zzbfo zzbfoVar = zzbfoVarArr2[i];
                if (zzbfoVar != null) {
                    zzbfaVar.zza(2, zzbfoVar);
                }
                i++;
            }
        }
        byte[] bArr = this.zzedb;
        if (bArr != null) {
            zzbfaVar.zza(3, bArr);
        }
        byte[] bArr2 = this.zzedc;
        if (bArr2 != null) {
            zzbfaVar.zza(4, bArr2);
        }
        Integer num = this.zzedd;
        if (num != null) {
            zzbfaVar.zzm(5, num.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        zzbfq zzbfqVar = this.zzecz;
        if (zzbfqVar != null) {
            iZzr += zzbfa.zzb(1, zzbfqVar);
        }
        zzbfo[] zzbfoVarArr = this.zzeda;
        if (zzbfoVarArr != null && zzbfoVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzbfo[] zzbfoVarArr2 = this.zzeda;
                if (i >= zzbfoVarArr2.length) {
                    break;
                }
                zzbfo zzbfoVar = zzbfoVarArr2[i];
                if (zzbfoVar != null) {
                    iZzr += zzbfa.zzb(2, zzbfoVar);
                }
                i++;
            }
        }
        byte[] bArr = this.zzedb;
        if (bArr != null) {
            iZzr += zzbfa.zzb(3, bArr);
        }
        byte[] bArr2 = this.zzedc;
        if (bArr2 != null) {
            iZzr += zzbfa.zzb(4, bArr2);
        }
        Integer num = this.zzedd;
        return num != null ? iZzr + zzbfa.zzq(5, num.intValue()) : iZzr;
    }
}
