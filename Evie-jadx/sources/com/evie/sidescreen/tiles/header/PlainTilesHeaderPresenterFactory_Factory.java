package com.evie.sidescreen.tiles.header;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class PlainTilesHeaderPresenterFactory_Factory implements Factory<PlainTilesHeaderPresenterFactory> {
    private static final PlainTilesHeaderPresenterFactory_Factory INSTANCE = new PlainTilesHeaderPresenterFactory_Factory();

    @Override // javax.inject.Provider
    public PlainTilesHeaderPresenterFactory get() {
        return new PlainTilesHeaderPresenterFactory();
    }

    public static PlainTilesHeaderPresenterFactory_Factory create() {
        return INSTANCE;
    }
}
