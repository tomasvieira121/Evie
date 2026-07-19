package com.evie.sidescreen.dagger;

import android.content.Context;
import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsModule_ProvidesPersonalizationSharedPreferencesFactory implements Factory<SharedPreferences> {
    private final Provider<Context> contextProvider;
    private final TopicsModule module;

    public TopicsModule_ProvidesPersonalizationSharedPreferencesFactory(TopicsModule topicsModule, Provider<Context> provider) {
        this.module = topicsModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public SharedPreferences get() {
        return proxyProvidesPersonalizationSharedPreferences(this.module, this.contextProvider.get());
    }

    public static TopicsModule_ProvidesPersonalizationSharedPreferencesFactory create(TopicsModule topicsModule, Provider<Context> provider) {
        return new TopicsModule_ProvidesPersonalizationSharedPreferencesFactory(topicsModule, provider);
    }

    public static SharedPreferences proxyProvidesPersonalizationSharedPreferences(TopicsModule topicsModule, Context context) {
        return (SharedPreferences) Preconditions.checkNotNull(topicsModule.providesPersonalizationSharedPreferences(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
