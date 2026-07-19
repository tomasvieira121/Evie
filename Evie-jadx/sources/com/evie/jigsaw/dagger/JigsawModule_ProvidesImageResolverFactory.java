package com.evie.jigsaw.dagger;

import com.evie.jigsaw.services.images.ImageResolver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesImageResolverFactory implements Factory<ImageResolver> {
    private final JigsawModule module;

    public JigsawModule_ProvidesImageResolverFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public ImageResolver get() {
        return proxyProvidesImageResolver(this.module);
    }

    public static JigsawModule_ProvidesImageResolverFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesImageResolverFactory(jigsawModule);
    }

    public static ImageResolver proxyProvidesImageResolver(JigsawModule jigsawModule) {
        return (ImageResolver) Preconditions.checkNotNull(jigsawModule.providesImageResolver(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
