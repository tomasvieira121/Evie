package com.evie.sidescreen.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory implements Factory<Observable<Long>> {
    private final SettingsModule module;

    public SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory(SettingsModule settingsModule) {
        this.module = settingsModule;
    }

    @Override // javax.inject.Provider
    public Observable<Long> get() {
        return proxyProvidesTilesSectionRefreshTimeLimit(this.module);
    }

    public static SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory create(SettingsModule settingsModule) {
        return new SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory(settingsModule);
    }

    public static Observable<Long> proxyProvidesTilesSectionRefreshTimeLimit(SettingsModule settingsModule) {
        return (Observable) Preconditions.checkNotNull(settingsModule.providesTilesSectionRefreshTimeLimit(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
