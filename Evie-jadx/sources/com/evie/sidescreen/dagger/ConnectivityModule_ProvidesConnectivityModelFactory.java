package com.evie.sidescreen.dagger;

import android.content.Context;
import android.net.ConnectivityManager;
import com.evie.sidescreen.ConnectivityModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectivityModule_ProvidesConnectivityModelFactory implements Factory<ConnectivityModel> {
    private final Provider<CompositeDisposable> compositeDisposableProvider;
    private final Provider<ConnectivityManager> connectivityManagerProvider;
    private final Provider<Context> contextProvider;
    private final ConnectivityModule module;

    public ConnectivityModule_ProvidesConnectivityModelFactory(ConnectivityModule connectivityModule, Provider<Context> provider, Provider<ConnectivityManager> provider2, Provider<CompositeDisposable> provider3) {
        this.module = connectivityModule;
        this.contextProvider = provider;
        this.connectivityManagerProvider = provider2;
        this.compositeDisposableProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ConnectivityModel get() {
        return proxyProvidesConnectivityModel(this.module, this.contextProvider.get(), this.connectivityManagerProvider.get(), this.compositeDisposableProvider.get());
    }

    public static ConnectivityModule_ProvidesConnectivityModelFactory create(ConnectivityModule connectivityModule, Provider<Context> provider, Provider<ConnectivityManager> provider2, Provider<CompositeDisposable> provider3) {
        return new ConnectivityModule_ProvidesConnectivityModelFactory(connectivityModule, provider, provider2, provider3);
    }

    public static ConnectivityModel proxyProvidesConnectivityModel(ConnectivityModule connectivityModule, Context context, ConnectivityManager connectivityManager, CompositeDisposable compositeDisposable) {
        return (ConnectivityModel) Preconditions.checkNotNull(connectivityModule.providesConnectivityModel(context, connectivityManager, compositeDisposable), "Cannot return null from a non-@Nullable @Provides method");
    }
}
