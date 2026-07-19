package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.models.wallpaper.WallpaperModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.background.BackgroundModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final class BackgroundModule_ProvidesBackgroundModelFactory implements Factory<BackgroundModel> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<Boolean> backgroundEnabledProvider;
    private final Provider<LifecycleCallbacks> callbacksProvider;
    private final Provider<OkHttpClient> clientProvider;
    private final Provider<Context> contextProvider;
    private final BackgroundModule module;
    private final Provider<WallpaperModel> wallpaperModelProvider;

    public BackgroundModule_ProvidesBackgroundModelFactory(BackgroundModule backgroundModule, Provider<Boolean> provider, Provider<Context> provider2, Provider<LifecycleCallbacks> provider3, Provider<ActivationModel> provider4, Provider<WallpaperModel> provider5, Provider<OkHttpClient> provider6) {
        this.module = backgroundModule;
        this.backgroundEnabledProvider = provider;
        this.contextProvider = provider2;
        this.callbacksProvider = provider3;
        this.activationModelProvider = provider4;
        this.wallpaperModelProvider = provider5;
        this.clientProvider = provider6;
    }

    @Override // javax.inject.Provider
    public BackgroundModel get() {
        return proxyProvidesBackgroundModel(this.module, this.backgroundEnabledProvider.get().booleanValue(), this.contextProvider.get(), this.callbacksProvider.get(), this.activationModelProvider.get(), this.wallpaperModelProvider.get(), this.clientProvider.get());
    }

    public static BackgroundModule_ProvidesBackgroundModelFactory create(BackgroundModule backgroundModule, Provider<Boolean> provider, Provider<Context> provider2, Provider<LifecycleCallbacks> provider3, Provider<ActivationModel> provider4, Provider<WallpaperModel> provider5, Provider<OkHttpClient> provider6) {
        return new BackgroundModule_ProvidesBackgroundModelFactory(backgroundModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static BackgroundModel proxyProvidesBackgroundModel(BackgroundModule backgroundModule, boolean z, Context context, LifecycleCallbacks lifecycleCallbacks, ActivationModel activationModel, WallpaperModel wallpaperModel, OkHttpClient okHttpClient) {
        return (BackgroundModel) Preconditions.checkNotNull(backgroundModule.providesBackgroundModel(z, context, lifecycleCallbacks, activationModel, wallpaperModel, okHttpClient), "Cannot return null from a non-@Nullable @Provides method");
    }
}
