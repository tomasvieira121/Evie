package io.fabric.sdk.android.services.concurrency;

/* JADX INFO: loaded from: classes2.dex */
public interface Task {
    boolean isFinished();

    void setError(Throwable th);

    void setFinished(boolean z);
}
