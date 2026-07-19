package com.evie.sidescreen.mvp;

import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleAwareMvpRecyclerAdapter_Factory implements Factory<LifecycleAwareMvpRecyclerAdapter> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;

    public LifecycleAwareMvpRecyclerAdapter_Factory(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2) {
        this.activationModelProvider = provider;
        this.lifecycleCallbacksProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LifecycleAwareMvpRecyclerAdapter get() {
        return new LifecycleAwareMvpRecyclerAdapter(this.activationModelProvider.get(), this.lifecycleCallbacksProvider.get());
    }

    public static LifecycleAwareMvpRecyclerAdapter_Factory create(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2) {
        return new LifecycleAwareMvpRecyclerAdapter_Factory(provider, provider2);
    }
}
