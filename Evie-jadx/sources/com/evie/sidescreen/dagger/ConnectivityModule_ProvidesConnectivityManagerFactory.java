package com.evie.sidescreen.dagger;

import android.content.Context;
import android.net.ConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectivityModule_ProvidesConnectivityManagerFactory implements Factory<ConnectivityManager> {
    private final Provider<Context> contextProvider;
    private final ConnectivityModule module;

    public ConnectivityModule_ProvidesConnectivityManagerFactory(ConnectivityModule connectivityModule, Provider<Context> provider) {
        this.module = connectivityModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ConnectivityManager get() {
        return proxyProvidesConnectivityManager(this.module, this.contextProvider.get());
    }

    public static ConnectivityModule_ProvidesConnectivityManagerFactory create(ConnectivityModule connectivityModule, Provider<Context> provider) {
        return new ConnectivityModule_ProvidesConnectivityManagerFactory(connectivityModule, provider);
    }

    public static ConnectivityManager proxyProvidesConnectivityManager(ConnectivityModule connectivityModule, Context context) {
        return (ConnectivityManager) Preconditions.checkNotNull(connectivityModule.providesConnectivityManager(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
