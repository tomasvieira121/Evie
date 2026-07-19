package com.evie.sidescreen.personalize.onboarding;

import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FollowButtonOnboardingHandlerFactory_Factory implements Factory<FollowButtonOnboardingHandlerFactory> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenSharedPreferencesModel> sharedPreferencesModelProvider;

    public FollowButtonOnboardingHandlerFactory_Factory(Provider<SideScreenSharedPreferencesModel> provider, Provider<AnalyticsModel> provider2) {
        this.sharedPreferencesModelProvider = provider;
        this.analyticsModelProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FollowButtonOnboardingHandlerFactory get() {
        return new FollowButtonOnboardingHandlerFactory(this.sharedPreferencesModelProvider, this.analyticsModelProvider);
    }

    public static FollowButtonOnboardingHandlerFactory_Factory create(Provider<SideScreenSharedPreferencesModel> provider, Provider<AnalyticsModel> provider2) {
        return new FollowButtonOnboardingHandlerFactory_Factory(provider, provider2);
    }
}
