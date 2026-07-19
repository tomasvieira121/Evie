package com.voxel.simplesearchlauncher.dagger.module;

import android.app.Application;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.search.local.ContactManager;
import com.voxel.simplesearchlauncher.jigsaw.JigsawAnalyticsService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class JigsawModule_ProvidesJigsawFactory implements Factory<Jigsaw> {
    private final Provider<JigsawAnalyticsService> analyticsProvider;
    private final Provider<Application> applicationProvider;
    private final Provider<ContactManager> contactManagerProvider;
    private final Provider<ImageResolver> imageResolverProvider;
    private final JigsawModule module;
    private final Provider<ActionPreferenceStore> preferenceStoreProvider;

    public JigsawModule_ProvidesJigsawFactory(JigsawModule jigsawModule, Provider<Application> provider, Provider<ImageResolver> provider2, Provider<ActionPreferenceStore> provider3, Provider<ContactManager> provider4, Provider<JigsawAnalyticsService> provider5) {
        this.module = jigsawModule;
        this.applicationProvider = provider;
        this.imageResolverProvider = provider2;
        this.preferenceStoreProvider = provider3;
        this.contactManagerProvider = provider4;
        this.analyticsProvider = provider5;
    }

    @Override // javax.inject.Provider
    public Jigsaw get() {
        return proxyProvidesJigsaw(this.module, this.applicationProvider.get(), this.imageResolverProvider.get(), this.preferenceStoreProvider.get(), this.contactManagerProvider.get(), this.analyticsProvider.get());
    }

    public static JigsawModule_ProvidesJigsawFactory create(JigsawModule jigsawModule, Provider<Application> provider, Provider<ImageResolver> provider2, Provider<ActionPreferenceStore> provider3, Provider<ContactManager> provider4, Provider<JigsawAnalyticsService> provider5) {
        return new JigsawModule_ProvidesJigsawFactory(jigsawModule, provider, provider2, provider3, provider4, provider5);
    }

    public static Jigsaw proxyProvidesJigsaw(JigsawModule jigsawModule, Application application, ImageResolver imageResolver, ActionPreferenceStore actionPreferenceStore, ContactManager contactManager, JigsawAnalyticsService jigsawAnalyticsService) {
        return (Jigsaw) Preconditions.checkNotNull(jigsawModule.providesJigsaw(application, imageResolver, actionPreferenceStore, contactManager, jigsawAnalyticsService), "Cannot return null from a non-@Nullable @Provides method");
    }
}
