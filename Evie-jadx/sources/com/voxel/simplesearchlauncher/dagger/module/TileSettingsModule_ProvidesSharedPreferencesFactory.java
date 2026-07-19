package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class TileSettingsModule_ProvidesSharedPreferencesFactory implements Factory<SharedPreferences> {
    private final Provider<Context> contextProvider;
    private final TileSettingsModule module;

    public TileSettingsModule_ProvidesSharedPreferencesFactory(TileSettingsModule tileSettingsModule, Provider<Context> provider) {
        this.module = tileSettingsModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public SharedPreferences get() {
        return proxyProvidesSharedPreferences(this.module, this.contextProvider.get());
    }

    public static TileSettingsModule_ProvidesSharedPreferencesFactory create(TileSettingsModule tileSettingsModule, Provider<Context> provider) {
        return new TileSettingsModule_ProvidesSharedPreferencesFactory(tileSettingsModule, provider);
    }

    public static SharedPreferences proxyProvidesSharedPreferences(TileSettingsModule tileSettingsModule, Context context) {
        return (SharedPreferences) Preconditions.checkNotNull(tileSettingsModule.providesSharedPreferences(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
