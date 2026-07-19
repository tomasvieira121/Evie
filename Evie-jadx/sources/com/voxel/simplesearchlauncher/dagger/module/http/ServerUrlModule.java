package com.voxel.simplesearchlauncher.dagger.module.http;

import android.content.Context;
import com.voxel.launcher3.LauncherAppState;

/* JADX INFO: loaded from: classes2.dex */
public class ServerUrlModule {
    String provideServerUrl(Context context) {
        return context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).getBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", false) ? "https://api-staging.evie.com/" : "https://api2.evie.com";
    }
}
