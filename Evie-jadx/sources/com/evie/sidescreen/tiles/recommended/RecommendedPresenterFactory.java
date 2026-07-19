package com.evie.sidescreen.tiles.recommended;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class RecommendedPresenterFactory {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public RecommendedPresenterFactory(Provider<TopicsModel> provider, Provider<TopicItemPresenterFactory> provider2, Provider<AnalyticsModel> provider3) {
        this.topicsModelProvider = (Provider) checkNotNull(provider, 1);
        this.topicItemPresenterFactoryProvider = (Provider) checkNotNull(provider2, 2);
        this.analyticsModelProvider = (Provider) checkNotNull(provider3, 3);
    }

    public RecommendedPresenter create(SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo) {
        return new RecommendedPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (ScreenInfo) checkNotNull(screenInfo, 2), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 3), (TopicItemPresenterFactory) checkNotNull(this.topicItemPresenterFactoryProvider.get(), 4), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 5));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
