package com.evie.sidescreen.dagger;

import com.evie.sidescreen.lifecycle.LifecycleCallbacks;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleCallbacksModule {
    private final LifecycleCallbacks mLifecycleCallbacks;

    public LifecycleCallbacksModule(LifecycleCallbacks lifecycleCallbacks) {
        this.mLifecycleCallbacks = lifecycleCallbacks;
    }

    public LifecycleCallbacks providesLifecycleCallbacks() {
        return this.mLifecycleCallbacks;
    }
}
