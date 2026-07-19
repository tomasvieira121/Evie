package com.voxel.simplesearchlauncher.dagger.module;

import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory implements Factory<Integer> {
    private static final AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory INSTANCE = new AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory();

    @Override // javax.inject.Provider
    public Integer get() {
        return proxyProvidesAppVersionCodeForSideScreen();
    }

    public static AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory create() {
        return INSTANCE;
    }

    public static Integer proxyProvidesAppVersionCodeForSideScreen() {
        return (Integer) Preconditions.checkNotNull(AppBuildConfigModule.providesAppVersionCodeForSideScreen(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
