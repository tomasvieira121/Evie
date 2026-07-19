package com.voxel.simplesearchlauncher.dagger.module.http;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public final class RetrofitModule_ProvidesRetrofitFactory implements Factory<Retrofit> {
    private final Provider<OkHttpClient> clientProvider;
    private final Provider<Gson> gsonProvider;
    private final RetrofitModule module;
    private final Provider<String> serverUrlProvider;

    public RetrofitModule_ProvidesRetrofitFactory(RetrofitModule retrofitModule, Provider<Gson> provider, Provider<OkHttpClient> provider2, Provider<String> provider3) {
        this.module = retrofitModule;
        this.gsonProvider = provider;
        this.clientProvider = provider2;
        this.serverUrlProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Retrofit get() {
        return proxyProvidesRetrofit(this.module, this.gsonProvider.get(), this.clientProvider.get(), this.serverUrlProvider.get());
    }

    public static RetrofitModule_ProvidesRetrofitFactory create(RetrofitModule retrofitModule, Provider<Gson> provider, Provider<OkHttpClient> provider2, Provider<String> provider3) {
        return new RetrofitModule_ProvidesRetrofitFactory(retrofitModule, provider, provider2, provider3);
    }

    public static Retrofit proxyProvidesRetrofit(RetrofitModule retrofitModule, Gson gson, OkHttpClient okHttpClient, String str) {
        return (Retrofit) Preconditions.checkNotNull(retrofitModule.providesRetrofit(gson, okHttpClient, str), "Cannot return null from a non-@Nullable @Provides method");
    }
}
