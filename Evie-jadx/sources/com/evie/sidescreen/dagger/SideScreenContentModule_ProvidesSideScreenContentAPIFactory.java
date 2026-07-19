package com.evie.sidescreen.dagger;

import com.evie.models.sidescreen.SideScreenContentAPI;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenContentModule_ProvidesSideScreenContentAPIFactory implements Factory<SideScreenContentAPI> {
    private final Provider<OkHttpClient> clientProvider;
    private final SideScreenContentModule module;
    private final Provider<Retrofit> retrofitProvider;

    public SideScreenContentModule_ProvidesSideScreenContentAPIFactory(SideScreenContentModule sideScreenContentModule, Provider<OkHttpClient> provider, Provider<Retrofit> provider2) {
        this.module = sideScreenContentModule;
        this.clientProvider = provider;
        this.retrofitProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SideScreenContentAPI get() {
        return proxyProvidesSideScreenContentAPI(this.module, this.clientProvider.get(), this.retrofitProvider.get());
    }

    public static SideScreenContentModule_ProvidesSideScreenContentAPIFactory create(SideScreenContentModule sideScreenContentModule, Provider<OkHttpClient> provider, Provider<Retrofit> provider2) {
        return new SideScreenContentModule_ProvidesSideScreenContentAPIFactory(sideScreenContentModule, provider, provider2);
    }

    public static SideScreenContentAPI proxyProvidesSideScreenContentAPI(SideScreenContentModule sideScreenContentModule, OkHttpClient okHttpClient, Retrofit retrofit) {
        return (SideScreenContentAPI) Preconditions.checkNotNull(sideScreenContentModule.providesSideScreenContentAPI(okHttpClient, retrofit), "Cannot return null from a non-@Nullable @Provides method");
    }
}
