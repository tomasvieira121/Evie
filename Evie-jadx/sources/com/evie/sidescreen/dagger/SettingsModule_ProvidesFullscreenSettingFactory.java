package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesFullscreenSettingFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesFullscreenSettingFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesFullscreenSetting(this.module));
    }

    public static SettingsModule_ProvidesFullscreenSettingFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesFullscreenSettingFactory(settingsModule);
    }

    public static boolean proxyProvidesFullscreenSetting(SettingsModule settingsModule) {
        return settingsModule.providesFullscreenSetting();
    }
}
