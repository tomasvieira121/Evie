package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesFrequentlyUsedEnabledFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesFrequentlyUsedEnabledFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesFrequentlyUsedEnabled(this.module));
    }

    public static SettingsModule_ProvidesFrequentlyUsedEnabledFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesFrequentlyUsedEnabledFactory(settingsModule);
    }

    public static boolean proxyProvidesFrequentlyUsedEnabled(SettingsModule settingsModule) {
        return settingsModule.providesFrequentlyUsedEnabled();
    }
}
