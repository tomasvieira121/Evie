package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesIsRtlFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesIsRtlFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesIsRtl(this.module));
    }

    public static SettingsModule_ProvidesIsRtlFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesIsRtlFactory(settingsModule);
    }

    public static boolean proxyProvidesIsRtl(SettingsModule settingsModule) {
        return settingsModule.providesIsRtl();
    }
}
