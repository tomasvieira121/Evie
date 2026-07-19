package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.sidescreen.SideScreenSharedDependencies;
import com.voxel.simplesearchlauncher.dagger.LauncherAppComponent;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class InterfaceModule_ProvidesSideScreenSharedDependenciesFactory implements Factory<SideScreenSharedDependencies> {
    private final Provider<LauncherAppComponent> launcherAppComponentProvider;

    public InterfaceModule_ProvidesSideScreenSharedDependenciesFactory(Provider<LauncherAppComponent> provider) {
        this.launcherAppComponentProvider = provider;
    }

    @Override // javax.inject.Provider
    public SideScreenSharedDependencies get() {
        return proxyProvidesSideScreenSharedDependencies(this.launcherAppComponentProvider.get());
    }

    public static InterfaceModule_ProvidesSideScreenSharedDependenciesFactory create(Provider<LauncherAppComponent> provider) {
        return new InterfaceModule_ProvidesSideScreenSharedDependenciesFactory(provider);
    }

    public static SideScreenSharedDependencies proxyProvidesSideScreenSharedDependencies(LauncherAppComponent launcherAppComponent) {
        return (SideScreenSharedDependencies) Preconditions.checkNotNull(InterfaceModule.providesSideScreenSharedDependencies(launcherAppComponent), "Cannot return null from a non-@Nullable @Provides method");
    }
}
