package com.evie.sidescreen.topicdetail;

import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailHeaderPresenterFactory_Factory implements Factory<TopicDetailHeaderPresenterFactory> {
    private final Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
    private final Provider<TopicDetailFollowPopupMenuHelper> menuHelperProvider;
    private final Provider<TopicPersonalizationStore> topicPersonalizationStoreProvider;

    public TopicDetailHeaderPresenterFactory_Factory(Provider<IFollowButtonHandlerFactory> provider, Provider<TopicPersonalizationStore> provider2, Provider<TopicDetailFollowPopupMenuHelper> provider3) {
        this.followButtonHandlerFactoryProvider = provider;
        this.topicPersonalizationStoreProvider = provider2;
        this.menuHelperProvider = provider3;
    }

    @Override // javax.inject.Provider
    public TopicDetailHeaderPresenterFactory get() {
        return new TopicDetailHeaderPresenterFactory(this.followButtonHandlerFactoryProvider, this.topicPersonalizationStoreProvider, this.menuHelperProvider);
    }

    public static TopicDetailHeaderPresenterFactory_Factory create(Provider<IFollowButtonHandlerFactory> provider, Provider<TopicPersonalizationStore> provider2, Provider<TopicDetailFollowPopupMenuHelper> provider3) {
        return new TopicDetailHeaderPresenterFactory_Factory(provider, provider2, provider3);
    }
}
