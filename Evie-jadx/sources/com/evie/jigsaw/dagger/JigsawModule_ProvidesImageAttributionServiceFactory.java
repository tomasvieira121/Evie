package com.evie.jigsaw.dagger;

import com.evie.jigsaw.services.attribution.ImageAttributionService;
import com.evie.jigsaw.services.images.ImageResolver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesImageAttributionServiceFactory implements Factory<ImageAttributionService> {
    private final Provider<ImageResolver> imageResolverProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesImageAttributionServiceFactory(JigsawModule jigsawModule, Provider<ImageResolver> provider) {
        this.module = jigsawModule;
        this.imageResolverProvider = provider;
    }

    @Override // javax.inject.Provider
    public ImageAttributionService get() {
        return proxyProvidesImageAttributionService(this.module, this.imageResolverProvider.get());
    }

    public static JigsawModule_ProvidesImageAttributionServiceFactory create(JigsawModule jigsawModule, Provider<ImageResolver> provider) {
        return new JigsawModule_ProvidesImageAttributionServiceFactory(jigsawModule, provider);
    }

    public static ImageAttributionService proxyProvidesImageAttributionService(JigsawModule jigsawModule, ImageResolver imageResolver) {
        return (ImageAttributionService) Preconditions.checkNotNull(jigsawModule.providesImageAttributionService(imageResolver), "Cannot return null from a non-@Nullable @Provides method");
    }
}
