package com.evie.sidescreen.topicdetail;

import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailFollowPopupMenuHelper_Factory implements Factory<TopicDetailFollowPopupMenuHelper> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<TopicPersonalizationStore> topicPersonalizationStoreProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public TopicDetailFollowPopupMenuHelper_Factory(Provider<TopicsModel> provider, Provider<TopicPersonalizationStore> provider2, Provider<AnalyticsModel> provider3) {
        this.topicsModelProvider = provider;
        this.topicPersonalizationStoreProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public TopicDetailFollowPopupMenuHelper get() {
        return new TopicDetailFollowPopupMenuHelper(this.topicsModelProvider.get(), this.topicPersonalizationStoreProvider.get(), this.analyticsModelProvider.get());
    }

    public static TopicDetailFollowPopupMenuHelper_Factory create(Provider<TopicsModel> provider, Provider<TopicPersonalizationStore> provider2, Provider<AnalyticsModel> provider3) {
        return new TopicDetailFollowPopupMenuHelper_Factory(provider, provider2, provider3);
    }
}
