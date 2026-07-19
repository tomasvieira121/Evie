package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.prompts.announcement.AnnouncementSection;
import com.evie.sidescreen.prompts.breakingnews.BreakingNewsSection;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenterFactory;
import io.reactivex.Observable;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenMainTabSectionModelFactory {
    private final Provider<AnnouncementSection> announcementProviderProvider;
    private final Provider<BreakingNewsSection> breakingNewsSectionProviderProvider;
    private final Provider<List<ItemPresenter>> customMainTabPresentersProvider;
    private final Provider<DataWarningCardPresenter> dataWarningCardProviderProvider;
    private final Provider<Observable<Boolean>> enableDataDebugProvider;
    private final Provider<FooterPresenter> footerProviderProvider;
    private final Provider<Boolean> frequentlyUsedEnabledProvider;
    private final Provider<FrequentlyUsedPresenter> frequentlyUsedProviderProvider;
    private final Provider<PersonalizeTileHeaderPresenterFactory> personalizeHeaderPresenterFactoryProvider;
    private final Provider<TilesSectionFactory> tilesSectionFactoryProvider;
    private final Provider<Boolean> topHeaderEnabledProvider;

    public SideScreenMainTabSectionModelFactory(Provider<List<ItemPresenter>> provider, Provider<FrequentlyUsedPresenter> provider2, Provider<DataWarningCardPresenter> provider3, Provider<TilesSectionFactory> provider4, Provider<FooterPresenter> provider5, Provider<AnnouncementSection> provider6, Provider<BreakingNewsSection> provider7, Provider<Boolean> provider8, Provider<Observable<Boolean>> provider9, Provider<Boolean> provider10, Provider<PersonalizeTileHeaderPresenterFactory> provider11) {
        this.customMainTabPresentersProvider = (Provider) checkNotNull(provider, 1);
        this.frequentlyUsedProviderProvider = (Provider) checkNotNull(provider2, 2);
        this.dataWarningCardProviderProvider = (Provider) checkNotNull(provider3, 3);
        this.tilesSectionFactoryProvider = (Provider) checkNotNull(provider4, 4);
        this.footerProviderProvider = (Provider) checkNotNull(provider5, 5);
        this.announcementProviderProvider = (Provider) checkNotNull(provider6, 6);
        this.breakingNewsSectionProviderProvider = (Provider) checkNotNull(provider7, 7);
        this.topHeaderEnabledProvider = (Provider) checkNotNull(provider8, 8);
        this.enableDataDebugProvider = (Provider) checkNotNull(provider9, 9);
        this.frequentlyUsedEnabledProvider = (Provider) checkNotNull(provider10, 10);
        this.personalizeHeaderPresenterFactoryProvider = (Provider) checkNotNull(provider11, 11);
    }

    public SideScreenMainTabSectionModel create(SideScreenContentModelInterface sideScreenContentModelInterface, String str) {
        return new SideScreenMainTabSectionModel((List) checkNotNull(this.customMainTabPresentersProvider.get(), 1), this.frequentlyUsedProviderProvider, this.dataWarningCardProviderProvider, (TilesSectionFactory) checkNotNull(this.tilesSectionFactoryProvider.get(), 4), this.footerProviderProvider, this.announcementProviderProvider, this.breakingNewsSectionProviderProvider, ((Boolean) checkNotNull(this.topHeaderEnabledProvider.get(), 8)).booleanValue(), (Observable) checkNotNull(this.enableDataDebugProvider.get(), 9), ((Boolean) checkNotNull(this.frequentlyUsedEnabledProvider.get(), 10)).booleanValue(), (PersonalizeTileHeaderPresenterFactory) checkNotNull(this.personalizeHeaderPresenterFactoryProvider.get(), 11), (SideScreenContentModelInterface) checkNotNull(sideScreenContentModelInterface, 12), (String) checkNotNull(str, 13));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
