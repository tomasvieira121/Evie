package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesSearchEnabledSettingFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesSearchEnabledSettingFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesSearchEnabledSetting(this.module));
    }

    public static SettingsModule_ProvidesSearchEnabledSettingFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesSearchEnabledSettingFactory(settingsModule);
    }

    public static boolean proxyProvidesSearchEnabledSetting(SettingsModule settingsModule) {
        return settingsModule.providesSearchEnabledSetting();
    }
}
