package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class zzdo extends zzei {
    private static final Object zztn = new Object();
    private static volatile zzbj zzto;
    private zzax zztp;

    public zzdo(zzcz zzczVar, String str, String str2, zzba zzbaVar, int i, int i2, zzax zzaxVar) {
        super(zzczVar, str, str2, zzbaVar, i, 27);
        this.zztp = null;
        this.zztp = zzaxVar;
    }

    private final String zzas() {
        try {
            if (this.zzps.zzak() != null) {
                this.zzps.zzak().get();
            }
            zzba zzbaVarZzaj = this.zzps.zzaj();
            if (zzbaVarZzaj == null || zzbaVarZzaj.zzcx == null) {
                return null;
            }
            return zzbaVarZzaj.zzcx;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0080  */
    @Override // com.google.android.gms.internal.ads.zzei
    protected final void zzar() throws IllegalAccessException, InvocationTargetException {
        char c;
        boolean z;
        if (zzto == null || zzdg.zzo(zzto.zzcx) || zzto.zzcx.equals("E") || zzto.zzcx.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
            synchronized (zztn) {
                zzax zzaxVar = this.zztp;
                zzay zzayVar = null;
                if (zzdg.zzo(null)) {
                    zzax zzaxVar2 = this.zztp;
                    zzdg.zzo(null);
                    Boolean bool = false;
                    if (bool.booleanValue()) {
                        if (!this.zzps.zzah()) {
                            z = false;
                        } else if (!((Boolean) zzkb.zzik().zzd(zznk.zzbbb)).booleanValue()) {
                            z = false;
                        } else if (((Boolean) zzkb.zzik().zzd(zznk.zzbbc)).booleanValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            c = 3;
                        } else {
                            c = 2;
                        }
                    } else {
                        c = 2;
                    }
                } else {
                    c = 4;
                }
                Method method = this.zztz;
                Object[] objArr = new Object[3];
                objArr[0] = this.zzps.getContext();
                objArr[1] = Boolean.valueOf(c == 2);
                objArr[2] = zzkb.zzik().zzd(zznk.zzbav);
                zzbj zzbjVar = new zzbj((String) method.invoke(null, objArr));
                zzto = zzbjVar;
                if (zzdg.zzo(zzbjVar.zzcx) || zzto.zzcx.equals("E")) {
                    switch (c) {
                        case 3:
                            String strZzas = zzas();
                            if (!zzdg.zzo(strZzas)) {
                                zzto.zzcx = strZzas;
                            }
                            break;
                        case 4:
                            zzto.zzcx = zzayVar.zzcx;
                            break;
                    }
                }
            }
        }
        synchronized (this.zztq) {
            if (zzto != null) {
                this.zztq.zzcx = zzto.zzcx;
                this.zztq.zzeb = Long.valueOf(zzto.zzhx);
                this.zztq.zzcz = zzto.zzcz;
                this.zztq.zzda = zzto.zzda;
                this.zztq.zzdb = zzto.zzdb;
            }
        }
    }
}
