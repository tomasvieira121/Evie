package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.drive.zzaw;

/* JADX INFO: loaded from: classes.dex */
public class ExecutionOptions {
    private final String zzal;
    private final boolean zzam;
    private final int zzan;

    public static class Builder {
        protected String zzao;
        protected boolean zzap;
        protected int zzaq = 0;

        public ExecutionOptions build() {
            zzn();
            return new ExecutionOptions(this.zzao, this.zzap, this.zzaq);
        }

        protected final void zzn() {
            if (this.zzaq == 1 && !this.zzap) {
                throw new IllegalStateException("Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications");
            }
        }
    }

    public ExecutionOptions(String str, boolean z, int i) {
        this.zzal = str;
        this.zzam = z;
        this.zzan = i;
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            if (obj == this) {
                return true;
            }
            ExecutionOptions executionOptions = (ExecutionOptions) obj;
            if (Objects.equal(this.zzal, executionOptions.zzal) && this.zzan == executionOptions.zzan && this.zzam == executionOptions.zzam) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzal, Integer.valueOf(this.zzan), Boolean.valueOf(this.zzam));
    }

    @Deprecated
    public final void zza(GoogleApiClient googleApiClient) {
        zza((zzaw) googleApiClient.getClient(Drive.CLIENT_KEY));
    }

    public final void zza(zzaw zzawVar) {
        if (this.zzam && !zzawVar.zzag()) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
        }
    }

    public final String zzk() {
        return this.zzal;
    }

    public final boolean zzl() {
        return this.zzam;
    }

    public final int zzm() {
        return this.zzan;
    }
}
