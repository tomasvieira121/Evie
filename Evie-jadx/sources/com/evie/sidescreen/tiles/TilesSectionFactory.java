package com.evie.sidescreen.tiles;

import android.content.Context;
import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.error.TilesErrorPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TilesSectionFactory {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<CompositeDisposable> cleanupDisposableProvider;
    private final Provider<ConnectivityModel> connectivityModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<Observable<Long>> refreshTimeLimitProvider;
    private final Provider<TilesLoadingPresenter> tilesLoadingPresenterProviderProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
    private final Provider<List<ItemPresenter>> unactivatedOverridePresentersProvider;

    public TilesSectionFactory(Provider<Context> provider, Provider<ActivationModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<ConnectivityModel> provider4, Provider<TopLevelTilePresenterFactory> provider5, Provider<TilesLoadingPresenter> provider6, Provider<Observable<Long>> provider7, Provider<List<ItemPresenter>> provider8, Provider<CompositeDisposable> provider9) {
        this.contextProvider = (Provider) checkNotNull(provider, 1);
        this.activationModelProvider = (Provider) checkNotNull(provider2, 2);
        this.lifecycleCallbacksProvider = (Provider) checkNotNull(provider3, 3);
        this.connectivityModelProvider = (Provider) checkNotNull(provider4, 4);
        this.topLevelTilePresenterFactoryProvider = (Provider) checkNotNull(provider5, 5);
        this.tilesLoadingPresenterProviderProvider = (Provider) checkNotNull(provider6, 6);
        this.refreshTimeLimitProvider = (Provider) checkNotNull(provider7, 7);
        this.unactivatedOverridePresentersProvider = (Provider) checkNotNull(provider8, 8);
        this.cleanupDisposableProvider = (Provider) checkNotNull(provider9, 9);
    }

    public TilesSection create(SideScreenContentModelInterface sideScreenContentModelInterface, TilesErrorPresenter tilesErrorPresenter, ScreenInfo screenInfo, ItemPresenter itemPresenter) {
        return new TilesSection((Context) checkNotNull(this.contextProvider.get(), 1), (ActivationModel) checkNotNull(this.activationModelProvider.get(), 2), (LifecycleCallbacks) checkNotNull(this.lifecycleCallbacksProvider.get(), 3), (ConnectivityModel) checkNotNull(this.connectivityModelProvider.get(), 4), (SideScreenContentModelInterface) checkNotNull(sideScreenContentModelInterface, 5), (TopLevelTilePresenterFactory) checkNotNull(this.topLevelTilePresenterFactoryProvider.get(), 6), this.tilesLoadingPresenterProviderProvider, (Observable) checkNotNull(this.refreshTimeLimitProvider.get(), 8), this.unactivatedOverridePresentersProvider.get(), (CompositeDisposable) checkNotNull(this.cleanupDisposableProvider.get(), 10), (TilesErrorPresenter) checkNotNull(tilesErrorPresenter, 11), (ScreenInfo) checkNotNull(screenInfo, 12), (ItemPresenter) checkNotNull(itemPresenter, 13));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
