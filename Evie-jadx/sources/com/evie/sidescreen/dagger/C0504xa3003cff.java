package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: renamed from: com.evie.sidescreen.dagger.SideScreenSharedPreferencesModule_ProvidesSharedPreferencesModelFactory */
/* JADX INFO: loaded from: classes.dex */
public final class C0504xa3003cff implements Factory<SideScreenSharedPreferencesModel> {
    private final Provider<Context> contextProvider;
    private final Provider<Gson> gsonProvider;

    public C0504xa3003cff(Provider<Context> provider, Provider<Gson> provider2) {
        this.contextProvider = provider;
        this.gsonProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SideScreenSharedPreferencesModel get() {
        return proxyProvidesSharedPreferencesModel(this.contextProvider.get(), this.gsonProvider.get());
    }

    public static C0504xa3003cff create(Provider<Context> provider, Provider<Gson> provider2) {
        return new C0504xa3003cff(provider, provider2);
    }

    public static SideScreenSharedPreferencesModel proxyProvidesSharedPreferencesModel(Context context, Gson gson) {
        return (SideScreenSharedPreferencesModel) Preconditions.checkNotNull(SideScreenSharedPreferencesModule.providesSharedPreferencesModel(context, gson), "Cannot return null from a non-@Nullable @Provides method");
    }
}
