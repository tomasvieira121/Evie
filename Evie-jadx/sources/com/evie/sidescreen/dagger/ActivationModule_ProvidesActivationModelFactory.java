package com.evie.sidescreen.dagger;

import com.evie.sidescreen.ActivationModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationModule_ProvidesActivationModelFactory implements Factory<ActivationModel> {
    private final ActivationModule module;

    public ActivationModule_ProvidesActivationModelFactory(ActivationModule activationModule) {
        this.module = activationModule;
    }

    @Override // javax.inject.Provider
    public ActivationModel get() {
        return proxyProvidesActivationModel(this.module);
    }

    public static ActivationModule_ProvidesActivationModelFactory create(ActivationModule activationModule) {
        return new ActivationModule_ProvidesActivationModelFactory(activationModule);
    }

    public static ActivationModel proxyProvidesActivationModel(ActivationModule activationModule) {
        return (ActivationModel) Preconditions.checkNotNull(activationModule.providesActivationModel(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
