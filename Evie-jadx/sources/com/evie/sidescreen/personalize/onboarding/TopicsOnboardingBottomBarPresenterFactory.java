package com.evie.sidescreen.personalize.onboarding;

import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsOnboardingBottomBarPresenterFactory {
    private final Provider<SideScreenSharedPreferencesModel> preferencesModelProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public TopicsOnboardingBottomBarPresenterFactory(Provider<TopicsModel> provider, Provider<SideScreenSharedPreferencesModel> provider2) {
        this.topicsModelProvider = (Provider) checkNotNull(provider, 1);
        this.preferencesModelProvider = (Provider) checkNotNull(provider2, 2);
    }

    public TopicsOnboardingBottomBarPresenter create(Runnable runnable, Runnable runnable2) {
        return new TopicsOnboardingBottomBarPresenter((Runnable) checkNotNull(runnable, 1), (Runnable) checkNotNull(runnable2, 2), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 3), (SideScreenSharedPreferencesModel) checkNotNull(this.preferencesModelProvider.get(), 4));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
