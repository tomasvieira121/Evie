package com.evie.jigsaw.dagger;

import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class JigsawModule_ProvidesActionPreferencesFactory implements Factory<ActionPreferenceStore> {
    private final JigsawModule module;

    public JigsawModule_ProvidesActionPreferencesFactory(JigsawModule jigsawModule) {
        this.module = jigsawModule;
    }

    @Override // javax.inject.Provider
    public ActionPreferenceStore get() {
        return proxyProvidesActionPreferences(this.module);
    }

    public static JigsawModule_ProvidesActionPreferencesFactory create(JigsawModule jigsawModule) {
        return new JigsawModule_ProvidesActionPreferencesFactory(jigsawModule);
    }

    public static ActionPreferenceStore proxyProvidesActionPreferences(JigsawModule jigsawModule) {
        return (ActionPreferenceStore) Preconditions.checkNotNull(jigsawModule.providesActionPreferences(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
