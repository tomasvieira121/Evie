package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.AnnouncementModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class AnnouncementModule_ProvidesAnnouncementModelFactory implements Factory<AnnouncementModel> {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<Context> contextProvider;
    private final AnnouncementModule module;
    private final Provider<PromptStoreModel> promptStoreModelProvider;
    private final Provider<Retrofit> retrofitProvider;
    private final Provider<Integer> versionCodeProvider;

    public AnnouncementModule_ProvidesAnnouncementModelFactory(AnnouncementModule announcementModule, Provider<Context> provider, Provider<Retrofit> provider2, Provider<AnalyticsHandler> provider3, Provider<PromptStoreModel> provider4, Provider<Integer> provider5, Provider<AbTestConfiguration> provider6) {
        this.module = announcementModule;
        this.contextProvider = provider;
        this.retrofitProvider = provider2;
        this.analyticsHandlerProvider = provider3;
        this.promptStoreModelProvider = provider4;
        this.versionCodeProvider = provider5;
        this.abTestConfigurationProvider = provider6;
    }

    @Override // javax.inject.Provider
    public AnnouncementModel get() {
        return proxyProvidesAnnouncementModel(this.module, this.contextProvider.get(), this.retrofitProvider.get(), this.analyticsHandlerProvider.get(), this.promptStoreModelProvider.get(), this.versionCodeProvider.get(), this.abTestConfigurationProvider.get());
    }

    public static AnnouncementModule_ProvidesAnnouncementModelFactory create(AnnouncementModule announcementModule, Provider<Context> provider, Provider<Retrofit> provider2, Provider<AnalyticsHandler> provider3, Provider<PromptStoreModel> provider4, Provider<Integer> provider5, Provider<AbTestConfiguration> provider6) {
        return new AnnouncementModule_ProvidesAnnouncementModelFactory(announcementModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static AnnouncementModel proxyProvidesAnnouncementModel(AnnouncementModule announcementModule, Context context, Retrofit retrofit, AnalyticsHandler analyticsHandler, PromptStoreModel promptStoreModel, Integer num, AbTestConfiguration abTestConfiguration) {
        return (AnnouncementModel) Preconditions.checkNotNull(announcementModule.providesAnnouncementModel(context, retrofit, analyticsHandler, promptStoreModel, num, abTestConfiguration), "Cannot return null from a non-@Nullable @Provides method");
    }
}
