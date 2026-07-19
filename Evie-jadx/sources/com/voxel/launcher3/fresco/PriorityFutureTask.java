package com.voxel.launcher3.fresco;

import com.facebook.imagepipeline.common.Priority;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class PriorityFutureTask<V> extends FutureTask<V> {
    public final Priority priority;

    /* JADX INFO: renamed from: ts */
    public final long f518ts;

    public PriorityFutureTask(Priority priority, long j, Runnable runnable, V v) {
        super(runnable, v);
        this.f518ts = j;
        this.priority = priority;
    }

    @Override // java.util.concurrent.FutureTask
    public String toString() {
        return this.priority.toString() + " " + this.f518ts;
    }
}
