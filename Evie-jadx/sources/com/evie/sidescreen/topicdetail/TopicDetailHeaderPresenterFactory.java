package com.evie.sidescreen.topicdetail;

import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import javax.inject.Provider;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailHeaderPresenterFactory {
    private final Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
    private final Provider<TopicDetailFollowPopupMenuHelper> menuHelperProvider;
    private final Provider<TopicPersonalizationStore> topicPersonalizationStoreProvider;

    public TopicDetailHeaderPresenterFactory(Provider<IFollowButtonHandlerFactory> provider, Provider<TopicPersonalizationStore> provider2, Provider<TopicDetailFollowPopupMenuHelper> provider3) {
        this.followButtonHandlerFactoryProvider = (Provider) checkNotNull(provider, 1);
        this.topicPersonalizationStoreProvider = (Provider) checkNotNull(provider2, 2);
        this.menuHelperProvider = (Provider) checkNotNull(provider3, 3);
    }

    public TopicDetailHeaderPresenter create(Topic topic, FollowState followState, TopicDetailHeaderPresenter.OnBackListener onBackListener, ScreenInfo screenInfo) {
        return new TopicDetailHeaderPresenter((Topic) checkNotNull(topic, 1), (FollowState) checkNotNull(followState, 2), (TopicDetailHeaderPresenter.OnBackListener) checkNotNull(onBackListener, 3), (IFollowButtonHandlerFactory) checkNotNull(this.followButtonHandlerFactoryProvider.get(), 4), (TopicPersonalizationStore) checkNotNull(this.topicPersonalizationStoreProvider.get(), 5), (TopicDetailFollowPopupMenuHelper) checkNotNull(this.menuHelperProvider.get(), 6), (ScreenInfo) checkNotNull(screenInfo, 7));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
