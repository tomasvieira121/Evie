package com.evie.sidescreen.personalize.onboarding;

import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsOnboardingPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<SideScreenSharedPreferencesModel> sharedPreferencesModelProvider;
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public TopicsOnboardingPresenterFactory(Provider<SideScreenSharedPreferencesModel> provider, Provider<ActivityStarter> provider2, Provider<TopicsModel> provider3, Provider<TopicItemPresenterFactory> provider4) {
        this.sharedPreferencesModelProvider = (Provider) checkNotNull(provider, 1);
        this.activityStarterProvider = (Provider) checkNotNull(provider2, 2);
        this.topicsModelProvider = (Provider) checkNotNull(provider3, 3);
        this.topicItemPresenterFactoryProvider = (Provider) checkNotNull(provider4, 4);
    }

    public TopicsOnboardingPresenter create(ListTopicsRequestOptions listTopicsRequestOptions, boolean z, TopicItemPresenter.FollowStateChangedListener followStateChangedListener, ScreenInfo screenInfo) {
        return new TopicsOnboardingPresenter((ListTopicsRequestOptions) checkNotNull(listTopicsRequestOptions, 1), z, (TopicItemPresenter.FollowStateChangedListener) checkNotNull(followStateChangedListener, 3), (ScreenInfo) checkNotNull(screenInfo, 4), (SideScreenSharedPreferencesModel) checkNotNull(this.sharedPreferencesModelProvider.get(), 5), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 6), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 7), (TopicItemPresenterFactory) checkNotNull(this.topicItemPresenterFactoryProvider.get(), 8));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
