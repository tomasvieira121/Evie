package com.evie.sidescreen.tiles.loading;

import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TilesLoadingPresenter_Factory implements Factory<TilesLoadingPresenter> {
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;

    public TilesLoadingPresenter_Factory(Provider<LifecycleCallbacks> provider) {
        this.lifecycleCallbacksProvider = provider;
    }

    @Override // javax.inject.Provider
    public TilesLoadingPresenter get() {
        return new TilesLoadingPresenter(this.lifecycleCallbacksProvider.get());
    }

    public static TilesLoadingPresenter_Factory create(Provider<LifecycleCallbacks> provider) {
        return new TilesLoadingPresenter_Factory(provider);
    }
}
