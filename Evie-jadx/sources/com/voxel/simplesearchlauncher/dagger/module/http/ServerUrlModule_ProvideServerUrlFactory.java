package com.voxel.simplesearchlauncher.dagger.module.http;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ServerUrlModule_ProvideServerUrlFactory implements Factory<String> {
    private final Provider<Context> contextProvider;
    private final ServerUrlModule module;

    public ServerUrlModule_ProvideServerUrlFactory(ServerUrlModule serverUrlModule, Provider<Context> provider) {
        this.module = serverUrlModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public String get() {
        return proxyProvideServerUrl(this.module, this.contextProvider.get());
    }

    public static ServerUrlModule_ProvideServerUrlFactory create(ServerUrlModule serverUrlModule, Provider<Context> provider) {
        return new ServerUrlModule_ProvideServerUrlFactory(serverUrlModule, provider);
    }

    public static String proxyProvideServerUrl(ServerUrlModule serverUrlModule, Context context) {
        return (String) Preconditions.checkNotNull(serverUrlModule.provideServerUrl(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
