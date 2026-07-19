package com.evie.sidescreen.dagger;

import android.content.Context;
import android.content.SharedPreferences;
import com.evie.common.AbTestConfiguration;
import com.evie.models.topics.TopicPersonalizationSharedPrefStore;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsAPI;
import com.evie.models.topics.TopicsModel;
import com.google.gson.Gson;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public class TopicsModule {
    public SharedPreferences providesPersonalizationSharedPreferences(Context context) {
        return context.getSharedPreferences("com.evie.models.topics.TopicPersonalizationSharedPrefStore.prefs", 0);
    }

    public TopicPersonalizationStore providesTopicPersonalizationStore(SharedPreferences sharedPreferences, Gson gson) {
        return new TopicPersonalizationSharedPrefStore(sharedPreferences, gson);
    }

    public TopicsModel providesTopicsModel(Retrofit retrofit, AnalyticsHandler analyticsHandler, AbTestConfiguration abTestConfiguration, TopicPersonalizationStore topicPersonalizationStore, LocationHandler locationHandler) {
        return new TopicsModel((TopicsAPI) retrofit.create(TopicsAPI.class), analyticsHandler, abTestConfiguration, topicPersonalizationStore, locationHandler);
    }
}
