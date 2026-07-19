package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesTopHeaderEnabledFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesTopHeaderEnabledFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesTopHeaderEnabled(this.module));
    }

    public static SettingsModule_ProvidesTopHeaderEnabledFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesTopHeaderEnabledFactory(settingsModule);
    }

    public static boolean proxyProvidesTopHeaderEnabled(SettingsModule settingsModule) {
        return settingsModule.providesTopHeaderEnabled();
    }
}
