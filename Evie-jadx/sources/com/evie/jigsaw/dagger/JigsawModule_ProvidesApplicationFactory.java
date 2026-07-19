package com.evie.jigsaw.dagger;

import android.app.Application;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesApplicationFactory implements Factory<Application> {
    private final JigsawModule module;

    public JigsawModule_ProvidesApplicationFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public Application get() {
        return proxyProvidesApplication(this.module);
    }

    public static JigsawModule_ProvidesApplicationFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesApplicationFactory(jigsawModule);
    }

    public static Application proxyProvidesApplication(JigsawModule jigsawModule) {
        return (Application) Preconditions.checkNotNull(jigsawModule.providesApplication(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
