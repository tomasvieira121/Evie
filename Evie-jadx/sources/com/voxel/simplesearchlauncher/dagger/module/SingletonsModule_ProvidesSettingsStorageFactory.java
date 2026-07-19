package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import com.evie.config.LauncherConfigModel;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SingletonsModule_ProvidesSettingsStorageFactory implements Factory<SettingsStorage> {
    private final Provider<Context> contextProvider;
    private final Provider<LauncherConfigModel> lazyProvider;
    private final SingletonsModule module;

    public SingletonsModule_ProvidesSettingsStorageFactory(SingletonsModule singletonsModule, Provider<Context> provider, Provider<LauncherConfigModel> provider2) {
        this.module = singletonsModule;
        this.contextProvider = provider;
        this.lazyProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SettingsStorage get() {
        return proxyProvidesSettingsStorage(this.module, this.contextProvider.get(), DoubleCheck.lazy(this.lazyProvider));
    }

    public static SingletonsModule_ProvidesSettingsStorageFactory create(SingletonsModule singletonsModule, Provider<Context> provider, Provider<LauncherConfigModel> provider2) {
        return new SingletonsModule_ProvidesSettingsStorageFactory(singletonsModule, provider, provider2);
    }

    public static SettingsStorage proxyProvidesSettingsStorage(SingletonsModule singletonsModule, Context context, Lazy<LauncherConfigModel> lazy) {
        return (SettingsStorage) Preconditions.checkNotNull(singletonsModule.providesSettingsStorage(context, lazy), "Cannot return null from a non-@Nullable @Provides method");
    }
}
