package com.evie.sidescreen;

import android.graphics.Bitmap;
import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.models.announcement.AnnouncementModel;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.background.BackgroundModel;
import com.evie.sidescreen.personalize.onboarding.PersonalizeOnboardingActivity;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenPresenter implements StackLayer {
    private final AbTestConfigurationModel mAbTestConfigurationModel;
    private final ActivationModel mActivationModel;
    private final ActivityStarter mActivityStarter;
    private final AnnouncementModel mAnnouncementModel;
    private final BackgroundModel mBackgroundModel;
    private final CompositeDisposable mDisposables = new CompositeDisposable();
    private boolean mIsFirstEmittedItemAfterTabChange;
    private final LayerStack mLayerStack;
    private SideScreenScrollListener mScrollListener;
    private final SideScreenConfiguration mSideScreenConfiguration;
    private final SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;
    private SideScreenView mSideScreenView;
    private TabsModel mTabsModel;
    private final TabsModelFactory mTabsModelFactory;
    private final TopicsModel mTopicsModel;

    public interface SideScreenScrollListener {
        void onSideScreenScrollStateChanged(RecyclerView recyclerView, int i);

        void onSideScreenScrolled(RecyclerView recyclerView, int i, int i2, int i3);
    }

    @Override // com.evie.sidescreen.StackLayer
    public boolean isRootLayer() {
        return true;
    }

    @Override // com.evie.sidescreen.StackLayer
    public boolean onBackPressed() {
        return false;
    }

    public void onClickBackground() {
    }

    @Override // com.evie.sidescreen.StackLayer
    public void pop(boolean z) {
    }

    public void setScrollListener(SideScreenScrollListener sideScreenScrollListener) {
        this.mScrollListener = sideScreenScrollListener;
    }

    public SideScreenPresenter(BackgroundModel backgroundModel, AbTestConfigurationModel abTestConfigurationModel, LayerStack layerStack, AnnouncementModel announcementModel, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel, TopicsModel topicsModel, ActivationModel activationModel, ActivityStarter activityStarter, SideScreenConfiguration sideScreenConfiguration, TabsModelFactory tabsModelFactory) {
        this.mBackgroundModel = backgroundModel;
        this.mAbTestConfigurationModel = abTestConfigurationModel;
        this.mLayerStack = layerStack;
        this.mAnnouncementModel = announcementModel;
        this.mSideScreenSharedPreferencesModel = sideScreenSharedPreferencesModel;
        this.mTopicsModel = topicsModel;
        this.mActivationModel = activationModel;
        this.mActivityStarter = activityStarter;
        this.mSideScreenConfiguration = sideScreenConfiguration;
        this.mTabsModelFactory = tabsModelFactory;
        this.mTabsModel = this.mTabsModelFactory.create(this.mDisposables);
    }

    public void onTabClick(int i) {
        this.mTabsModel.onTabClick(i, this.mSideScreenView.findFirstvVisiblePosition(), this.mSideScreenView.findFirstVisibleItemOffset());
        if (i == 0) {
            this.mSideScreenView.showWeatherView();
        } else {
            this.mSideScreenView.hideWeatherView();
        }
    }

    void bindSideScreenView(SideScreenView sideScreenView) {
        if (this.mSideScreenView != null) {
            throw new IllegalStateException("Binding side screen view more than once?!");
        }
        this.mTabsModel.bindTabObservables();
        this.mSideScreenView = sideScreenView;
        this.mSideScreenView.setPersonalizeTooltipEnabled(false);
        this.mSideScreenView.setRefreshEnabled(false);
        this.mDisposables.add(this.mAbTestConfigurationModel.getObservable().cast(Object.class).startWith(new Object()).switchMap(new Function() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$xIKycCmeWVnurwnBzjClWLJi3JM
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mTabsModel.getTabIndexSubject();
            }
        }).switchMap(new Function() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$mXi7IskpBjmLKx9yKbFaE7YBTfU
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SideScreenPresenter.lambda$bindSideScreenView$1(this.f$0, (Integer) obj);
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$Fxldr8ar50-BD1yxVVvCjRdzKrA
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                SideScreenPresenter.lambda$bindSideScreenView$2(this.f$0, (List) obj);
            }
        }));
        this.mDisposables.add(this.mTopicsModel.getFollows().subscribe());
        CompositeDisposable compositeDisposable = this.mDisposables;
        Observable<Bitmap> observable = this.mBackgroundModel.getObservable();
        final SideScreenView sideScreenView2 = this.mSideScreenView;
        sideScreenView2.getClass();
        compositeDisposable.add(observable.subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                sideScreenView2.showBackground((Bitmap) obj);
            }
        }));
        this.mDisposables.add(this.mSideScreenSharedPreferencesModel.observeSharedPreferenceChanges().filter(new Predicate() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return SideScreenPresenter.lambda$bindSideScreenView$3((String) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handlePersonalizeTooltipPreference();
            }
        }));
        this.mDisposables.add(this.mActivationModel.getActivationObservable().subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$G_LnI-uCTLoVuLWTGpKwdYgE0Mc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                SideScreenPresenter.lambda$bindSideScreenView$5(this.f$0, obj);
            }
        }));
        this.mDisposables.add(this.mTabsModel.getTabIndicatorIndexSubject().subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$M2jvb50mI69B3rv5bwC6dLQgowc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mSideScreenView.moveTabIndicator(((Integer) obj).intValue());
            }
        }));
        CompositeDisposable compositeDisposable2 = this.mDisposables;
        Observable<Boolean> tabEnabledSubject = this.mTabsModel.getTabEnabledSubject();
        final SideScreenView sideScreenView3 = this.mSideScreenView;
        sideScreenView3.getClass();
        compositeDisposable2.add(tabEnabledSubject.subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                sideScreenView3.setTabsEnabled(((Boolean) obj).booleanValue());
            }
        }));
        this.mDisposables.add(this.mTabsModel.getTabLabelsSubject().subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$eBnI7RLTjUZrmLp0yN3OkZYjI5U
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mSideScreenView.setUpTabs((List) obj);
            }
        }));
        this.mDisposables.add(this.mTabsModel.getTabHideRefreshSubject().subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenPresenter$RlOUXx2aoE1NVt6ieiNd8Mvaz5w
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mSideScreenView.hideRefreshView();
            }
        }));
        this.mLayerStack.push(this);
    }

    public static /* synthetic */ ObservableSource lambda$bindSideScreenView$1(SideScreenPresenter sideScreenPresenter, Integer num) throws Exception {
        sideScreenPresenter.mIsFirstEmittedItemAfterTabChange = true;
        sideScreenPresenter.mSideScreenView.shouldTabShowPersonalizeTooltip(num.intValue() == 0);
        return sideScreenPresenter.mTabsModel.getCurrentModel().getSideScreenSections(Boolean.valueOf(sideScreenPresenter.shouldDisplayDataWarningCard()));
    }

    public static /* synthetic */ void lambda$bindSideScreenView$2(SideScreenPresenter sideScreenPresenter, List list) throws Exception {
        sideScreenPresenter.scrollToSavedPosition(sideScreenPresenter.mIsFirstEmittedItemAfterTabChange);
        sideScreenPresenter.mLayerStack.clearToRoot(false);
        sideScreenPresenter.mSideScreenView.showPresenters(list, sideScreenPresenter.mIsFirstEmittedItemAfterTabChange);
        sideScreenPresenter.mIsFirstEmittedItemAfterTabChange = false;
    }

    static /* synthetic */ boolean lambda$bindSideScreenView$3(String str) throws Exception {
        return str.equals("has_opened_personalize") || str.equals("personalize_onboarding_finished");
    }

    public static /* synthetic */ void lambda$bindSideScreenView$5(SideScreenPresenter sideScreenPresenter, Object obj) throws Exception {
        sideScreenPresenter.handlePersonalizeTooltipPreference();
        sideScreenPresenter.mSideScreenView.setRefreshEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePersonalizeTooltipPreference() {
        boolean hasOpenedPersonalize = this.mSideScreenSharedPreferencesModel.getHasOpenedPersonalize();
        boolean hasFinishedPersonalizeOnboarding = this.mSideScreenSharedPreferencesModel.getHasFinishedPersonalizeOnboarding();
        if ("classic".equals(this.mSideScreenConfiguration.getOnboardingFlow())) {
            this.mSideScreenView.setPersonalizeTooltipEnabled(!hasOpenedPersonalize);
        } else if ("bottom_bar".equals(this.mSideScreenConfiguration.getOnboardingFlow())) {
            this.mSideScreenView.setPersonalizeToolbarEnabled(!hasFinishedPersonalizeOnboarding);
        }
    }

    public void setScreenScrollXProgress(float f) {
        this.mSideScreenView.setScreenScrollXProgress(f);
    }

    public void dispose() {
        this.mScrollListener = null;
        this.mDisposables.dispose();
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2, int i3) {
        SideScreenScrollListener sideScreenScrollListener = this.mScrollListener;
        if (sideScreenScrollListener != null) {
            sideScreenScrollListener.onSideScreenScrolled(recyclerView, i, i2, i3);
        }
    }

    public float getMaxTopEmptyScrollDistance() {
        return this.mSideScreenView.getMaxTopEmptyScrollDistance();
    }

    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        SideScreenScrollListener sideScreenScrollListener = this.mScrollListener;
        if (sideScreenScrollListener != null) {
            sideScreenScrollListener.onSideScreenScrollStateChanged(recyclerView, i);
        }
    }

    public void onRefresh() {
        this.mDisposables.add(this.mTabsModel.onRefresh("swipe"));
        this.mDisposables.add(this.mAnnouncementModel.cacheAnnouncement());
        this.mDisposables.add(this.mTopicsModel.getFollows().subscribe());
    }

    public void onPersonalizeBottomBarClick() {
        this.mActivityStarter.startActivity(null, this.mActivityStarter.getLocalActivityIntent(PersonalizeOnboardingActivity.class), false);
    }

    private boolean shouldDisplayDataWarningCard() {
        if (this.mSideScreenSharedPreferencesModel.getDataWarningCardDismissed()) {
            return false;
        }
        Boolean wasOnboardedWithFreeBee = this.mSideScreenSharedPreferencesModel.getWasOnboardedWithFreeBee();
        if (wasOnboardedWithFreeBee == null) {
            wasOnboardedWithFreeBee = Boolean.valueOf(this.mSideScreenView.getView().getContext().getSharedPreferences("com.voxel.launcher3.prefs", 0).getBoolean("com.evie.screen.WelcomeScreenController.PREFERENCE_CONDITIONS_ACCEPTED", false));
            this.mSideScreenSharedPreferencesModel.setWasOnboardedWithFreeBee(wasOnboardedWithFreeBee.booleanValue());
        }
        return wasOnboardedWithFreeBee.booleanValue();
    }

    public void scrollToSavedPosition(boolean z) {
        if (z) {
            Pair<Integer, Integer> scrollPosition = this.mTabsModel.getScrollPosition();
            this.mSideScreenView.scrollToPositionWithOffset(((Integer) scrollPosition.first).intValue(), ((Integer) scrollPosition.second).intValue());
        }
    }
}
