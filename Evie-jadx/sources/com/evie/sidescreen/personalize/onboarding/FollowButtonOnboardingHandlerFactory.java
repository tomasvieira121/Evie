package com.evie.sidescreen.personalize.onboarding;

import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.personalize.FollowState;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FollowButtonOnboardingHandlerFactory {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenSharedPreferencesModel> sharedPreferencesModelProvider;

    public FollowButtonOnboardingHandlerFactory(Provider<SideScreenSharedPreferencesModel> provider, Provider<AnalyticsModel> provider2) {
        this.sharedPreferencesModelProvider = (Provider) checkNotNull(provider, 1);
        this.analyticsModelProvider = (Provider) checkNotNull(provider2, 2);
    }

    public FollowButtonOnboardingHandler create(FollowState followState, CompositeDisposable compositeDisposable) {
        return new FollowButtonOnboardingHandler((FollowState) checkNotNull(followState, 1), (CompositeDisposable) checkNotNull(compositeDisposable, 2), (SideScreenSharedPreferencesModel) checkNotNull(this.sharedPreferencesModelProvider.get(), 3), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 4));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
