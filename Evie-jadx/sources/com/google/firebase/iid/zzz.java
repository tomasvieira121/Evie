package com.google.firebase.iid;

import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import java.security.KeyPair;

/* JADX INFO: loaded from: classes.dex */
final class zzz {
    private final KeyPair zzbr;
    private final long zzbs;

    zzz(KeyPair keyPair, long j) {
        this.zzbr = keyPair;
        this.zzbs = j;
    }

    final KeyPair getKeyPair() {
        return this.zzbr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        return this.zzbs == zzzVar.zzbs && this.zzbr.getPublic().equals(zzzVar.zzbr.getPublic()) && this.zzbr.getPrivate().equals(zzzVar.zzbr.getPrivate());
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzbr.getPublic(), this.zzbr.getPrivate(), Long.valueOf(this.zzbs));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzv() {
        return Base64.encodeToString(this.zzbr.getPublic().getEncoded(), 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzw() {
        return Base64.encodeToString(this.zzbr.getPrivate().getEncoded(), 11);
    }
}
