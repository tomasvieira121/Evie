package com.evie.sidescreen.dagger;

import com.evie.models.wallpaper.WallpaperModel;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class BackgroundModule_ProvidesWallpaperModelFactory implements Factory<WallpaperModel> {
    private final BackgroundModule module;
    private final Provider<Retrofit> retrofitProvider;

    public BackgroundModule_ProvidesWallpaperModelFactory(BackgroundModule backgroundModule, Provider<Retrofit> provider) {
        this.module = backgroundModule;
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public WallpaperModel get() {
        return proxyProvidesWallpaperModel(this.module, this.retrofitProvider.get());
    }

    public static BackgroundModule_ProvidesWallpaperModelFactory create(BackgroundModule backgroundModule, Provider<Retrofit> provider) {
        return new BackgroundModule_ProvidesWallpaperModelFactory(backgroundModule, provider);
    }

    public static WallpaperModel proxyProvidesWallpaperModel(BackgroundModule backgroundModule, Retrofit retrofit) {
        return (WallpaperModel) Preconditions.checkNotNull(backgroundModule.providesWallpaperModel(retrofit), "Cannot return null from a non-@Nullable @Provides method");
    }
}
