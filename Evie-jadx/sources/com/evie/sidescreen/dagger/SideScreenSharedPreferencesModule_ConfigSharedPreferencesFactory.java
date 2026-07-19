package com.evie.sidescreen.dagger;

import android.content.Context;
import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory implements Factory<SharedPreferences> {
    private final Provider<Context> contextProvider;

    public SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public SharedPreferences get() {
        return proxyConfigSharedPreferences(this.contextProvider.get());
    }

    public static SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory create(Provider<Context> provider) {
        return new SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory(provider);
    }

    public static SharedPreferences proxyConfigSharedPreferences(Context context) {
        return (SharedPreferences) Preconditions.checkNotNull(SideScreenSharedPreferencesModule.configSharedPreferences(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
