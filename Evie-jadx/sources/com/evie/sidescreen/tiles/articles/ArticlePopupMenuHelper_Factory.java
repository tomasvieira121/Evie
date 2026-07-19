package com.evie.sidescreen.tiles.articles;

import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticlePopupMenuHelper_Factory implements Factory<ArticlePopupMenuHelper> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenRelatedContentModel> sideScreenContentModelProvider;
    private final Provider<TopicPersonalizationStore> topicPersonalizationStoreProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public ArticlePopupMenuHelper_Factory(Provider<TopicsModel> provider, Provider<SideScreenRelatedContentModel> provider2, Provider<TopicPersonalizationStore> provider3, Provider<ActivityStarter> provider4, Provider<AnalyticsModel> provider5) {
        this.topicsModelProvider = provider;
        this.sideScreenContentModelProvider = provider2;
        this.topicPersonalizationStoreProvider = provider3;
        this.activityStarterProvider = provider4;
        this.analyticsModelProvider = provider5;
    }

    @Override // javax.inject.Provider
    public ArticlePopupMenuHelper get() {
        return new ArticlePopupMenuHelper(this.topicsModelProvider.get(), this.sideScreenContentModelProvider.get(), this.topicPersonalizationStoreProvider.get(), this.activityStarterProvider.get(), this.analyticsModelProvider.get());
    }

    public static ArticlePopupMenuHelper_Factory create(Provider<TopicsModel> provider, Provider<SideScreenRelatedContentModel> provider2, Provider<TopicPersonalizationStore> provider3, Provider<ActivityStarter> provider4, Provider<AnalyticsModel> provider5) {
        return new ArticlePopupMenuHelper_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
