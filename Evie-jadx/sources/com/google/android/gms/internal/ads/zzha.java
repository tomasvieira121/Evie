package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzha {
    private final int zzaiz;
    private final zzgq zzajb;
    private String zzajj;
    private String zzajk;
    private final boolean zzajl = false;
    private final int zzajm;
    private final int zzajn;

    public zzha(int i, int i2, int i3) {
        this.zzaiz = i;
        if (i2 > 64 || i2 < 0) {
            this.zzajm = 64;
        } else {
            this.zzajm = i2;
        }
        if (i3 <= 0) {
            this.zzajn = 1;
        } else {
            this.zzajn = i3;
        }
        this.zzajb = new zzgz(this.zzajm);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0093  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    public final String zza(ArrayList<String> arrayList, ArrayList<zzgp> arrayList2) {
        String string;
        boolean z;
        Collections.sort(arrayList2, new zzhb(this));
        HashSet hashSet = new HashSet();
        for (int i = 0; i < arrayList2.size(); i++) {
            String[] strArrSplit = Normalizer.normalize(arrayList.get(arrayList2.get(i).zzhf()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            boolean z2 = true;
            if (strArrSplit.length != 0) {
                for (String str : strArrSplit) {
                    if (str.indexOf("'") != -1) {
                        StringBuilder sb = new StringBuilder(str);
                        int i2 = 1;
                        boolean z3 = false;
                        while (true) {
                            int i3 = i2 + 2;
                            if (i3 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i2) == '\'') {
                                if (sb.charAt(i2 - 1) != ' ') {
                                    int i4 = i2 + 1;
                                    if ((sb.charAt(i4) == 's' || sb.charAt(i4) == 'S') && (i3 == sb.length() || sb.charAt(i3) == ' ')) {
                                        sb.insert(i2, ' ');
                                        i2 = i3;
                                    } else {
                                        sb.setCharAt(i2, ' ');
                                    }
                                } else {
                                    sb.setCharAt(i2, ' ');
                                }
                                z3 = true;
                            }
                            i2++;
                        }
                        string = z3 ? sb.toString() : null;
                        if (string != null) {
                            this.zzajk = string;
                        } else {
                            string = str;
                        }
                    } else {
                        string = str;
                    }
                    String[] strArrZzb = zzgu.zzb(string, true);
                    if (strArrZzb.length >= this.zzajn) {
                        int i5 = 0;
                        while (true) {
                            if (i5 < strArrZzb.length) {
                                String strConcat = "";
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= this.zzajn) {
                                        z = true;
                                        break;
                                    }
                                    int i7 = i5 + i6;
                                    if (i7 >= strArrZzb.length) {
                                        z = false;
                                        break;
                                    }
                                    if (i6 > 0) {
                                        strConcat = String.valueOf(strConcat).concat(" ");
                                    }
                                    String strValueOf = String.valueOf(strConcat);
                                    String strValueOf2 = String.valueOf(strArrZzb[i7]);
                                    strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                                    i6++;
                                }
                                if (z) {
                                    hashSet.add(strConcat);
                                    if (hashSet.size() < this.zzaiz) {
                                        i5++;
                                    }
                                }
                                z2 = false;
                                break;
                            }
                            if (hashSet.size() >= this.zzaiz) {
                                z2 = false;
                                break;
                            }
                        }
                    }
                }
            }
            if (!z2) {
                break;
            }
        }
        zzgt zzgtVar = new zzgt();
        this.zzajj = "";
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                zzgtVar.write(this.zzajb.zzx((String) it.next()));
            } catch (IOException e) {
                zzakb.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzgtVar.toString();
    }
}
