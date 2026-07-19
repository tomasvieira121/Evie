package com.voxel.simplesearchlauncher.dagger.module;

import android.content.SharedPreferences;
import com.evie.sidescreen.TileSettings;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.subjects.BehaviorSubject;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class TileSettingsModule_ProvidesTileSettingsFactory implements Factory<TileSettings> {
    private final Provider<BehaviorSubject<Boolean>> autoplaySubjectProvider;
    private final Provider<SharedPreferences.OnSharedPreferenceChangeListener> listenerProvider;
    private final TileSettingsModule module;

    @Override // javax.inject.Provider
    public TileSettings get() {
        return proxyProvidesTileSettings(this.module, this.autoplaySubjectProvider.get(), this.listenerProvider.get());
    }

    public static TileSettings proxyProvidesTileSettings(TileSettingsModule tileSettingsModule, BehaviorSubject<Boolean> behaviorSubject, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        return (TileSettings) Preconditions.checkNotNull(tileSettingsModule.providesTileSettings(behaviorSubject, onSharedPreferenceChangeListener), "Cannot return null from a non-@Nullable @Provides method");
    }
}
