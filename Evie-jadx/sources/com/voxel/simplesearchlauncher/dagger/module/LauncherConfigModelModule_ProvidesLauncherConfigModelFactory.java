package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.config.LauncherConfigModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public final class LauncherConfigModelModule_ProvidesLauncherConfigModelFactory implements Factory<LauncherConfigModel> {
    private final LauncherConfigModelModule module;
    private final Provider<Retrofit> retrofitProvider;

    public LauncherConfigModelModule_ProvidesLauncherConfigModelFactory(LauncherConfigModelModule launcherConfigModelModule, Provider<Retrofit> provider) {
        this.module = launcherConfigModelModule;
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public LauncherConfigModel get() {
        return proxyProvidesLauncherConfigModel(this.module, this.retrofitProvider.get());
    }

    public static LauncherConfigModelModule_ProvidesLauncherConfigModelFactory create(LauncherConfigModelModule launcherConfigModelModule, Provider<Retrofit> provider) {
        return new LauncherConfigModelModule_ProvidesLauncherConfigModelFactory(launcherConfigModelModule, provider);
    }

    public static LauncherConfigModel proxyProvidesLauncherConfigModel(LauncherConfigModelModule launcherConfigModelModule, Retrofit retrofit) {
        return (LauncherConfigModel) Preconditions.checkNotNull(launcherConfigModelModule.providesLauncherConfigModel(retrofit), "Cannot return null from a non-@Nullable @Provides method");
    }
}
