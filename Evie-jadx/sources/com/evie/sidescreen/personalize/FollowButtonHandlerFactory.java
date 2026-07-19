package com.evie.sidescreen.personalize;

import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FollowButtonHandlerFactory {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public FollowButtonHandlerFactory(Provider<TopicsModel> provider, Provider<AnalyticsModel> provider2) {
        this.topicsModelProvider = (Provider) checkNotNull(provider, 1);
        this.analyticsModelProvider = (Provider) checkNotNull(provider2, 2);
    }

    public FollowButtonHandler create(FollowState followState, CompositeDisposable compositeDisposable) {
        return new FollowButtonHandler((FollowState) checkNotNull(followState, 1), (CompositeDisposable) checkNotNull(compositeDisposable, 2), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 3), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 4));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
