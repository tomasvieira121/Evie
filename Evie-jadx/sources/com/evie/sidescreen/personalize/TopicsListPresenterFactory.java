package com.evie.sidescreen.personalize;

import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsListPresenterFactory {
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public TopicsListPresenterFactory(Provider<TopicsModel> provider, Provider<TopicItemPresenterFactory> provider2) {
        this.topicsModelProvider = (Provider) checkNotNull(provider, 1);
        this.topicItemPresenterFactoryProvider = (Provider) checkNotNull(provider2, 2);
    }

    public TopicsListPresenter create(ListTopicsRequestOptions listTopicsRequestOptions, boolean z, ScreenInfo screenInfo, TopicItemPresenter.FollowStateChangedListener followStateChangedListener) {
        return new TopicsListPresenter((ListTopicsRequestOptions) checkNotNull(listTopicsRequestOptions, 1), z, (ScreenInfo) checkNotNull(screenInfo, 3), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 4), (TopicItemPresenterFactory) checkNotNull(this.topicItemPresenterFactoryProvider.get(), 5), (TopicItemPresenter.FollowStateChangedListener) checkNotNull(followStateChangedListener, 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
