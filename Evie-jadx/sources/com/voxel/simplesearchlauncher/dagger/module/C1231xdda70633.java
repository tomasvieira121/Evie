package com.voxel.simplesearchlauncher.dagger.module;

import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.subjects.BehaviorSubject;
import javax.inject.Provider;

/* JADX INFO: renamed from: com.voxel.simplesearchlauncher.dagger.module.TileSettingsModule_ProvidesOnSharedPreferenceChangeListenerFactory */
/* JADX INFO: loaded from: classes2.dex */
public final class C1231xdda70633 implements Factory<SharedPreferences.OnSharedPreferenceChangeListener> {
    private final Provider<BehaviorSubject<Boolean>> autoplaySubjectProvider;
    private final TileSettingsModule module;
    private final Provider<SharedPreferences> prefsProvider;

    public C1231xdda70633(TileSettingsModule tileSettingsModule, Provider<SharedPreferences> provider, Provider<BehaviorSubject<Boolean>> provider2) {
        this.module = tileSettingsModule;
        this.prefsProvider = provider;
        this.autoplaySubjectProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SharedPreferences.OnSharedPreferenceChangeListener get() {
        return proxyProvidesOnSharedPreferenceChangeListener(this.module, this.prefsProvider.get(), this.autoplaySubjectProvider.get());
    }

    public static C1231xdda70633 create(TileSettingsModule tileSettingsModule, Provider<SharedPreferences> provider, Provider<BehaviorSubject<Boolean>> provider2) {
        return new C1231xdda70633(tileSettingsModule, provider, provider2);
    }

    public static SharedPreferences.OnSharedPreferenceChangeListener proxyProvidesOnSharedPreferenceChangeListener(TileSettingsModule tileSettingsModule, SharedPreferences sharedPreferences, BehaviorSubject<Boolean> behaviorSubject) {
        return (SharedPreferences.OnSharedPreferenceChangeListener) Preconditions.checkNotNull(tileSettingsModule.providesOnSharedPreferenceChangeListener(sharedPreferences, behaviorSubject), "Cannot return null from a non-@Nullable @Provides method");
    }
}
