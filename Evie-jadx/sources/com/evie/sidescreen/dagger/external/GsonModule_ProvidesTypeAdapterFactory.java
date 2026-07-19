package com.evie.sidescreen.dagger.external;

import android.util.Pair;
import com.google.gson.JsonDeserializer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class GsonModule_ProvidesTypeAdapterFactory implements Factory<Pair<Class, JsonDeserializer>> {
    private static final GsonModule_ProvidesTypeAdapterFactory INSTANCE = new GsonModule_ProvidesTypeAdapterFactory();

    @Override // javax.inject.Provider
    public Pair<Class, JsonDeserializer> get() {
        return proxyProvidesTypeAdapter();
    }

    public static GsonModule_ProvidesTypeAdapterFactory create() {
        return INSTANCE;
    }

    public static Pair<Class, JsonDeserializer> proxyProvidesTypeAdapter() {
        return (Pair) Preconditions.checkNotNull(GsonModule.providesTypeAdapter(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
