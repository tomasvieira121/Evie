package com.evie.sidescreen;

import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.SparseArrayCompat;
import com.evie.common.data.Lce;
import com.evie.models.config.ConfigTab;
import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.models.sidescreen.SideScreenContentTabModelFactory;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TabsModel {
    private static final ConfigTab MAIN_CONFIG_TAB = new ConfigTab("main", "main");
    private final AnalyticsModel mAnalyticsModel;
    private final CompositeDisposable mDisposables;
    private SideScreenGenericTabSectionModelFactory mGenericTabModelFactory;
    private SideScreenMainTabSectionModelFactory mMainTabModelFactory;
    private final SideScreenConfigurationModel mSideScreenConfigurationModel;
    private SideScreenContentModelInterface mTabContentInterface;
    private SideScreenContentTabModelFactory mTabContentModelFactory;
    private SideScreenTabSectionModelInterface mTabSectionInterface;
    private final SparseArrayCompat<Pair<Integer, Integer>> mTabScrollPositions = new SparseArrayCompat<>();
    private final SparseArrayCompat<SideScreenContentModelInterface> mTabContentsMap = new SparseArrayCompat<>();
    private final SparseArrayCompat<SideScreenTabSectionModelInterface> mTabSectionsMap = new SparseArrayCompat<>();
    private final List<ConfigTab> mConfigTabsList = new ArrayList();
    private final BehaviorSubject<Integer> mTabIndexSubject = BehaviorSubject.createDefault(0);
    private final BehaviorSubject<List<String>> mTabLabelsSubject = BehaviorSubject.createDefault(new ArrayList());
    private final PublishSubject<Boolean> mTabHideRefreshSubject = PublishSubject.create();
    private final BehaviorSubject<Boolean> mTabEnabledSubject = BehaviorSubject.createDefault(false);
    private final PublishSubject<Integer> mTabIndicatorIndexSubject = PublishSubject.create();

    public TabsModel(@Provided AnalyticsModel analyticsModel, CompositeDisposable compositeDisposable, @Provided SideScreenConfigurationModel sideScreenConfigurationModel, @Provided SideScreenMainTabSectionModelFactory sideScreenMainTabSectionModelFactory, @Provided SideScreenGenericTabSectionModelFactory sideScreenGenericTabSectionModelFactory, @Provided SideScreenContentTabModelFactory sideScreenContentTabModelFactory) {
        this.mAnalyticsModel = analyticsModel;
        this.mDisposables = compositeDisposable;
        this.mMainTabModelFactory = sideScreenMainTabSectionModelFactory;
        this.mGenericTabModelFactory = sideScreenGenericTabSectionModelFactory;
        this.mSideScreenConfigurationModel = sideScreenConfigurationModel;
        this.mTabContentModelFactory = sideScreenContentTabModelFactory;
        this.mTabContentInterface = this.mTabContentModelFactory.create("main");
        this.mConfigTabsList.addAll(this.mSideScreenConfigurationModel.getSideScreenConfiguration().getConfigTabs());
        if (this.mConfigTabsList.isEmpty()) {
            this.mConfigTabsList.add(MAIN_CONFIG_TAB);
        }
        this.mTabSectionInterface = this.mMainTabModelFactory.create(this.mTabContentInterface, this.mConfigTabsList.get(0).getPath());
        this.mTabSectionsMap.put(0, this.mTabSectionInterface);
        this.mTabContentsMap.put(0, this.mTabContentInterface);
    }

    public void onTabClick(int i, int i2, int i3) {
        HashMap map = new HashMap();
        map.put("item_type", this.mConfigTabsList.get(i).getPath());
        map.put("attribute_screen_info", this.mTabSectionInterface.getScreenInfo());
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        switchSideScreenTabs(i, i2, i3);
    }

    public void switchSideScreenTabs(int i, int i2, int i3) {
        SideScreenTabSectionModelInterface sideScreenTabSectionModelInterface = this.mTabSectionInterface;
        String path = this.mConfigTabsList.get(i).getPath();
        this.mTabContentInterface = this.mTabContentsMap.get(i);
        SideScreenContentModelInterface sideScreenContentModelInterface = this.mTabContentInterface;
        if (sideScreenContentModelInterface == null || !TextUtils.equals(path, sideScreenContentModelInterface.getPath())) {
            this.mTabContentInterface = this.mTabContentModelFactory.create(this.mConfigTabsList.get(i).getPath());
        }
        this.mTabSectionInterface = this.mTabSectionsMap.get(i);
        if (this.mTabSectionsMap.get(i) == null || !TextUtils.equals(path, this.mTabSectionInterface.getTabPath())) {
            if (i == 0) {
                this.mTabSectionInterface = this.mMainTabModelFactory.create(this.mTabContentInterface, this.mConfigTabsList.get(i).getPath());
            } else {
                this.mTabSectionInterface = this.mGenericTabModelFactory.create(this.mTabContentInterface, this.mConfigTabsList.get(i).getLabel(), this.mConfigTabsList.get(i).getPath());
            }
        }
        this.mTabSectionsMap.put(i, this.mTabSectionInterface);
        this.mTabContentsMap.put(i, this.mTabContentInterface);
        this.mTabScrollPositions.put(this.mTabIndexSubject.getValue().intValue(), new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3)));
        this.mTabIndexSubject.onNext(Integer.valueOf(i));
        SideScreenTabSectionModelInterface sideScreenTabSectionModelInterface2 = this.mTabSectionInterface;
        if (sideScreenTabSectionModelInterface2 != sideScreenTabSectionModelInterface) {
            ScreenInfo screenInfo = sideScreenTabSectionModelInterface2.getScreenInfo();
            this.mAnalyticsModel.startScreenView(screenInfo.getType(), screenInfo.getSubtype(), null, null, null);
        }
    }

    public void bindTabObservables() {
        this.mDisposables.add(this.mSideScreenConfigurationModel.observeSideScreenConfiguration().map(new Function() { // from class: com.evie.sidescreen.-$$Lambda$M8z4FiSO6U7Mnlc-2sQmZf3kKZ4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ((SideScreenConfiguration) obj).getConfigTabs();
            }
        }).distinctUntilChanged().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TabsModel.lambda$bindTabObservables$0(this.f$0, (List) obj);
            }
        }));
        this.mDisposables.add(this.mSideScreenConfigurationModel.observeSideScreenConfiguration().map(new Function() { // from class: com.evie.sidescreen.-$$Lambda$vtSx3C7ZkSXA_Z51BNsaH-kFab8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((SideScreenConfiguration) obj).isTabsEnabled());
            }
        }).distinctUntilChanged().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TabsModel.lambda$bindTabObservables$1(this.f$0, (Boolean) obj);
            }
        }));
        this.mDisposables.add(this.mTabIndexSubject.switchMap(new Function() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$u4830Fqx7S0d8W3V6xoFw4wZ_cM
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mTabSectionInterface.getIntervalRefreshSubject();
            }
        }).subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$N_hOkLSQIspS6CvzrnYyQAXHSSQ
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.onIntervalRefresh();
            }
        }));
        this.mDisposables.add(this.mTabIndexSubject.switchMap(new Function() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mTabContentInterface.getObservable();
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$TabsModel$f1rbI5G-b3IGzqsw8tHzttK-sik
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TabsModel.lambda$bindTabObservables$5(this.f$0, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$bindTabObservables$0(TabsModel tabsModel, List list) throws Exception {
        ArrayList arrayList = new ArrayList(tabsModel.mConfigTabsList);
        tabsModel.mConfigTabsList.clear();
        tabsModel.mConfigTabsList.addAll(list);
        if (tabsModel.mConfigTabsList.isEmpty()) {
            tabsModel.mConfigTabsList.add(MAIN_CONFIG_TAB);
        }
        tabsModel.handleNewList(arrayList, tabsModel.mConfigTabsList);
        tabsModel.handleMovingTabIndicator(tabsModel.mConfigTabsList.get(tabsModel.mTabIndexSubject.getValue().intValue()));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ConfigTab) it.next()).getLabel());
        }
        tabsModel.mTabLabelsSubject.onNext(arrayList2);
    }

    public static /* synthetic */ void lambda$bindTabObservables$1(TabsModel tabsModel, Boolean bool) throws Exception {
        boolean zBooleanValue = tabsModel.mTabEnabledSubject.getValue().booleanValue();
        tabsModel.mTabEnabledSubject.onNext(bool);
        if (!zBooleanValue || bool.booleanValue()) {
            return;
        }
        tabsModel.switchSideScreenTabs(0, 0, 0);
    }

    public static /* synthetic */ void lambda$bindTabObservables$5(TabsModel tabsModel, Lce lce) throws Exception {
        if (lce.isLoading()) {
            return;
        }
        tabsModel.mTabHideRefreshSubject.onNext(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIntervalRefresh() {
        this.mTabScrollPositions.clear();
        this.mTabContentsMap.clear();
        this.mTabSectionsMap.clear();
    }

    private void handleNewList(List<ConfigTab> list, List<ConfigTab> list2) {
        SparseArrayCompat<Pair<Integer, Integer>> sparseArrayCompatM566clone = this.mTabScrollPositions.m566clone();
        SparseArrayCompat<SideScreenContentModelInterface> sparseArrayCompatM566clone2 = this.mTabContentsMap.m566clone();
        SparseArrayCompat<SideScreenTabSectionModelInterface> sparseArrayCompatM566clone3 = this.mTabSectionsMap.m566clone();
        this.mTabScrollPositions.clear();
        this.mTabContentsMap.clear();
        this.mTabSectionsMap.clear();
        for (int i = 0; i < list2.size(); i++) {
            int iIndexOf = list.indexOf(list2.get(i));
            if (iIndexOf >= 0) {
                this.mTabScrollPositions.put(i, sparseArrayCompatM566clone.get(iIndexOf));
                this.mTabContentsMap.put(i, sparseArrayCompatM566clone2.get(iIndexOf));
                this.mTabSectionsMap.put(i, sparseArrayCompatM566clone3.get(iIndexOf));
            }
        }
    }

    private void handleMovingTabIndicator(ConfigTab configTab) {
        int iIndexOf = this.mConfigTabsList.indexOf(configTab);
        if (iIndexOf < 0) {
            switchSideScreenTabs(0, 0, 0);
            iIndexOf = 0;
        }
        this.mTabIndicatorIndexSubject.onNext(Integer.valueOf(iIndexOf));
    }

    public SideScreenTabSectionModelInterface getCurrentModel() {
        return this.mTabSectionInterface;
    }

    public Observable<Integer> getTabIndexSubject() {
        return this.mTabIndexSubject;
    }

    public Observable<List<String>> getTabLabelsSubject() {
        return this.mTabLabelsSubject;
    }

    public Observable<Boolean> getTabHideRefreshSubject() {
        return this.mTabHideRefreshSubject;
    }

    public Observable<Boolean> getTabEnabledSubject() {
        return this.mTabEnabledSubject;
    }

    public Observable<Integer> getTabIndicatorIndexSubject() {
        return this.mTabIndicatorIndexSubject;
    }

    public Disposable onRefresh(String str) {
        return this.mTabContentInterface.refreshContent(str);
    }

    public Pair<Integer, Integer> getScrollPosition() {
        int iIntValue = this.mTabIndexSubject.getValue().intValue();
        Pair<Integer, Integer> pair = this.mTabScrollPositions.get(iIntValue);
        if (pair != null) {
            return pair;
        }
        Pair<Integer, Integer> pair2 = new Pair<>(0, 0);
        this.mTabScrollPositions.put(iIntValue, pair2);
        return pair2;
    }
}
