package com.evie.sidescreen.dagger;

import com.evie.sidescreen.LauncherInfo;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenDependenciesModule_ProvidesLauncherInfoFactory implements Factory<LauncherInfo> {
    private final SideScreenDependenciesModule module;

    public SideScreenDependenciesModule_ProvidesLauncherInfoFactory(SideScreenDependenciesModule sideScreenDependenciesModule) {
        this.module = sideScreenDependenciesModule;
    }

    @Override // javax.inject.Provider
    public LauncherInfo get() {
        return proxyProvidesLauncherInfo(this.module);
    }

    public static SideScreenDependenciesModule_ProvidesLauncherInfoFactory create(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return new SideScreenDependenciesModule_ProvidesLauncherInfoFactory(sideScreenDependenciesModule);
    }

    public static LauncherInfo proxyProvidesLauncherInfo(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return (LauncherInfo) Preconditions.checkNotNull(sideScreenDependenciesModule.providesLauncherInfo(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
