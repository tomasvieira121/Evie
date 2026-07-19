package com.evie.sidescreen.dagger;

import com.evie.sidescreen.mvp.ItemPresenter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import javax.inject.Provider;

/* JADX INFO: renamed from: com.evie.sidescreen.dagger.SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C0497x3015924d implements Factory<List<ItemPresenter>> {
    private final Provider<SideScreenSubcomponent> componentProvider;
    private final SideScreenDependenciesModule module;

    public C0497x3015924d(SideScreenDependenciesModule sideScreenDependenciesModule, Provider<SideScreenSubcomponent> provider) {
        this.module = sideScreenDependenciesModule;
        this.componentProvider = provider;
    }

    @Override // javax.inject.Provider
    public List<ItemPresenter> get() {
        return proxyProvidesCustomMainTabPresenters(this.module, this.componentProvider.get());
    }

    public static C0497x3015924d create(SideScreenDependenciesModule sideScreenDependenciesModule, Provider<SideScreenSubcomponent> provider) {
        return new C0497x3015924d(sideScreenDependenciesModule, provider);
    }

    public static List<ItemPresenter> proxyProvidesCustomMainTabPresenters(SideScreenDependenciesModule sideScreenDependenciesModule, SideScreenSubcomponent sideScreenSubcomponent) {
        return (List) Preconditions.checkNotNull(sideScreenDependenciesModule.providesCustomMainTabPresenters(sideScreenSubcomponent), "Cannot return null from a non-@Nullable @Provides method");
    }
}
