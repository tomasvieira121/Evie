package com.aol.mobile.sdk.controls;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.aol.mobile.sdk.controls.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0235a {

    /* JADX INFO: renamed from: a */
    private final Handler f32a;

    /* JADX INFO: renamed from: b */
    private final HashMap<Runnable, Long> f33b = new HashMap<>();

    public C0235a(Handler handler) {
        this.f32a = handler;
    }

    /* JADX INFO: renamed from: a */
    public void m3a() {
        for (Map.Entry<Runnable, Long> entry : this.f33b.entrySet()) {
            this.f32a.postDelayed(entry.getKey(), entry.getValue().longValue());
        }
    }

    /* JADX INFO: renamed from: a */
    public void m4a(long j, Runnable runnable) {
        this.f33b.put(runnable, Long.valueOf(j));
    }

    /* JADX INFO: renamed from: b */
    public void m5b() {
        if (this.f33b.isEmpty()) {
            return;
        }
        Iterator<Runnable> it = this.f33b.keySet().iterator();
        while (it.hasNext()) {
            this.f32a.removeCallbacks(it.next());
        }
        this.f33b.clear();
    }
}
