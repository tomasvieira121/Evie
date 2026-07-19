package com.google.firebase.iid;

/* JADX INFO: loaded from: classes.dex */
final class zzx implements InstanceIdResult {
    private final String zzbp;
    private final String zzbq;

    zzx(String str, String str2) {
        this.zzbp = str;
        this.zzbq = str2;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public final String getToken() {
        return this.zzbq;
    }
}
