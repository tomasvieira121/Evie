package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesPersonalizeOnboardingModeFactory implements Factory<Boolean> {
    private final SettingsModule module;

    public SettingsModule_ProvidesPersonalizeOnboardingModeFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(proxyProvidesPersonalizeOnboardingMode(this.module));
    }

    public static SettingsModule_ProvidesPersonalizeOnboardingModeFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesPersonalizeOnboardingModeFactory(settingsModule);
    }

    public static boolean proxyProvidesPersonalizeOnboardingMode(SettingsModule settingsModule) {
        return settingsModule.providesPersonalizeOnboardingMode();
    }
}
