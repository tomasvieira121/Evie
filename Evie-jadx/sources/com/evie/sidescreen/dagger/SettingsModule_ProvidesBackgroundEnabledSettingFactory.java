package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesBackgroundEnabledSettingFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesBackgroundEnabledSettingFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesBackgroundEnabledSetting(this.module));
    }

    public static SettingsModule_ProvidesBackgroundEnabledSettingFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesBackgroundEnabledSettingFactory(settingsModule);
    }

    public static boolean proxyProvidesBackgroundEnabledSetting(SettingsModule settingsModule) {
        return settingsModule.providesBackgroundEnabledSetting();
    }
}
