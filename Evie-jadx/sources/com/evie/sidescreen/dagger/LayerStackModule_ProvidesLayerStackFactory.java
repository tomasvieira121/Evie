package com.evie.sidescreen.dagger;

import com.evie.sidescreen.LayerStack;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class LayerStackModule_ProvidesLayerStackFactory implements Factory<LayerStack> {
    private final LayerStackModule module;

    public LayerStackModule_ProvidesLayerStackFactory(LayerStackModule layerStackModule) {
        this.module = layerStackModule;
    }

    @Override // javax.inject.Provider
    public LayerStack get() {
        return proxyProvidesLayerStack(this.module);
    }

    public static LayerStackModule_ProvidesLayerStackFactory create(LayerStackModule layerStackModule) {
        return new LayerStackModule_ProvidesLayerStackFactory(layerStackModule);
    }

    public static LayerStack proxyProvidesLayerStack(LayerStackModule layerStackModule) {
        return (LayerStack) Preconditions.checkNotNull(layerStackModule.providesLayerStack(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
