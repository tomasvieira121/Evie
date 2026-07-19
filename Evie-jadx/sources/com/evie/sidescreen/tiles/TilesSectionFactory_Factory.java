package com.evie.sidescreen.tiles;

import android.content.Context;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter;
import dagger.internal.Factory;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TilesSectionFactory_Factory implements Factory<TilesSectionFactory> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<CompositeDisposable> cleanupDisposableProvider;
    private final Provider<ConnectivityModel> connectivityModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<Observable<Long>> refreshTimeLimitProvider;
    private final Provider<TilesLoadingPresenter> tilesLoadingPresenterProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
    private final Provider<List<ItemPresenter>> unactivatedOverridePresentersProvider;

    public TilesSectionFactory_Factory(Provider<Context> provider, Provider<ActivationModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<ConnectivityModel> provider4, Provider<TopLevelTilePresenterFactory> provider5, Provider<TilesLoadingPresenter> provider6, Provider<Observable<Long>> provider7, Provider<List<ItemPresenter>> provider8, Provider<CompositeDisposable> provider9) {
        this.contextProvider = provider;
        this.activationModelProvider = provider2;
        this.lifecycleCallbacksProvider = provider3;
        this.connectivityModelProvider = provider4;
        this.topLevelTilePresenterFactoryProvider = provider5;
        this.tilesLoadingPresenterProvider = provider6;
        this.refreshTimeLimitProvider = provider7;
        this.unactivatedOverridePresentersProvider = provider8;
        this.cleanupDisposableProvider = provider9;
    }

    @Override // javax.inject.Provider
    public TilesSectionFactory get() {
        return new TilesSectionFactory(this.contextProvider, this.activationModelProvider, this.lifecycleCallbacksProvider, this.connectivityModelProvider, this.topLevelTilePresenterFactoryProvider, this.tilesLoadingPresenterProvider, this.refreshTimeLimitProvider, this.unactivatedOverridePresentersProvider, this.cleanupDisposableProvider);
    }

    public static TilesSectionFactory_Factory create(Provider<Context> provider, Provider<ActivationModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<ConnectivityModel> provider4, Provider<TopLevelTilePresenterFactory> provider5, Provider<TilesLoadingPresenter> provider6, Provider<Observable<Long>> provider7, Provider<List<ItemPresenter>> provider8, Provider<CompositeDisposable> provider9) {
        return new TilesSectionFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }
}
