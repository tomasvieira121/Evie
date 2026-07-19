package com.voxel.simplesearchlauncher.dagger.module;

import is.shortcut.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AppBuildConfigModule {
    private static int appVersionCode() {
        return BuildConfig.VERSION_CODE;
    }

    public static Integer providesAppVersionCodeForSideScreen() {
        return Integer.valueOf(appVersionCode());
    }
}
