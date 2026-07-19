package com.evie.sidescreen.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesConvertToCelsiusFactory implements Factory<Observable<Boolean>> {
    private final SettingsModule module;

    public SettingsModule_ProvidesConvertToCelsiusFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Observable<Boolean> get() {
        return proxyProvidesConvertToCelsius(this.module);
    }

    public static SettingsModule_ProvidesConvertToCelsiusFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesConvertToCelsiusFactory(settingsModule);
    }

    public static Observable<Boolean> proxyProvidesConvertToCelsius(SettingsModule settingsModule) {
        return (Observable) Preconditions.checkNotNull(settingsModule.providesConvertToCelsius(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
