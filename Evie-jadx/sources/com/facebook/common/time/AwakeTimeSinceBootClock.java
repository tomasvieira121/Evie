package com.facebook.common.time;

import com.facebook.common.internal.DoNotStrip;

/* JADX INFO: loaded from: classes.dex */
@DoNotStrip
public class AwakeTimeSinceBootClock implements MonotonicClock {

    @DoNotStrip
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    @DoNotStrip
    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override // com.facebook.common.time.MonotonicClock
    @DoNotStrip
    public long now() {
        return android.os.SystemClock.uptimeMillis();
    }
}
