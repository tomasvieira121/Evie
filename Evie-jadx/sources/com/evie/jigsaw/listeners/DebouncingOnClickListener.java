package com.evie.jigsaw.listeners;

import android.os.SystemClock;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class DebouncingOnClickListener implements View.OnClickListener {
    private final long clickDelay;
    private long lastClickTime;

    protected abstract void click(View view);

    public DebouncingOnClickListener() {
        this(500L);
    }

    public DebouncingOnClickListener(long j) {
        this.lastClickTime = -1L;
        this.clickDelay = j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis - this.lastClickTime < this.clickDelay) {
            return;
        }
        this.lastClickTime = jUptimeMillis;
        click(view);
    }
}
