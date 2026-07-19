package com.voxel.simplesearchlauncher.dagger.module.http;

import android.util.Pair;
import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class RetrofitModule_ProvidesGsonFactory implements Factory<Gson> {
    private final RetrofitModule module;
    private final Provider<Set<Pair<Class, JsonDeserializer>>> typeAdaptersProvider;

    public RetrofitModule_ProvidesGsonFactory(RetrofitModule retrofitModule, Provider<Set<Pair<Class, JsonDeserializer>>> provider) {
        this.module = retrofitModule;
        this.typeAdaptersProvider = provider;
    }

    @Override // javax.inject.Provider
    public Gson get() {
        return proxyProvidesGson(this.module, this.typeAdaptersProvider.get());
    }

    public static RetrofitModule_ProvidesGsonFactory create(RetrofitModule retrofitModule, Provider<Set<Pair<Class, JsonDeserializer>>> provider) {
        return new RetrofitModule_ProvidesGsonFactory(retrofitModule, provider);
    }

    public static Gson proxyProvidesGson(RetrofitModule retrofitModule, Set<Pair<Class, JsonDeserializer>> set) {
        return (Gson) Preconditions.checkNotNull(retrofitModule.providesGson(set), "Cannot return null from a non-@Nullable @Provides method");
    }
}
