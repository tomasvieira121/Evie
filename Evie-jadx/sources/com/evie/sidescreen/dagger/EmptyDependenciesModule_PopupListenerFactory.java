package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenDependencies;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class EmptyDependenciesModule_PopupListenerFactory implements Factory<SideScreenDependencies.PopupListener> {
    private static final EmptyDependenciesModule_PopupListenerFactory INSTANCE = new EmptyDependenciesModule_PopupListenerFactory();

    @Override // javax.inject.Provider
    public SideScreenDependencies.PopupListener get() {
        return proxyPopupListener();
    }

    public static EmptyDependenciesModule_PopupListenerFactory create() {
        return INSTANCE;
    }

    public static SideScreenDependencies.PopupListener proxyPopupListener() {
        return EmptyDependenciesModule.popupListener();
    }
}
