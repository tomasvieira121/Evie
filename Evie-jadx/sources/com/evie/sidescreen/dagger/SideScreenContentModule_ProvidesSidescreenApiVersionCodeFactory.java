package com.evie.sidescreen.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory implements Factory<Integer> {
    private final SideScreenContentModule module;

    public SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory(SideScreenContentModule sideScreenContentModule) {
        this.module = sideScreenContentModule;
    }

    @Override // javax.inject.Provider
    public Integer get() {
        return Integer.valueOf(proxyProvidesSidescreenApiVersionCode(this.module));
    }

    public static SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory create(SideScreenContentModule sideScreenContentModule) {
        return new SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory(sideScreenContentModule);
    }

    public static int proxyProvidesSidescreenApiVersionCode(SideScreenContentModule sideScreenContentModule) {
        return sideScreenContentModule.providesSidescreenApiVersionCode();
    }
}
