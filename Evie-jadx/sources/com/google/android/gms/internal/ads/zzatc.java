package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
final class zzatc {
    private static final String[] zzdbo = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzdbp = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};

    zzatc() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0039  */
    private static void zzd(String str, String str2, String str3) {
        String host;
        if (((Boolean) zzkb.zzik().zzd(zznk.zzazy)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("err", str);
            bundle.putString("code", str2);
            if (TextUtils.isEmpty(str3)) {
                host = "";
            } else {
                Uri uri = Uri.parse(str3);
                if (uri.getHost() != null) {
                    host = uri.getHost();
                } else {
                    host = "";
                }
            }
            bundle.putString("host", host);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    final void zzb(@Nullable SslError sslError) {
        String strValueOf;
        if (sslError == null) {
            return;
        }
        int primaryError = sslError.getPrimaryError();
        if (primaryError >= 0) {
            String[] strArr = zzdbp;
            if (primaryError < strArr.length) {
                strValueOf = strArr[primaryError];
            } else {
                strValueOf = String.valueOf(primaryError);
            }
        } else {
            strValueOf = String.valueOf(primaryError);
        }
        zzd("ssl_err", strValueOf, sslError.getUrl());
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    final void zze(int i, String str) {
        String strValueOf;
        if (i < 0) {
            int i2 = (-i) - 1;
            String[] strArr = zzdbo;
            if (i2 < strArr.length) {
                strValueOf = strArr[i2];
            } else {
                strValueOf = String.valueOf(i);
            }
        } else {
            strValueOf = String.valueOf(i);
        }
        zzd("http_err", strValueOf, str);
    }
}
