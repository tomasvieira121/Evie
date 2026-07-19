package com.evie.sidescreen.dagger;

import android.content.SharedPreferences;
import com.evie.models.topics.TopicPersonalizationStore;
import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsModule_ProvidesTopicPersonalizationStoreFactory implements Factory<TopicPersonalizationStore> {
    private final Provider<Gson> gsonProvider;
    private final TopicsModule module;
    private final Provider<SharedPreferences> sharedPreferencesProvider;

    public TopicsModule_ProvidesTopicPersonalizationStoreFactory(TopicsModule topicsModule, Provider<SharedPreferences> provider, Provider<Gson> provider2) {
        this.module = topicsModule;
        this.sharedPreferencesProvider = provider;
        this.gsonProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TopicPersonalizationStore get() {
        return proxyProvidesTopicPersonalizationStore(this.module, this.sharedPreferencesProvider.get(), this.gsonProvider.get());
    }

    public static TopicsModule_ProvidesTopicPersonalizationStoreFactory create(TopicsModule topicsModule, Provider<SharedPreferences> provider, Provider<Gson> provider2) {
        return new TopicsModule_ProvidesTopicPersonalizationStoreFactory(topicsModule, provider, provider2);
    }

    public static TopicPersonalizationStore proxyProvidesTopicPersonalizationStore(TopicsModule topicsModule, SharedPreferences sharedPreferences, Gson gson) {
        return (TopicPersonalizationStore) Preconditions.checkNotNull(topicsModule.providesTopicPersonalizationStore(sharedPreferences, gson), "Cannot return null from a non-@Nullable @Provides method");
    }
}
