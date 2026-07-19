package com.evie.models.topics;

import android.content.SharedPreferences;
import com.evie.models.topics.data.TopicId;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class TopicPersonalizationSharedPrefStore implements TopicPersonalizationStore {
    private final Gson mGson;
    private final SharedPreferences mSharedPreferences;
    private final String FOLLOWED_TOPICS = "followed_topics";
    private final String BLOCKED_TOPICS = "blocked_topics";
    private final PublishSubject<Object> mPublishSubject = PublishSubject.create();
    private SharedPreferences.OnSharedPreferenceChangeListener mOnSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.evie.models.topics.-$$Lambda$TopicPersonalizationSharedPrefStore$tQBB5GZNdPhhjhMphnXURDH-5t8
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            TopicPersonalizationSharedPrefStore.lambda$new$0(this.f$0, sharedPreferences, str);
        }
    };

    public TopicPersonalizationSharedPrefStore(SharedPreferences sharedPreferences, Gson gson) {
        this.mSharedPreferences = sharedPreferences;
        this.mSharedPreferences.registerOnSharedPreferenceChangeListener(this.mOnSharedPreferenceChangeListener);
        this.mGson = gson;
    }

    public static /* synthetic */ void lambda$new$0(TopicPersonalizationSharedPrefStore topicPersonalizationSharedPrefStore, SharedPreferences sharedPreferences, String str) {
        if ("followed_topics".equals(str) || "blocked_topics".equals(str)) {
            topicPersonalizationSharedPrefStore.mPublishSubject.onNext(str);
        }
    }

    Set<TopicId> getTopicIdsForKey(String str) {
        String string = this.mSharedPreferences.getString(str, null);
        if (string == null || string.isEmpty()) {
            return Collections.emptySet();
        }
        try {
            return (Set) this.mGson.fromJson(string, new TypeToken<HashSet<TopicId>>() { // from class: com.evie.models.topics.TopicPersonalizationSharedPrefStore.1
            }.getType());
        } catch (Exception unused) {
            this.mSharedPreferences.edit().remove(str).apply();
            return Collections.emptySet();
        }
    }

    void setTopicIdsForKey(String str, Set<TopicId> set) {
        this.mSharedPreferences.edit().putString(str, this.mGson.toJson(set, Set.class)).apply();
    }

    void addTopicIdsForKey(String str, Set<TopicId> set) {
        HashSet hashSet = new HashSet(getTopicIdsForKey(str));
        hashSet.addAll(set);
        setTopicIdsForKey(str, hashSet);
    }

    void removeTopicIdsForKey(String str, Set<TopicId> set) {
        HashSet hashSet = new HashSet(getTopicIdsForKey(str));
        hashSet.removeAll(set);
        setTopicIdsForKey(str, hashSet);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public Observable<Object> listenToChanges() {
        return this.mPublishSubject;
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public Set<TopicId> getTopicFollows() {
        return getTopicIdsForKey("followed_topics");
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void setTopicFollows(Set<TopicId> set) {
        setTopicIdsForKey("followed_topics", set);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void addTopicFollows(Set<TopicId> set) {
        addTopicIdsForKey("followed_topics", set);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void removeTopicFollows(Set<TopicId> set) {
        removeTopicIdsForKey("followed_topics", set);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public Set<TopicId> getTopicBlocks() {
        return getTopicIdsForKey("blocked_topics");
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void setTopicBlocks(Set<TopicId> set) {
        setTopicIdsForKey("blocked_topics", set);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void addTopicBlocks(Set<TopicId> set) {
        addTopicIdsForKey("blocked_topics", set);
    }

    @Override // com.evie.models.topics.TopicPersonalizationStore
    public void removeTopicBlocks(Set<TopicId> set) {
        removeTopicIdsForKey("blocked_topics", set);
    }
}
