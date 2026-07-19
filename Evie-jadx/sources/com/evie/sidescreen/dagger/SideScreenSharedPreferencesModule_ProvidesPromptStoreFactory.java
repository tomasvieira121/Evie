package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.models.PromptStoreModel;
import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory implements Factory<PromptStoreModel> {
    private final Provider<Context> contextProvider;
    private final Provider<Gson> gsonProvider;

    public SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory(Provider<Context> provider, Provider<Gson> provider2) {
        this.contextProvider = provider;
        this.gsonProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PromptStoreModel get() {
        return proxyProvidesPromptStore(this.contextProvider.get(), this.gsonProvider.get());
    }

    public static SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory create(Provider<Context> provider, Provider<Gson> provider2) {
        return new SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory(provider, provider2);
    }

    public static PromptStoreModel proxyProvidesPromptStore(Context context, Gson gson) {
        return (PromptStoreModel) Preconditions.checkNotNull(SideScreenSharedPreferencesModule.providesPromptStore(context, gson), "Cannot return null from a non-@Nullable @Provides method");
    }
}
