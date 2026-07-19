package com.voxel.simplesearchlauncher.dagger.module;

import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class SingletonsModule_ProvidesLocationHandlerFactory implements Factory<LocationHandler> {
    private final SingletonsModule module;

    public SingletonsModule_ProvidesLocationHandlerFactory(SingletonsModule singletonsModule) {
        this.module = singletonsModule;
    }

    @Override // javax.inject.Provider
    public LocationHandler get() {
        return proxyProvidesLocationHandler(this.module);
    }

    public static SingletonsModule_ProvidesLocationHandlerFactory create(SingletonsModule singletonsModule) {
        return new SingletonsModule_ProvidesLocationHandlerFactory(singletonsModule);
    }

    public static LocationHandler proxyProvidesLocationHandler(SingletonsModule singletonsModule) {
        return (LocationHandler) Preconditions.checkNotNull(singletonsModule.providesLocationHandler(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
