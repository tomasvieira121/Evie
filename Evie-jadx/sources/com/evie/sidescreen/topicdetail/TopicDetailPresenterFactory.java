package com.evie.sidescreen.topicdetail;

import android.content.Context;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailPresenterFactory {
    private final Provider<Context> contextProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
    private final Provider<TopicDetailHeaderPresenterFactory> topicDetailHeaderPresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public TopicDetailPresenterFactory(Provider<Context> provider, Provider<TopicsModel> provider2, Provider<TopicDetailHeaderPresenterFactory> provider3, Provider<TopLevelTilePresenterFactory> provider4) {
        this.contextProvider = (Provider) checkNotNull(provider, 1);
        this.topicsModelProvider = (Provider) checkNotNull(provider2, 2);
        this.topicDetailHeaderPresenterFactoryProvider = (Provider) checkNotNull(provider3, 3);
        this.topLevelTilePresenterFactoryProvider = (Provider) checkNotNull(provider4, 4);
    }

    public TopicDetailPresenter create(String str, TopicDetailHeaderPresenter.OnBackListener onBackListener) {
        return new TopicDetailPresenter((String) checkNotNull(str, 1), (TopicDetailHeaderPresenter.OnBackListener) checkNotNull(onBackListener, 2), (Context) checkNotNull(this.contextProvider.get(), 3), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 4), (TopicDetailHeaderPresenterFactory) checkNotNull(this.topicDetailHeaderPresenterFactoryProvider.get(), 5), (TopLevelTilePresenterFactory) checkNotNull(this.topLevelTilePresenterFactoryProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
