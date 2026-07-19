package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.prompts.announcement.AnnouncementSection;
import com.evie.sidescreen.prompts.breakingnews.BreakingNewsSection;
import com.evie.sidescreen.tiles.TilesSection;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.error.TilesErrorPresenter;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import is.shortcut.BuildConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory(allowSubclasses = BuildConfig.IS_END_USER_BUILD)
public class SideScreenMainTabSectionModel implements SideScreenTabSectionModelInterface {
    private final AnnouncementSection mAnnouncementSection;
    private final BreakingNewsSection mBreakingNewsSection;
    private final List<ItemPresenter> mCustomMainTabPresenters;
    private final DataWarningCardPresenter mDataWarningCardPresenter;
    private final FooterPresenter mFooterPresenter;
    private final FrequentlyUsedPresenter mFrequentlyUsedPresenter;
    private final String mTabPath;
    private final TilesSection mTilesSection;
    private final boolean mTopHeaderEnabled;

    public SideScreenMainTabSectionModel(@Provided List<ItemPresenter> list, @Provided Provider<FrequentlyUsedPresenter> provider, @Provided Provider<DataWarningCardPresenter> provider2, @Provided TilesSectionFactory tilesSectionFactory, @Provided Provider<FooterPresenter> provider3, @Provided Provider<AnnouncementSection> provider4, @Provided Provider<BreakingNewsSection> provider5, @Provided boolean z, @Provided Observable<Boolean> observable, @Provided boolean z2, @Provided PersonalizeTileHeaderPresenterFactory personalizeTileHeaderPresenterFactory, SideScreenContentModelInterface sideScreenContentModelInterface, String str) {
        this.mCustomMainTabPresenters = list;
        this.mFrequentlyUsedPresenter = z2 ? provider.get() : null;
        this.mDataWarningCardPresenter = provider2.get();
        this.mTilesSection = tilesSectionFactory.create(sideScreenContentModelInterface, new TilesErrorPresenter(sideScreenContentModelInterface), new ScreenInfo("side_screen", null, null), personalizeTileHeaderPresenterFactory.create(observable));
        this.mTopHeaderEnabled = z;
        this.mFooterPresenter = provider3.get();
        this.mAnnouncementSection = provider4.get();
        this.mBreakingNewsSection = provider5.get();
        this.mTabPath = str;
    }

    @Override // com.evie.sidescreen.SideScreenTabSectionModelInterface
    public ScreenInfo getScreenInfo() {
        return this.mTilesSection.getScreenInfo();
    }

    @Override // com.evie.sidescreen.SideScreenTabSectionModelInterface
    public Observable<Boolean> getIntervalRefreshSubject() {
        return this.mTilesSection.isRefreshedAfterInterval();
    }

    @Override // com.evie.sidescreen.SideScreenTabSectionModelInterface
    public Observable<List<ItemPresenter>> getSideScreenSections(Boolean bool) {
        ArrayList arrayList = new ArrayList();
        if (this.mTopHeaderEnabled) {
            arrayList.add(Observable.just(new TopEmptyItemPresenter()));
        }
        arrayList.add(Observable.just(this.mCustomMainTabPresenters));
        FrequentlyUsedPresenter frequentlyUsedPresenter = this.mFrequentlyUsedPresenter;
        if (frequentlyUsedPresenter != null) {
            arrayList.add(Observable.just(frequentlyUsedPresenter));
        }
        if (bool.booleanValue()) {
            arrayList.add(Observable.just(this.mDataWarningCardPresenter));
        }
        arrayList.add(this.mAnnouncementSection.getPresenters());
        arrayList.add(this.mBreakingNewsSection.getPresenters());
        arrayList.add(this.mTilesSection.getPresenters());
        arrayList.add(Observable.just(this.mFooterPresenter));
        return Observable.combineLatest(arrayList, new Function() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SideScreenMainTabSectionModel.lambda$getSideScreenSections$0((Object[]) obj);
            }
        });
    }

    static /* synthetic */ List lambda$getSideScreenSections$0(Object[] objArr) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj instanceof ItemPresenter) {
                arrayList.add((ItemPresenter) obj);
            } else if (obj instanceof List) {
                arrayList.addAll((Collection) obj);
            }
        }
        return arrayList;
    }

    @Override // com.evie.sidescreen.SideScreenTabSectionModelInterface
    public String getTabPath() {
        return this.mTabPath;
    }
}
