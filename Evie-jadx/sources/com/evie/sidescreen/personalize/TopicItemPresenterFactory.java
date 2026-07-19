package com.evie.sidescreen.personalize;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import javax.inject.Provider;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public final class TopicItemPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
    private final Provider<Boolean> onboardingModeProvider;

    public TopicItemPresenterFactory(Provider<Boolean> provider, Provider<ActivityStarter> provider2, Provider<IFollowButtonHandlerFactory> provider3, Provider<AnalyticsModel> provider4) {
        this.onboardingModeProvider = (Provider) checkNotNull(provider, 1);
        this.activityStarterProvider = (Provider) checkNotNull(provider2, 2);
        this.followButtonHandlerFactoryProvider = (Provider) checkNotNull(provider3, 3);
        this.analyticsModelProvider = (Provider) checkNotNull(provider4, 4);
    }

    public TopicItemPresenter create(Topic topic, FollowState followState, ScreenInfo screenInfo) {
        return new TopicItemPresenter((Topic) checkNotNull(topic, 1), (FollowState) checkNotNull(followState, 2), (ScreenInfo) checkNotNull(screenInfo, 3), ((Boolean) checkNotNull(this.onboardingModeProvider.get(), 4)).booleanValue(), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 5), (IFollowButtonHandlerFactory) checkNotNull(this.followButtonHandlerFactoryProvider.get(), 6), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 7));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
