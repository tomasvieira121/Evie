package com.facebook.datasource;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface DataSource<T> {
    boolean close();

    @Nullable
    Throwable getFailureCause();

    float getProgress();

    @Nullable
    T getResult();

    boolean hasResult();

    boolean isFinished();

    void subscribe(DataSubscriber<T> dataSubscriber, Executor executor);
}
