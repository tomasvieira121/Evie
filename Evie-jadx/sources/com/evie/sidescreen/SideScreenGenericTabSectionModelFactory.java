package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenterFactory;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenGenericTabSectionModelFactory {
    private final Provider<DataWarningCardPresenter> dataWarningCardProviderProvider;
    private final Provider<Observable<Boolean>> enableDataDebugProvider;
    private final Provider<FooterPresenter> footerProviderProvider;
    private final Provider<PlainTilesHeaderPresenterFactory> plainHeaderPresenterFactoryProvider;
    private final Provider<TilesSectionFactory> tilesSectionFactoryProvider;

    public SideScreenGenericTabSectionModelFactory(Provider<DataWarningCardPresenter> provider, Provider<TilesSectionFactory> provider2, Provider<Observable<Boolean>> provider3, Provider<FooterPresenter> provider4, Provider<PlainTilesHeaderPresenterFactory> provider5) {
        this.dataWarningCardProviderProvider = (Provider) checkNotNull(provider, 1);
        this.tilesSectionFactoryProvider = (Provider) checkNotNull(provider2, 2);
        this.enableDataDebugProvider = (Provider) checkNotNull(provider3, 3);
        this.footerProviderProvider = (Provider) checkNotNull(provider4, 4);
        this.plainHeaderPresenterFactoryProvider = (Provider) checkNotNull(provider5, 5);
    }

    public SideScreenGenericTabSectionModel create(SideScreenContentModelInterface sideScreenContentModelInterface, String str, String str2) {
        return new SideScreenGenericTabSectionModel(this.dataWarningCardProviderProvider, (TilesSectionFactory) checkNotNull(this.tilesSectionFactoryProvider.get(), 2), (Observable) checkNotNull(this.enableDataDebugProvider.get(), 3), this.footerProviderProvider, (PlainTilesHeaderPresenterFactory) checkNotNull(this.plainHeaderPresenterFactoryProvider.get(), 5), (SideScreenContentModelInterface) checkNotNull(sideScreenContentModelInterface, 6), (String) checkNotNull(str, 7), (String) checkNotNull(str2, 8));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
