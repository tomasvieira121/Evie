package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TilesSection;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.error.TilesErrorPresenter;
import com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import is.shortcut.BuildConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Provider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory(allowSubclasses = BuildConfig.IS_END_USER_BUILD)
public class SideScreenGenericTabSectionModel implements SideScreenTabSectionModelInterface {
    private final DataWarningCardPresenter mDataWarningCardPresenter;
    private final FooterPresenter mFooterPresenter;
    private final String mTabPath;
    private final TilesSection mTilesSection;

    public SideScreenGenericTabSectionModel(@Provided Provider<DataWarningCardPresenter> provider, @Provided TilesSectionFactory tilesSectionFactory, @Provided Observable<Boolean> observable, @Provided Provider<FooterPresenter> provider2, @Provided PlainTilesHeaderPresenterFactory plainTilesHeaderPresenterFactory, SideScreenContentModelInterface sideScreenContentModelInterface, String str, String str2) {
        this.mDataWarningCardPresenter = provider.get();
        this.mTilesSection = tilesSectionFactory.create(sideScreenContentModelInterface, new TilesErrorPresenter(sideScreenContentModelInterface), new ScreenInfo(str2, null, null), plainTilesHeaderPresenterFactory.create(observable, str));
        this.mFooterPresenter = provider2.get();
        this.mTabPath = str2;
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
        arrayList.add(Observable.just(new TopEmptyShortItemPresenter()));
        if (bool != null && bool.booleanValue()) {
            arrayList.add(Observable.just(this.mDataWarningCardPresenter));
        }
        arrayList.add(this.mTilesSection.getPresenters());
        arrayList.add(Observable.just(this.mFooterPresenter));
        return Observable.combineLatest(arrayList, new Function() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SideScreenGenericTabSectionModel.lambda$getSideScreenSections$0((Object[]) obj);
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
        Timber.m551d("items: %d", Integer.valueOf(arrayList.size()));
        return arrayList;
    }

    @Override // com.evie.sidescreen.SideScreenTabSectionModelInterface
    public String getTabPath() {
        return this.mTabPath;
    }
}
