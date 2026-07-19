package com.voxel.launcher3;

import android.app.ActivityManager;
import android.content.Context;
import com.crashlytics.android.Crashlytics;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class MemoryCrashHandler {
    public void initPostFabric(final Context context) {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.voxel.launcher3.MemoryCrashHandler.1
            private final Thread.UncaughtExceptionHandler mUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                Timber.m551d("crash detected", new Object[0]);
                if ((th instanceof OutOfMemoryError) || (th != null && (th.getCause() instanceof OutOfMemoryError))) {
                    Runtime runtime = Runtime.getRuntime();
                    long j = 1048576;
                    Crashlytics.setLong("used_memory", (runtime.totalMemory() - runtime.freeMemory()) / j);
                    Crashlytics.setLong("free_memory", runtime.freeMemory() / j);
                    Crashlytics.setLong("total_memory", runtime.totalMemory() / j);
                    Crashlytics.setLong("max_memory", runtime.maxMemory() / j);
                    ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                    Crashlytics.setLong("memory_class", activityManager.getMemoryClass());
                    Crashlytics.setLong("large_memory_class", activityManager.getLargeMemoryClass());
                }
                this.mUncaughtExceptionHandler.uncaughtException(thread, th);
            }
        });
    }
}
