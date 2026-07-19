package com.evie.jigsaw.dagger;

import com.evie.jigsaw.JigsawSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesSettingsFactory implements Factory<JigsawSettings> {
    private final JigsawModule module;

    public JigsawModule_ProvidesSettingsFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public JigsawSettings get() {
        return proxyProvidesSettings(this.module);
    }

    public static JigsawModule_ProvidesSettingsFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesSettingsFactory(jigsawModule);
    }

    public static JigsawSettings proxyProvidesSettings(JigsawModule jigsawModule) {
        return (JigsawSettings) Preconditions.checkNotNull(jigsawModule.providesSettings(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
