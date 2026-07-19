package com.evie.sidescreen.dagger;

import com.evie.sidescreen.mvp.ItemPresenter;
import dagger.internal.Factory;
import java.util.List;

/* JADX INFO: renamed from: com.evie.sidescreen.dagger.SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C0498x4c85fa1f implements Factory<List<ItemPresenter>> {
    private final SideScreenDependenciesModule module;

    public C0498x4c85fa1f(SideScreenDependenciesModule sideScreenDependenciesModule) {
        this.module = sideScreenDependenciesModule;
    }

    @Override // javax.inject.Provider
    public List<ItemPresenter> get() {
        return proxyProvidesUnactivatedTilesSectionOverride(this.module);
    }

    public static C0498x4c85fa1f create(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return new C0498x4c85fa1f(sideScreenDependenciesModule);
    }

    public static List<ItemPresenter> proxyProvidesUnactivatedTilesSectionOverride(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return sideScreenDependenciesModule.providesUnactivatedTilesSectionOverride();
    }
}
