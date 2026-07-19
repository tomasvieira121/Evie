package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenDependencies;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenDependenciesModule_ProvidesImagePopupListenerFactory implements Factory<SideScreenDependencies.PopupListener> {
    private final SideScreenDependenciesModule module;

    public SideScreenDependenciesModule_ProvidesImagePopupListenerFactory(SideScreenDependenciesModule sideScreenDependenciesModule) {
        this.module = sideScreenDependenciesModule;
    }

    @Override // javax.inject.Provider
    public SideScreenDependencies.PopupListener get() {
        return proxyProvidesImagePopupListener(this.module);
    }

    public static SideScreenDependenciesModule_ProvidesImagePopupListenerFactory create(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return new SideScreenDependenciesModule_ProvidesImagePopupListenerFactory(sideScreenDependenciesModule);
    }

    public static SideScreenDependencies.PopupListener proxyProvidesImagePopupListener(SideScreenDependenciesModule sideScreenDependenciesModule) {
        return sideScreenDependenciesModule.providesImagePopupListener();
    }
}
