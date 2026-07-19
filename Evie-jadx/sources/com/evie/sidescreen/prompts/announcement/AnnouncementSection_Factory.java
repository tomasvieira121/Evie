package com.evie.sidescreen.prompts.announcement;

import com.evie.models.PromptStoreModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class AnnouncementSection_Factory implements Factory<AnnouncementSection> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<PromptStoreModel> promptStoreModelProvider;

    public AnnouncementSection_Factory(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2, Provider<PromptStoreModel> provider3, Provider<AnalyticsModel> provider4) {
        this.activationModelProvider = provider;
        this.lifecycleCallbacksProvider = provider2;
        this.promptStoreModelProvider = provider3;
        this.analyticsModelProvider = provider4;
    }

    @Override // javax.inject.Provider
    public AnnouncementSection get() {
        return new AnnouncementSection(this.activationModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.promptStoreModelProvider.get(), this.analyticsModelProvider.get());
    }

    public static AnnouncementSection_Factory create(Provider<ActivationModel> provider, Provider<LifecycleCallbacks> provider2, Provider<PromptStoreModel> provider3, Provider<AnalyticsModel> provider4) {
        return new AnnouncementSection_Factory(provider, provider2, provider3, provider4);
    }
}
