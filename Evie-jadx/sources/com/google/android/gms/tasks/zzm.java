package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
final class zzm<TResult> implements zzq<TResult> {
    private final Object mLock = new Object();
    private final Executor zzd;

    @GuardedBy("mLock")
    private OnSuccessListener<? super TResult> zzp;

    public zzm(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzd = executor;
        this.zzp = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(Task<TResult> task) {
        if (task.isSuccessful()) {
            synchronized (this.mLock) {
                if (this.zzp == null) {
                    return;
                }
                this.zzd.execute(new zzn(this, task));
            }
        }
    }
}
