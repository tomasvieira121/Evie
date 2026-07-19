package com.evie.sidescreen.dagger;

import com.evie.sidescreen.network.NetworkStatusModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkStatusModule_ProvidesNetworkStatusModelFactory implements Factory<NetworkStatusModel> {
    private final NetworkStatusModule module;

    public NetworkStatusModule_ProvidesNetworkStatusModelFactory(NetworkStatusModule networkStatusModule) {
        this.module = networkStatusModule;
    }

    @Override // javax.inject.Provider
    public NetworkStatusModel get() {
        return proxyProvidesNetworkStatusModel(this.module);
    }

    public static NetworkStatusModule_ProvidesNetworkStatusModelFactory create(NetworkStatusModule networkStatusModule) {
        return new NetworkStatusModule_ProvidesNetworkStatusModelFactory(networkStatusModule);
    }

    public static NetworkStatusModel proxyProvidesNetworkStatusModel(NetworkStatusModule networkStatusModule) {
        return (NetworkStatusModel) Preconditions.checkNotNull(networkStatusModule.providesNetworkStatusModel(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
