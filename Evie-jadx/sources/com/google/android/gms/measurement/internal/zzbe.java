package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class zzbe {
    private final long zzabv;
    private final /* synthetic */ zzba zzany;
    private final String zzaoa;
    private final String zzaob;
    private final String zzaoc;

    private zzbe(zzba zzbaVar, String str, long j) {
        this.zzany = zzbaVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.zzaoa = String.valueOf(str).concat(":start");
        this.zzaob = String.valueOf(str).concat(":count");
        this.zzaoc = String.valueOf(str).concat(":value");
        this.zzabv = j;
    }

    private final void zzfl() {
        this.zzany.zzaf();
        long jCurrentTimeMillis = this.zzany.zzbx().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.zzany.zzjr().edit();
        editorEdit.remove(this.zzaob);
        editorEdit.remove(this.zzaoc);
        editorEdit.putLong(this.zzaoa, jCurrentTimeMillis);
        editorEdit.apply();
    }

    public final void zzc(String str, long j) {
        this.zzany.zzaf();
        if (zzfn() == 0) {
            zzfl();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.zzany.zzjr().getLong(this.zzaob, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor editorEdit = this.zzany.zzjr().edit();
            editorEdit.putString(this.zzaoc, str);
            editorEdit.putLong(this.zzaob, 1L);
            editorEdit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.zzany.zzgm().zzmd().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor editorEdit2 = this.zzany.zzjr().edit();
        if (z) {
            editorEdit2.putString(this.zzaoc, str);
        }
        editorEdit2.putLong(this.zzaob, j3);
        editorEdit2.apply();
    }

    public final Pair<String, Long> zzfm() {
        long jAbs;
        this.zzany.zzaf();
        this.zzany.zzaf();
        long jZzfn = zzfn();
        if (jZzfn == 0) {
            zzfl();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jZzfn - this.zzany.zzbx().currentTimeMillis());
        }
        long j = this.zzabv;
        if (jAbs < j) {
            return null;
        }
        if (jAbs > (j << 1)) {
            zzfl();
            return null;
        }
        String string = this.zzany.zzjr().getString(this.zzaoc, null);
        long j2 = this.zzany.zzjr().getLong(this.zzaob, 0L);
        zzfl();
        if (string == null || j2 <= 0) {
            return zzba.zzanc;
        }
        return new Pair<>(string, Long.valueOf(j2));
    }

    private final long zzfn() {
        return this.zzany.zzjr().getLong(this.zzaoa, 0L);
    }
}
