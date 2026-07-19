package com.evie.sidescreen.searchbar;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class WhiteSearchBarBackgroundModelFactory_Factory implements Factory<WhiteSearchBarBackgroundModelFactory> {
    private static final WhiteSearchBarBackgroundModelFactory_Factory INSTANCE = new WhiteSearchBarBackgroundModelFactory_Factory();

    @Override // javax.inject.Provider
    public WhiteSearchBarBackgroundModelFactory get() {
        return new WhiteSearchBarBackgroundModelFactory();
    }

    public static WhiteSearchBarBackgroundModelFactory_Factory create() {
        return INSTANCE;
    }
}
