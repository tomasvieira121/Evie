package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.jigsaw.services.images.ImageResolver;
import com.voxel.simplesearchlauncher.model.managers.LocalAppsManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class JigsawModule_ProvidesImageResolverFactory implements Factory<ImageResolver> {
    private final Provider<LocalAppsManager> localAppsManagerProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesImageResolverFactory(JigsawModule jigsawModule, Provider<LocalAppsManager> provider) {
        this.module = jigsawModule;
        this.localAppsManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ImageResolver get() {
        return proxyProvidesImageResolver(this.module, this.localAppsManagerProvider.get());
    }

    public static JigsawModule_ProvidesImageResolverFactory create(JigsawModule jigsawModule, Provider<LocalAppsManager> provider) {
        return new JigsawModule_ProvidesImageResolverFactory(jigsawModule, provider);
    }

    public static ImageResolver proxyProvidesImageResolver(JigsawModule jigsawModule, LocalAppsManager localAppsManager) {
        return (ImageResolver) Preconditions.checkNotNull(jigsawModule.providesImageResolver(localAppsManager), "Cannot return null from a non-@Nullable @Provides method");
    }
}
