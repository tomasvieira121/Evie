package com.evie.sidescreen.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesDataUsageDebugEnabledFactory implements Factory<Observable<Boolean>> {
    private final SettingsModule module;

    public SettingsModule_ProvidesDataUsageDebugEnabledFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Observable<Boolean> get() {
        return proxyProvidesDataUsageDebugEnabled(this.module);
    }

    public static SettingsModule_ProvidesDataUsageDebugEnabledFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesDataUsageDebugEnabledFactory(settingsModule);
    }

    public static Observable<Boolean> proxyProvidesDataUsageDebugEnabled(SettingsModule settingsModule) {
        return (Observable) Preconditions.checkNotNull(settingsModule.providesDataUsageDebugEnabled(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
