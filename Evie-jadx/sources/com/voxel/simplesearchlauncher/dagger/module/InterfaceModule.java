package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.sidescreen.SideScreenSharedDependencies;
import com.voxel.simplesearchlauncher.dagger.LauncherAppComponent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InterfaceModule {
    public static SideScreenSharedDependencies providesSideScreenSharedDependencies(LauncherAppComponent launcherAppComponent) {
        return launcherAppComponent;
    }
}
