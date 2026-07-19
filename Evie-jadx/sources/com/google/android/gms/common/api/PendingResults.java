package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PendingResults {

    private static final class zab<R extends Result> extends BasePendingResult<R> {
        private final R zaci;

        public zab(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.zaci = r;
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        protected final R createFailedResult(Status status) {
            return this.zaci;
        }
    }

    public static PendingResult<Status> immediatePendingResult(Status status, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }

    public static <R extends Result> PendingResult<R> immediateFailedResult(R r, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zab zabVar = new zab(googleApiClient, r);
        zabVar.setResult(r);
        return zabVar;
    }
}
