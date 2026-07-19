package com.evie.jigsaw.dagger;

import com.evie.jigsaw.services.layout.LayoutService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesLayoutServiceFactory implements Factory<LayoutService> {
    private final JigsawModule module;

    public JigsawModule_ProvidesLayoutServiceFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public LayoutService get() {
        return proxyProvidesLayoutService(this.module);
    }

    public static JigsawModule_ProvidesLayoutServiceFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesLayoutServiceFactory(jigsawModule);
    }

    public static LayoutService proxyProvidesLayoutService(JigsawModule jigsawModule) {
        return (LayoutService) Preconditions.checkNotNull(jigsawModule.providesLayoutService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
