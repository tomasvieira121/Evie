package com.evie.sidescreen;

import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.prompts.announcement.AnnouncementSection;
import com.evie.sidescreen.prompts.breakingnews.BreakingNewsSection;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenterFactory;
import dagger.internal.Factory;
import io.reactivex.Observable;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenMainTabSectionModelFactory_Factory implements Factory<SideScreenMainTabSectionModelFactory> {
    private final Provider<AnnouncementSection> announcementProvider;
    private final Provider<BreakingNewsSection> breakingNewsSectionProvider;
    private final Provider<List<ItemPresenter>> customMainTabPresentersProvider;
    private final Provider<DataWarningCardPresenter> dataWarningCardProvider;
    private final Provider<Observable<Boolean>> enableDataDebugProvider;
    private final Provider<FooterPresenter> footerProvider;
    private final Provider<Boolean> frequentlyUsedEnabledProvider;
    private final Provider<FrequentlyUsedPresenter> frequentlyUsedProvider;
    private final Provider<PersonalizeTileHeaderPresenterFactory> personalizeHeaderPresenterFactoryProvider;
    private final Provider<TilesSectionFactory> tilesSectionFactoryProvider;
    private final Provider<Boolean> topHeaderEnabledProvider;

    public SideScreenMainTabSectionModelFactory_Factory(Provider<List<ItemPresenter>> provider, Provider<FrequentlyUsedPresenter> provider2, Provider<DataWarningCardPresenter> provider3, Provider<TilesSectionFactory> provider4, Provider<FooterPresenter> provider5, Provider<AnnouncementSection> provider6, Provider<BreakingNewsSection> provider7, Provider<Boolean> provider8, Provider<Observable<Boolean>> provider9, Provider<Boolean> provider10, Provider<PersonalizeTileHeaderPresenterFactory> provider11) {
        this.customMainTabPresentersProvider = provider;
        this.frequentlyUsedProvider = provider2;
        this.dataWarningCardProvider = provider3;
        this.tilesSectionFactoryProvider = provider4;
        this.footerProvider = provider5;
        this.announcementProvider = provider6;
        this.breakingNewsSectionProvider = provider7;
        this.topHeaderEnabledProvider = provider8;
        this.enableDataDebugProvider = provider9;
        this.frequentlyUsedEnabledProvider = provider10;
        this.personalizeHeaderPresenterFactoryProvider = provider11;
    }

    @Override // javax.inject.Provider
    public SideScreenMainTabSectionModelFactory get() {
        return new SideScreenMainTabSectionModelFactory(this.customMainTabPresentersProvider, this.frequentlyUsedProvider, this.dataWarningCardProvider, this.tilesSectionFactoryProvider, this.footerProvider, this.announcementProvider, this.breakingNewsSectionProvider, this.topHeaderEnabledProvider, this.enableDataDebugProvider, this.frequentlyUsedEnabledProvider, this.personalizeHeaderPresenterFactoryProvider);
    }

    public static SideScreenMainTabSectionModelFactory_Factory create(Provider<List<ItemPresenter>> provider, Provider<FrequentlyUsedPresenter> provider2, Provider<DataWarningCardPresenter> provider3, Provider<TilesSectionFactory> provider4, Provider<FooterPresenter> provider5, Provider<AnnouncementSection> provider6, Provider<BreakingNewsSection> provider7, Provider<Boolean> provider8, Provider<Observable<Boolean>> provider9, Provider<Boolean> provider10, Provider<PersonalizeTileHeaderPresenterFactory> provider11) {
        return new SideScreenMainTabSectionModelFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }
}
