package com.evie.sidescreen.dagger;

import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class LocationModule_ProvidesLocationHandlerFactory implements Factory<LocationHandler> {
    private final LocationModule module;

    public LocationModule_ProvidesLocationHandlerFactory(LocationModule locationModule) {
        this.module = locationModule;
    }

    @Override // javax.inject.Provider
    public LocationHandler get() {
        return proxyProvidesLocationHandler(this.module);
    }

    public static LocationModule_ProvidesLocationHandlerFactory create(LocationModule locationModule) {
        return new LocationModule_ProvidesLocationHandlerFactory(locationModule);
    }

    public static LocationHandler proxyProvidesLocationHandler(LocationModule locationModule) {
        return (LocationHandler) Preconditions.checkNotNull(locationModule.providesLocationHandler(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
