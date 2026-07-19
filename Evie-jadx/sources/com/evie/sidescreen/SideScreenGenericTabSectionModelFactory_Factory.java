package com.evie.sidescreen;

import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenterFactory;
import dagger.internal.Factory;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenGenericTabSectionModelFactory_Factory implements Factory<SideScreenGenericTabSectionModelFactory> {
    private final Provider<DataWarningCardPresenter> dataWarningCardProvider;
    private final Provider<Observable<Boolean>> enableDataDebugProvider;
    private final Provider<FooterPresenter> footerProvider;
    private final Provider<PlainTilesHeaderPresenterFactory> plainHeaderPresenterFactoryProvider;
    private final Provider<TilesSectionFactory> tilesSectionFactoryProvider;

    public SideScreenGenericTabSectionModelFactory_Factory(Provider<DataWarningCardPresenter> provider, Provider<TilesSectionFactory> provider2, Provider<Observable<Boolean>> provider3, Provider<FooterPresenter> provider4, Provider<PlainTilesHeaderPresenterFactory> provider5) {
        this.dataWarningCardProvider = provider;
        this.tilesSectionFactoryProvider = provider2;
        this.enableDataDebugProvider = provider3;
        this.footerProvider = provider4;
        this.plainHeaderPresenterFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public SideScreenGenericTabSectionModelFactory get() {
        return new SideScreenGenericTabSectionModelFactory(this.dataWarningCardProvider, this.tilesSectionFactoryProvider, this.enableDataDebugProvider, this.footerProvider, this.plainHeaderPresenterFactoryProvider);
    }

    public static SideScreenGenericTabSectionModelFactory_Factory create(Provider<DataWarningCardPresenter> provider, Provider<TilesSectionFactory> provider2, Provider<Observable<Boolean>> provider3, Provider<FooterPresenter> provider4, Provider<PlainTilesHeaderPresenterFactory> provider5) {
        return new SideScreenGenericTabSectionModelFactory_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
