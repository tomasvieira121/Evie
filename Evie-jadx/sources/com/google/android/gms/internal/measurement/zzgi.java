package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgi extends zzza<zzgi> {
    private static volatile zzgi[] zzawz;
    public Integer zzaxa = null;
    public zzgf[] zzaxb = zzgf.zzmq();
    public zzgl[] zzaxc = zzgl.zzmu();
    public Long zzaxd = null;
    public Long zzaxe = null;
    public Long zzaxf = null;
    public Long zzaxg = null;
    public Long zzaxh = null;
    public String zzaxi = null;
    public String zzaxj = null;
    public String zzaxk = null;
    public String zzaia = null;
    public Integer zzaxl = null;
    public String zzage = null;
    public String zztt = null;
    public String zzts = null;
    public Long zzaxm = null;
    public Long zzaxn = null;
    public String zzaxo = null;
    public Boolean zzaxp = null;
    public String zzafw = null;
    public Long zzaxq = null;
    public Integer zzaxr = null;
    public String zzagv = null;
    public String zzafx = null;
    public Boolean zzaxs = null;
    public zzgd[] zzaxt = zzgd.zzmo();
    public String zzafz = null;
    public Integer zzaxu = null;
    private Integer zzaxv = null;
    private Integer zzaxw = null;
    public String zzaxx = null;
    public Long zzaxy = null;
    public Long zzaxz = null;
    public String zzaya = null;
    private String zzayb = null;
    public Integer zzayc = null;
    public String zzawj = null;
    private zzfq.zzb zzayd = null;

    public static zzgi[] zzms() {
        if (zzawz == null) {
            synchronized (zzze.zzcfl) {
                if (zzawz == null) {
                    zzawz = new zzgi[0];
                }
            }
        }
        return zzawz;
    }

    public zzgi() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgi)) {
            return false;
        }
        zzgi zzgiVar = (zzgi) obj;
        Integer num = this.zzaxa;
        if (num == null) {
            if (zzgiVar.zzaxa != null) {
                return false;
            }
        } else if (!num.equals(zzgiVar.zzaxa)) {
            return false;
        }
        if (!zzze.equals(this.zzaxb, zzgiVar.zzaxb) || !zzze.equals(this.zzaxc, zzgiVar.zzaxc)) {
            return false;
        }
        Long l = this.zzaxd;
        if (l == null) {
            if (zzgiVar.zzaxd != null) {
                return false;
            }
        } else if (!l.equals(zzgiVar.zzaxd)) {
            return false;
        }
        Long l2 = this.zzaxe;
        if (l2 == null) {
            if (zzgiVar.zzaxe != null) {
                return false;
            }
        } else if (!l2.equals(zzgiVar.zzaxe)) {
            return false;
        }
        Long l3 = this.zzaxf;
        if (l3 == null) {
            if (zzgiVar.zzaxf != null) {
                return false;
            }
        } else if (!l3.equals(zzgiVar.zzaxf)) {
            return false;
        }
        Long l4 = this.zzaxg;
        if (l4 == null) {
            if (zzgiVar.zzaxg != null) {
                return false;
            }
        } else if (!l4.equals(zzgiVar.zzaxg)) {
            return false;
        }
        Long l5 = this.zzaxh;
        if (l5 == null) {
            if (zzgiVar.zzaxh != null) {
                return false;
            }
        } else if (!l5.equals(zzgiVar.zzaxh)) {
            return false;
        }
        String str = this.zzaxi;
        if (str == null) {
            if (zzgiVar.zzaxi != null) {
                return false;
            }
        } else if (!str.equals(zzgiVar.zzaxi)) {
            return false;
        }
        String str2 = this.zzaxj;
        if (str2 == null) {
            if (zzgiVar.zzaxj != null) {
                return false;
            }
        } else if (!str2.equals(zzgiVar.zzaxj)) {
            return false;
        }
        String str3 = this.zzaxk;
        if (str3 == null) {
            if (zzgiVar.zzaxk != null) {
                return false;
            }
        } else if (!str3.equals(zzgiVar.zzaxk)) {
            return false;
        }
        String str4 = this.zzaia;
        if (str4 == null) {
            if (zzgiVar.zzaia != null) {
                return false;
            }
        } else if (!str4.equals(zzgiVar.zzaia)) {
            return false;
        }
        Integer num2 = this.zzaxl;
        if (num2 == null) {
            if (zzgiVar.zzaxl != null) {
                return false;
            }
        } else if (!num2.equals(zzgiVar.zzaxl)) {
            return false;
        }
        String str5 = this.zzage;
        if (str5 == null) {
            if (zzgiVar.zzage != null) {
                return false;
            }
        } else if (!str5.equals(zzgiVar.zzage)) {
            return false;
        }
        String str6 = this.zztt;
        if (str6 == null) {
            if (zzgiVar.zztt != null) {
                return false;
            }
        } else if (!str6.equals(zzgiVar.zztt)) {
            return false;
        }
        String str7 = this.zzts;
        if (str7 == null) {
            if (zzgiVar.zzts != null) {
                return false;
            }
        } else if (!str7.equals(zzgiVar.zzts)) {
            return false;
        }
        Long l6 = this.zzaxm;
        if (l6 == null) {
            if (zzgiVar.zzaxm != null) {
                return false;
            }
        } else if (!l6.equals(zzgiVar.zzaxm)) {
            return false;
        }
        Long l7 = this.zzaxn;
        if (l7 == null) {
            if (zzgiVar.zzaxn != null) {
                return false;
            }
        } else if (!l7.equals(zzgiVar.zzaxn)) {
            return false;
        }
        String str8 = this.zzaxo;
        if (str8 == null) {
            if (zzgiVar.zzaxo != null) {
                return false;
            }
        } else if (!str8.equals(zzgiVar.zzaxo)) {
            return false;
        }
        Boolean bool = this.zzaxp;
        if (bool == null) {
            if (zzgiVar.zzaxp != null) {
                return false;
            }
        } else if (!bool.equals(zzgiVar.zzaxp)) {
            return false;
        }
        String str9 = this.zzafw;
        if (str9 == null) {
            if (zzgiVar.zzafw != null) {
                return false;
            }
        } else if (!str9.equals(zzgiVar.zzafw)) {
            return false;
        }
        Long l8 = this.zzaxq;
        if (l8 == null) {
            if (zzgiVar.zzaxq != null) {
                return false;
            }
        } else if (!l8.equals(zzgiVar.zzaxq)) {
            return false;
        }
        Integer num3 = this.zzaxr;
        if (num3 == null) {
            if (zzgiVar.zzaxr != null) {
                return false;
            }
        } else if (!num3.equals(zzgiVar.zzaxr)) {
            return false;
        }
        String str10 = this.zzagv;
        if (str10 == null) {
            if (zzgiVar.zzagv != null) {
                return false;
            }
        } else if (!str10.equals(zzgiVar.zzagv)) {
            return false;
        }
        String str11 = this.zzafx;
        if (str11 == null) {
            if (zzgiVar.zzafx != null) {
                return false;
            }
        } else if (!str11.equals(zzgiVar.zzafx)) {
            return false;
        }
        Boolean bool2 = this.zzaxs;
        if (bool2 == null) {
            if (zzgiVar.zzaxs != null) {
                return false;
            }
        } else if (!bool2.equals(zzgiVar.zzaxs)) {
            return false;
        }
        if (!zzze.equals(this.zzaxt, zzgiVar.zzaxt)) {
            return false;
        }
        String str12 = this.zzafz;
        if (str12 == null) {
            if (zzgiVar.zzafz != null) {
                return false;
            }
        } else if (!str12.equals(zzgiVar.zzafz)) {
            return false;
        }
        Integer num4 = this.zzaxu;
        if (num4 == null) {
            if (zzgiVar.zzaxu != null) {
                return false;
            }
        } else if (!num4.equals(zzgiVar.zzaxu)) {
            return false;
        }
        Integer num5 = this.zzaxv;
        if (num5 == null) {
            if (zzgiVar.zzaxv != null) {
                return false;
            }
        } else if (!num5.equals(zzgiVar.zzaxv)) {
            return false;
        }
        Integer num6 = this.zzaxw;
        if (num6 == null) {
            if (zzgiVar.zzaxw != null) {
                return false;
            }
        } else if (!num6.equals(zzgiVar.zzaxw)) {
            return false;
        }
        String str13 = this.zzaxx;
        if (str13 == null) {
            if (zzgiVar.zzaxx != null) {
                return false;
            }
        } else if (!str13.equals(zzgiVar.zzaxx)) {
            return false;
        }
        Long l9 = this.zzaxy;
        if (l9 == null) {
            if (zzgiVar.zzaxy != null) {
                return false;
            }
        } else if (!l9.equals(zzgiVar.zzaxy)) {
            return false;
        }
        Long l10 = this.zzaxz;
        if (l10 == null) {
            if (zzgiVar.zzaxz != null) {
                return false;
            }
        } else if (!l10.equals(zzgiVar.zzaxz)) {
            return false;
        }
        String str14 = this.zzaya;
        if (str14 == null) {
            if (zzgiVar.zzaya != null) {
                return false;
            }
        } else if (!str14.equals(zzgiVar.zzaya)) {
            return false;
        }
        String str15 = this.zzayb;
        if (str15 == null) {
            if (zzgiVar.zzayb != null) {
                return false;
            }
        } else if (!str15.equals(zzgiVar.zzayb)) {
            return false;
        }
        Integer num7 = this.zzayc;
        if (num7 == null) {
            if (zzgiVar.zzayc != null) {
                return false;
            }
        } else if (!num7.equals(zzgiVar.zzayc)) {
            return false;
        }
        String str16 = this.zzawj;
        if (str16 == null) {
            if (zzgiVar.zzawj != null) {
                return false;
            }
        } else if (!str16.equals(zzgiVar.zzawj)) {
            return false;
        }
        zzfq.zzb zzbVar = this.zzayd;
        if (zzbVar == null) {
            if (zzgiVar.zzayd != null) {
                return false;
            }
        } else if (!zzbVar.equals(zzgiVar.zzayd)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgiVar.zzcfc == null || zzgiVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgiVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzaxa;
        int iHashCode2 = 0;
        int iHashCode3 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + zzze.hashCode(this.zzaxb)) * 31) + zzze.hashCode(this.zzaxc)) * 31;
        Long l = this.zzaxd;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.zzaxe;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.zzaxf;
        int iHashCode6 = (iHashCode5 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.zzaxg;
        int iHashCode7 = (iHashCode6 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.zzaxh;
        int iHashCode8 = (iHashCode7 + (l5 == null ? 0 : l5.hashCode())) * 31;
        String str = this.zzaxi;
        int iHashCode9 = (iHashCode8 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzaxj;
        int iHashCode10 = (iHashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.zzaxk;
        int iHashCode11 = (iHashCode10 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.zzaia;
        int iHashCode12 = (iHashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.zzaxl;
        int iHashCode13 = (iHashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.zzage;
        int iHashCode14 = (iHashCode13 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.zztt;
        int iHashCode15 = (iHashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.zzts;
        int iHashCode16 = (iHashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l6 = this.zzaxm;
        int iHashCode17 = (iHashCode16 + (l6 == null ? 0 : l6.hashCode())) * 31;
        Long l7 = this.zzaxn;
        int iHashCode18 = (iHashCode17 + (l7 == null ? 0 : l7.hashCode())) * 31;
        String str8 = this.zzaxo;
        int iHashCode19 = (iHashCode18 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool = this.zzaxp;
        int iHashCode20 = (iHashCode19 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str9 = this.zzafw;
        int iHashCode21 = (iHashCode20 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Long l8 = this.zzaxq;
        int iHashCode22 = (iHashCode21 + (l8 == null ? 0 : l8.hashCode())) * 31;
        Integer num3 = this.zzaxr;
        int iHashCode23 = (iHashCode22 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str10 = this.zzagv;
        int iHashCode24 = (iHashCode23 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.zzafx;
        int iHashCode25 = (iHashCode24 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Boolean bool2 = this.zzaxs;
        int iHashCode26 = (((iHashCode25 + (bool2 == null ? 0 : bool2.hashCode())) * 31) + zzze.hashCode(this.zzaxt)) * 31;
        String str12 = this.zzafz;
        int iHashCode27 = (iHashCode26 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num4 = this.zzaxu;
        int iHashCode28 = (iHashCode27 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.zzaxv;
        int iHashCode29 = (iHashCode28 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.zzaxw;
        int iHashCode30 = (iHashCode29 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str13 = this.zzaxx;
        int iHashCode31 = (iHashCode30 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Long l9 = this.zzaxy;
        int iHashCode32 = (iHashCode31 + (l9 == null ? 0 : l9.hashCode())) * 31;
        Long l10 = this.zzaxz;
        int iHashCode33 = (iHashCode32 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str14 = this.zzaya;
        int iHashCode34 = (iHashCode33 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.zzayb;
        int iHashCode35 = (iHashCode34 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Integer num7 = this.zzayc;
        int iHashCode36 = (iHashCode35 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str16 = this.zzawj;
        int iHashCode37 = iHashCode36 + (str16 == null ? 0 : str16.hashCode());
        zzfq.zzb zzbVar = this.zzayd;
        int iHashCode38 = ((iHashCode37 * 31) + (zzbVar == null ? 0 : zzbVar.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode38 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzaxa;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        zzgf[] zzgfVarArr = this.zzaxb;
        int i = 0;
        if (zzgfVarArr != null && zzgfVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzgf[] zzgfVarArr2 = this.zzaxb;
                if (i2 >= zzgfVarArr2.length) {
                    break;
                }
                zzgf zzgfVar = zzgfVarArr2[i2];
                if (zzgfVar != null) {
                    zzyyVar.zza(2, zzgfVar);
                }
                i2++;
            }
        }
        zzgl[] zzglVarArr = this.zzaxc;
        if (zzglVarArr != null && zzglVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzgl[] zzglVarArr2 = this.zzaxc;
                if (i3 >= zzglVarArr2.length) {
                    break;
                }
                zzgl zzglVar = zzglVarArr2[i3];
                if (zzglVar != null) {
                    zzyyVar.zza(3, zzglVar);
                }
                i3++;
            }
        }
        Long l = this.zzaxd;
        if (l != null) {
            zzyyVar.zzi(4, l.longValue());
        }
        Long l2 = this.zzaxe;
        if (l2 != null) {
            zzyyVar.zzi(5, l2.longValue());
        }
        Long l3 = this.zzaxf;
        if (l3 != null) {
            zzyyVar.zzi(6, l3.longValue());
        }
        Long l4 = this.zzaxh;
        if (l4 != null) {
            zzyyVar.zzi(7, l4.longValue());
        }
        String str = this.zzaxi;
        if (str != null) {
            zzyyVar.zzb(8, str);
        }
        String str2 = this.zzaxj;
        if (str2 != null) {
            zzyyVar.zzb(9, str2);
        }
        String str3 = this.zzaxk;
        if (str3 != null) {
            zzyyVar.zzb(10, str3);
        }
        String str4 = this.zzaia;
        if (str4 != null) {
            zzyyVar.zzb(11, str4);
        }
        Integer num2 = this.zzaxl;
        if (num2 != null) {
            zzyyVar.zzd(12, num2.intValue());
        }
        String str5 = this.zzage;
        if (str5 != null) {
            zzyyVar.zzb(13, str5);
        }
        String str6 = this.zztt;
        if (str6 != null) {
            zzyyVar.zzb(14, str6);
        }
        String str7 = this.zzts;
        if (str7 != null) {
            zzyyVar.zzb(16, str7);
        }
        Long l5 = this.zzaxm;
        if (l5 != null) {
            zzyyVar.zzi(17, l5.longValue());
        }
        Long l6 = this.zzaxn;
        if (l6 != null) {
            zzyyVar.zzi(18, l6.longValue());
        }
        String str8 = this.zzaxo;
        if (str8 != null) {
            zzyyVar.zzb(19, str8);
        }
        Boolean bool = this.zzaxp;
        if (bool != null) {
            zzyyVar.zzb(20, bool.booleanValue());
        }
        String str9 = this.zzafw;
        if (str9 != null) {
            zzyyVar.zzb(21, str9);
        }
        Long l7 = this.zzaxq;
        if (l7 != null) {
            zzyyVar.zzi(22, l7.longValue());
        }
        Integer num3 = this.zzaxr;
        if (num3 != null) {
            zzyyVar.zzd(23, num3.intValue());
        }
        String str10 = this.zzagv;
        if (str10 != null) {
            zzyyVar.zzb(24, str10);
        }
        String str11 = this.zzafx;
        if (str11 != null) {
            zzyyVar.zzb(25, str11);
        }
        Long l8 = this.zzaxg;
        if (l8 != null) {
            zzyyVar.zzi(26, l8.longValue());
        }
        Boolean bool2 = this.zzaxs;
        if (bool2 != null) {
            zzyyVar.zzb(28, bool2.booleanValue());
        }
        zzgd[] zzgdVarArr = this.zzaxt;
        if (zzgdVarArr != null && zzgdVarArr.length > 0) {
            while (true) {
                zzgd[] zzgdVarArr2 = this.zzaxt;
                if (i >= zzgdVarArr2.length) {
                    break;
                }
                zzgd zzgdVar = zzgdVarArr2[i];
                if (zzgdVar != null) {
                    zzyyVar.zza(29, zzgdVar);
                }
                i++;
            }
        }
        String str12 = this.zzafz;
        if (str12 != null) {
            zzyyVar.zzb(30, str12);
        }
        Integer num4 = this.zzaxu;
        if (num4 != null) {
            zzyyVar.zzd(31, num4.intValue());
        }
        Integer num5 = this.zzaxv;
        if (num5 != null) {
            zzyyVar.zzd(32, num5.intValue());
        }
        Integer num6 = this.zzaxw;
        if (num6 != null) {
            zzyyVar.zzd(33, num6.intValue());
        }
        String str13 = this.zzaxx;
        if (str13 != null) {
            zzyyVar.zzb(34, str13);
        }
        Long l9 = this.zzaxy;
        if (l9 != null) {
            zzyyVar.zzi(35, l9.longValue());
        }
        Long l10 = this.zzaxz;
        if (l10 != null) {
            zzyyVar.zzi(36, l10.longValue());
        }
        String str14 = this.zzaya;
        if (str14 != null) {
            zzyyVar.zzb(37, str14);
        }
        String str15 = this.zzayb;
        if (str15 != null) {
            zzyyVar.zzb(38, str15);
        }
        Integer num7 = this.zzayc;
        if (num7 != null) {
            zzyyVar.zzd(39, num7.intValue());
        }
        String str16 = this.zzawj;
        if (str16 != null) {
            zzyyVar.zzb(41, str16);
        }
        zzfq.zzb zzbVar = this.zzayd;
        if (zzbVar != null) {
            zzyyVar.zze(44, zzbVar);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzaxa;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        zzgf[] zzgfVarArr = this.zzaxb;
        int i = 0;
        if (zzgfVarArr != null && zzgfVarArr.length > 0) {
            int iZzb = iZzf;
            int i2 = 0;
            while (true) {
                zzgf[] zzgfVarArr2 = this.zzaxb;
                if (i2 >= zzgfVarArr2.length) {
                    break;
                }
                zzgf zzgfVar = zzgfVarArr2[i2];
                if (zzgfVar != null) {
                    iZzb += zzyy.zzb(2, zzgfVar);
                }
                i2++;
            }
            iZzf = iZzb;
        }
        zzgl[] zzglVarArr = this.zzaxc;
        if (zzglVarArr != null && zzglVarArr.length > 0) {
            int iZzb2 = iZzf;
            int i3 = 0;
            while (true) {
                zzgl[] zzglVarArr2 = this.zzaxc;
                if (i3 >= zzglVarArr2.length) {
                    break;
                }
                zzgl zzglVar = zzglVarArr2[i3];
                if (zzglVar != null) {
                    iZzb2 += zzyy.zzb(3, zzglVar);
                }
                i3++;
            }
            iZzf = iZzb2;
        }
        Long l = this.zzaxd;
        if (l != null) {
            iZzf += zzyy.zzd(4, l.longValue());
        }
        Long l2 = this.zzaxe;
        if (l2 != null) {
            iZzf += zzyy.zzd(5, l2.longValue());
        }
        Long l3 = this.zzaxf;
        if (l3 != null) {
            iZzf += zzyy.zzd(6, l3.longValue());
        }
        Long l4 = this.zzaxh;
        if (l4 != null) {
            iZzf += zzyy.zzd(7, l4.longValue());
        }
        String str = this.zzaxi;
        if (str != null) {
            iZzf += zzyy.zzc(8, str);
        }
        String str2 = this.zzaxj;
        if (str2 != null) {
            iZzf += zzyy.zzc(9, str2);
        }
        String str3 = this.zzaxk;
        if (str3 != null) {
            iZzf += zzyy.zzc(10, str3);
        }
        String str4 = this.zzaia;
        if (str4 != null) {
            iZzf += zzyy.zzc(11, str4);
        }
        Integer num2 = this.zzaxl;
        if (num2 != null) {
            iZzf += zzyy.zzh(12, num2.intValue());
        }
        String str5 = this.zzage;
        if (str5 != null) {
            iZzf += zzyy.zzc(13, str5);
        }
        String str6 = this.zztt;
        if (str6 != null) {
            iZzf += zzyy.zzc(14, str6);
        }
        String str7 = this.zzts;
        if (str7 != null) {
            iZzf += zzyy.zzc(16, str7);
        }
        Long l5 = this.zzaxm;
        if (l5 != null) {
            iZzf += zzyy.zzd(17, l5.longValue());
        }
        Long l6 = this.zzaxn;
        if (l6 != null) {
            iZzf += zzyy.zzd(18, l6.longValue());
        }
        String str8 = this.zzaxo;
        if (str8 != null) {
            iZzf += zzyy.zzc(19, str8);
        }
        Boolean bool = this.zzaxp;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(20) + 1;
        }
        String str9 = this.zzafw;
        if (str9 != null) {
            iZzf += zzyy.zzc(21, str9);
        }
        Long l7 = this.zzaxq;
        if (l7 != null) {
            iZzf += zzyy.zzd(22, l7.longValue());
        }
        Integer num3 = this.zzaxr;
        if (num3 != null) {
            iZzf += zzyy.zzh(23, num3.intValue());
        }
        String str10 = this.zzagv;
        if (str10 != null) {
            iZzf += zzyy.zzc(24, str10);
        }
        String str11 = this.zzafx;
        if (str11 != null) {
            iZzf += zzyy.zzc(25, str11);
        }
        Long l8 = this.zzaxg;
        if (l8 != null) {
            iZzf += zzyy.zzd(26, l8.longValue());
        }
        Boolean bool2 = this.zzaxs;
        if (bool2 != null) {
            bool2.booleanValue();
            iZzf += zzyy.zzbb(28) + 1;
        }
        zzgd[] zzgdVarArr = this.zzaxt;
        if (zzgdVarArr != null && zzgdVarArr.length > 0) {
            while (true) {
                zzgd[] zzgdVarArr2 = this.zzaxt;
                if (i >= zzgdVarArr2.length) {
                    break;
                }
                zzgd zzgdVar = zzgdVarArr2[i];
                if (zzgdVar != null) {
                    iZzf += zzyy.zzb(29, zzgdVar);
                }
                i++;
            }
        }
        String str12 = this.zzafz;
        if (str12 != null) {
            iZzf += zzyy.zzc(30, str12);
        }
        Integer num4 = this.zzaxu;
        if (num4 != null) {
            iZzf += zzyy.zzh(31, num4.intValue());
        }
        Integer num5 = this.zzaxv;
        if (num5 != null) {
            iZzf += zzyy.zzh(32, num5.intValue());
        }
        Integer num6 = this.zzaxw;
        if (num6 != null) {
            iZzf += zzyy.zzh(33, num6.intValue());
        }
        String str13 = this.zzaxx;
        if (str13 != null) {
            iZzf += zzyy.zzc(34, str13);
        }
        Long l9 = this.zzaxy;
        if (l9 != null) {
            iZzf += zzyy.zzd(35, l9.longValue());
        }
        Long l10 = this.zzaxz;
        if (l10 != null) {
            iZzf += zzyy.zzd(36, l10.longValue());
        }
        String str14 = this.zzaya;
        if (str14 != null) {
            iZzf += zzyy.zzc(37, str14);
        }
        String str15 = this.zzayb;
        if (str15 != null) {
            iZzf += zzyy.zzc(38, str15);
        }
        Integer num7 = this.zzayc;
        if (num7 != null) {
            iZzf += zzyy.zzh(39, num7.intValue());
        }
        String str16 = this.zzawj;
        if (str16 != null) {
            iZzf += zzyy.zzc(41, str16);
        }
        zzfq.zzb zzbVar = this.zzayd;
        return zzbVar != null ? iZzf + zzut.zzc(44, zzbVar) : iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            switch (iZzug) {
                case 0:
                    return this;
                case 8:
                    this.zzaxa = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 18:
                    int iZzb = zzzj.zzb(zzyxVar, 18);
                    zzgf[] zzgfVarArr = this.zzaxb;
                    int length = zzgfVarArr == null ? 0 : zzgfVarArr.length;
                    zzgf[] zzgfVarArr2 = new zzgf[iZzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzaxb, 0, zzgfVarArr2, 0, length);
                    }
                    while (length < zzgfVarArr2.length - 1) {
                        zzgfVarArr2[length] = new zzgf();
                        zzyxVar.zza(zzgfVarArr2[length]);
                        zzyxVar.zzug();
                        length++;
                    }
                    zzgfVarArr2[length] = new zzgf();
                    zzyxVar.zza(zzgfVarArr2[length]);
                    this.zzaxb = zzgfVarArr2;
                    break;
                case 26:
                    int iZzb2 = zzzj.zzb(zzyxVar, 26);
                    zzgl[] zzglVarArr = this.zzaxc;
                    int length2 = zzglVarArr == null ? 0 : zzglVarArr.length;
                    zzgl[] zzglVarArr2 = new zzgl[iZzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzaxc, 0, zzglVarArr2, 0, length2);
                    }
                    while (length2 < zzglVarArr2.length - 1) {
                        zzglVarArr2[length2] = new zzgl();
                        zzyxVar.zza(zzglVarArr2[length2]);
                        zzyxVar.zzug();
                        length2++;
                    }
                    zzglVarArr2[length2] = new zzgl();
                    zzyxVar.zza(zzglVarArr2[length2]);
                    this.zzaxc = zzglVarArr2;
                    break;
                case 32:
                    this.zzaxd = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 40:
                    this.zzaxe = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 48:
                    this.zzaxf = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 56:
                    this.zzaxh = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 66:
                    this.zzaxi = zzyxVar.readString();
                    break;
                case 74:
                    this.zzaxj = zzyxVar.readString();
                    break;
                case 82:
                    this.zzaxk = zzyxVar.readString();
                    break;
                case 90:
                    this.zzaia = zzyxVar.readString();
                    break;
                case 96:
                    this.zzaxl = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 106:
                    this.zzage = zzyxVar.readString();
                    break;
                case 114:
                    this.zztt = zzyxVar.readString();
                    break;
                case 130:
                    this.zzts = zzyxVar.readString();
                    break;
                case 136:
                    this.zzaxm = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 144:
                    this.zzaxn = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 154:
                    this.zzaxo = zzyxVar.readString();
                    break;
                case 160:
                    this.zzaxp = Boolean.valueOf(zzyxVar.zzum());
                    break;
                case 170:
                    this.zzafw = zzyxVar.readString();
                    break;
                case 176:
                    this.zzaxq = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 184:
                    this.zzaxr = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 194:
                    this.zzagv = zzyxVar.readString();
                    break;
                case 202:
                    this.zzafx = zzyxVar.readString();
                    break;
                case 208:
                    this.zzaxg = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 224:
                    this.zzaxs = Boolean.valueOf(zzyxVar.zzum());
                    break;
                case 234:
                    int iZzb3 = zzzj.zzb(zzyxVar, 234);
                    zzgd[] zzgdVarArr = this.zzaxt;
                    int length3 = zzgdVarArr == null ? 0 : zzgdVarArr.length;
                    zzgd[] zzgdVarArr2 = new zzgd[iZzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzaxt, 0, zzgdVarArr2, 0, length3);
                    }
                    while (length3 < zzgdVarArr2.length - 1) {
                        zzgdVarArr2[length3] = new zzgd();
                        zzyxVar.zza(zzgdVarArr2[length3]);
                        zzyxVar.zzug();
                        length3++;
                    }
                    zzgdVarArr2[length3] = new zzgd();
                    zzyxVar.zza(zzgdVarArr2[length3]);
                    this.zzaxt = zzgdVarArr2;
                    break;
                case 242:
                    this.zzafz = zzyxVar.readString();
                    break;
                case 248:
                    this.zzaxu = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 256:
                    this.zzaxv = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 264:
                    this.zzaxw = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 274:
                    this.zzaxx = zzyxVar.readString();
                    break;
                case 280:
                    this.zzaxy = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 288:
                    this.zzaxz = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 298:
                    this.zzaya = zzyxVar.readString();
                    break;
                case 306:
                    this.zzayb = zzyxVar.readString();
                    break;
                case 312:
                    this.zzayc = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 330:
                    this.zzawj = zzyxVar.readString();
                    break;
                case 354:
                    this.zzayd = (zzfq.zzb) zzyxVar.zza(zzfq.zzb.zza());
                    break;
                default:
                    if (!super.zza(zzyxVar, iZzug)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }
}
