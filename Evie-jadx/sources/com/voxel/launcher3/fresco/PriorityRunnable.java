package com.voxel.launcher3.fresco;

import android.os.SystemClock;
import com.facebook.imagepipeline.common.Priority;

/* JADX INFO: loaded from: classes.dex */
public abstract class PriorityRunnable implements Runnable {
    public final Priority priority;

    /* JADX INFO: renamed from: ts */
    public final long f519ts = SystemClock.elapsedRealtimeNanos();

    public PriorityRunnable(Priority priority) {
        this.priority = priority;
    }
}
