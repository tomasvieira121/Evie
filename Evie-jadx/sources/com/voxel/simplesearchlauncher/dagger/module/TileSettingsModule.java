package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import android.content.SharedPreferences;
import com.evie.sidescreen.TileSettings;
import com.voxel.launcher3.LauncherAppState;
import io.reactivex.subjects.BehaviorSubject;

/* JADX INFO: loaded from: classes2.dex */
public class TileSettingsModule {
    SharedPreferences providesSharedPreferences(Context context) {
        return context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
    }

    BehaviorSubject<Boolean> providesAutoplaySubject(SharedPreferences sharedPreferences) {
        return BehaviorSubject.createDefault(Boolean.valueOf(sharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO", false)));
    }

    SharedPreferences.OnSharedPreferenceChangeListener providesOnSharedPreferenceChangeListener(SharedPreferences sharedPreferences, final BehaviorSubject<Boolean> behaviorSubject) {
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.voxel.simplesearchlauncher.dagger.module.-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                TileSettingsModule.lambda$providesOnSharedPreferenceChangeListener$0(behaviorSubject, sharedPreferences2, str);
            }
        };
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        return onSharedPreferenceChangeListener;
    }

    static /* synthetic */ void lambda$providesOnSharedPreferenceChangeListener$0(BehaviorSubject behaviorSubject, SharedPreferences sharedPreferences, String str) {
        if ("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO".equals(str)) {
            behaviorSubject.onNext(Boolean.valueOf(sharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO", false)));
        }
    }

    TileSettings providesTileSettings(BehaviorSubject<Boolean> behaviorSubject, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        return TileSettings.builder().autoplayVideos(behaviorSubject).build();
    }
}
