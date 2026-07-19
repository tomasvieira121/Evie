package com.google.android.exoplayer2.util;

import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class PriorityTaskManager {
    private int highestPriority;
    private final Object lock;
    private final PriorityQueue<Integer> queue;

    public void add(int i) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i));
            this.highestPriority = Math.max(this.highestPriority, i);
        }
    }

    public void remove(int i) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : this.queue.peek().intValue();
            this.lock.notifyAll();
        }
    }
}
