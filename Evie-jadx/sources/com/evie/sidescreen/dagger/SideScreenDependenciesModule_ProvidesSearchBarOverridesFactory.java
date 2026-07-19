package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenDependencies;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory implements Factory<SideScreenDependencies.ActivityOverrides> {
    private final SideScreenDependenciesModule module;

    public SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory(SideScreenDependenciesModule sideScreenDependenciesModule) {
        this.module = sideScreenDependenciesModule;
    }

    @Override // javax.inject.Provider
    public SideScreenDependencies.ActivityOverrides get() {
        return proxyProvidesSearchBarOverrides(this.module);
    }

    public static SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory create(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return new SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory(sideScreenDependenciesModule);
    }

    public static SideScreenDependencies.ActivityOverrides proxyProvidesSearchBarOverrides(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return (SideScreenDependencies.ActivityOverrides) Preconditions.checkNotNull(sideScreenDependenciesModule.providesSearchBarOverrides(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
