package com.evie.sidescreen.dagger;

import com.evie.sidescreen.TileSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TileSettingsModule_ProvideAutoplayVideoSettingFactory implements Factory<Observable<Boolean>> {
    private final TileSettingsModule module;
    private final Provider<TileSettings> settingsProvider;

    public TileSettingsModule_ProvideAutoplayVideoSettingFactory(TileSettingsModule tileSettingsModule, Provider<TileSettings> provider) {
        this.module = tileSettingsModule;
        this.settingsProvider = provider;
    }

    @Override // javax.inject.Provider
    public Observable<Boolean> get() {
        return proxyProvideAutoplayVideoSetting(this.module, this.settingsProvider.get());
    }

    public static TileSettingsModule_ProvideAutoplayVideoSettingFactory create(TileSettingsModule tileSettingsModule, Provider<TileSettings> provider) {
        return new TileSettingsModule_ProvideAutoplayVideoSettingFactory(tileSettingsModule, provider);
    }

    public static Observable<Boolean> proxyProvideAutoplayVideoSetting(TileSettingsModule tileSettingsModule, TileSettings tileSettings) {
        return (Observable) Preconditions.checkNotNull(tileSettingsModule.provideAutoplayVideoSetting(tileSettings), "Cannot return null from a non-@Nullable @Provides method");
    }
}
