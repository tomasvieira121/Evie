package com.evie.sidescreen.dagger;

import com.evie.models.config.ConfigModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigModule_ProvidesConfigModelFactory implements Factory<ConfigModel> {
    private final Provider<Retrofit> retrofitProvider;

    public ConfigModule_ProvidesConfigModelFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public ConfigModel get() {
        return proxyProvidesConfigModel(this.retrofitProvider.get());
    }

    public static ConfigModule_ProvidesConfigModelFactory create(Provider<Retrofit> provider) {
        return new ConfigModule_ProvidesConfigModelFactory(provider);
    }

    public static ConfigModel proxyProvidesConfigModel(Retrofit retrofit) {
        return (ConfigModel) Preconditions.checkNotNull(ConfigModule.providesConfigModel(retrofit), "Cannot return null from a non-@Nullable @Provides method");
    }
}
