package com.evie.sidescreen.prompts.breakingnews;

import com.evie.models.PromptStoreModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class BreakingNewsSection_Factory implements Factory<BreakingNewsSection> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<PromptStoreModel> promptStoreModelProvider;

    public BreakingNewsSection_Factory(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2, Provider<PromptStoreModel> provider3, Provider<AnalyticsModel> provider4, Provider<ActivityStarter> provider5) {
        this.activationModelProvider = provider;
        this.lifecycleCallbacksProvider = provider2;
        this.promptStoreModelProvider = provider3;
        this.analyticsModelProvider = provider4;
        this.activityStarterProvider = provider5;
    }

    @Override // javax.inject.Provider
    public BreakingNewsSection get() {
        return new BreakingNewsSection(this.activationModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.promptStoreModelProvider.get(), this.analyticsModelProvider.get(), this.activityStarterProvider.get());
    }

    public static BreakingNewsSection_Factory create(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2, Provider<PromptStoreModel> provider3, Provider<AnalyticsModel> provider4, Provider<ActivityStarter> provider5) {
        return new BreakingNewsSection_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
