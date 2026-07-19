package com.evie.sidescreen.dagger;

import com.evie.common.AbTestConfiguration;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory implements Factory<AbTestConfiguration> {
    private final SideScreenDependenciesModule module;

    public SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory(SideScreenDependenciesModule sideScreenDependenciesModule) {
        this.module = sideScreenDependenciesModule;
    }

    @Override // javax.inject.Provider
    public AbTestConfiguration get() {
        return proxyProvidesAbTestConfiguration(this.module);
    }

    public static SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory create(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return new SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory(sideScreenDependenciesModule);
    }

    public static AbTestConfiguration proxyProvidesAbTestConfiguration(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return (AbTestConfiguration) Preconditions.checkNotNull(sideScreenDependenciesModule.providesAbTestConfiguration(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
