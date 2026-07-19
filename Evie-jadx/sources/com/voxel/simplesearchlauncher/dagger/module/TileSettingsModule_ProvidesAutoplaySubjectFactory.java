package com.voxel.simplesearchlauncher.dagger.module;

import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.subjects.BehaviorSubject;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class TileSettingsModule_ProvidesAutoplaySubjectFactory implements Factory<BehaviorSubject<Boolean>> {
    private final TileSettingsModule module;
    private final Provider<SharedPreferences> sharedPreferencesProvider;

    public TileSettingsModule_ProvidesAutoplaySubjectFactory(TileSettingsModule tileSettingsModule, Provider<SharedPreferences> provider) {
        this.module = tileSettingsModule;
        this.sharedPreferencesProvider = provider;
    }

    @Override // javax.inject.Provider
    public BehaviorSubject<Boolean> get() {
        return proxyProvidesAutoplaySubject(this.module, this.sharedPreferencesProvider.get());
    }

    public static TileSettingsModule_ProvidesAutoplaySubjectFactory create(TileSettingsModule tileSettingsModule, Provider<SharedPreferences> provider) {
        return new TileSettingsModule_ProvidesAutoplaySubjectFactory(tileSettingsModule, provider);
    }

    public static BehaviorSubject<Boolean> proxyProvidesAutoplaySubject(TileSettingsModule tileSettingsModule, SharedPreferences sharedPreferences) {
        return (BehaviorSubject) Preconditions.checkNotNull(tileSettingsModule.providesAutoplaySubject(sharedPreferences), "Cannot return null from a non-@Nullable @Provides method");
    }
}
