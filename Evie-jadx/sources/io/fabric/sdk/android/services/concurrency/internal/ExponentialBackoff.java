package io.fabric.sdk.android.services.concurrency.internal;

/* JADX INFO: loaded from: classes2.dex */
public class ExponentialBackoff implements Backoff {
    private final long baseTimeMillis;
    private final int power;

    public ExponentialBackoff(long j, int i) {
        this.baseTimeMillis = j;
        this.power = i;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.Backoff
    public long getDelayMillis(int i) {
        double d = this.baseTimeMillis;
        double dPow = Math.pow(this.power, i);
        Double.isNaN(d);
        return (long) (d * dPow);
    }
}
