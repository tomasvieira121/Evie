package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzuy {
    private static final Class<?> zzbvi = zzvk();

    private static Class<?> zzvk() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzuz zzvl() {
        if (zzbvi != null) {
            try {
                return zzfz("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return zzuz.zzbvm;
    }

    static zzuz zzvm() {
        zzuz zzuzVarZzfz;
        if (zzbvi != null) {
            try {
                zzuzVarZzfz = zzfz("loadGeneratedRegistry");
            } catch (Exception unused) {
                zzuzVarZzfz = null;
            }
        } else {
            zzuzVarZzfz = null;
        }
        if (zzuzVarZzfz == null) {
            zzuzVarZzfz = zzuz.zzvm();
        }
        return zzuzVarZzfz == null ? zzvl() : zzuzVarZzfz;
    }

    private static final zzuz zzfz(String str) throws Exception {
        return (zzuz) zzbvi.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
