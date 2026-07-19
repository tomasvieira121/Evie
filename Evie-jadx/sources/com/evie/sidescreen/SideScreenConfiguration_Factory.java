package com.evie.sidescreen;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenConfiguration_Factory implements Factory<SideScreenConfiguration> {
    private final Provider<Gson> gsonProvider;
    private final Provider<SharedPreferences> prefProvider;

    public SideScreenConfiguration_Factory(Provider<SharedPreferences> provider, Provider<Gson> provider2) {
        this.prefProvider = provider;
        this.gsonProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SideScreenConfiguration get() {
        return new SideScreenConfiguration(this.prefProvider.get(), this.gsonProvider.get());
    }

    public static SideScreenConfiguration_Factory create(Provider<SharedPreferences> provider, Provider<Gson> provider2) {
        return new SideScreenConfiguration_Factory(provider, provider2);
    }
}
