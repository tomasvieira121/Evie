package com.evie.models.topics;

import com.evie.models.topics.data.TopicId;
import io.reactivex.Observable;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface TopicPersonalizationStore {
    void addTopicBlocks(Set<TopicId> set);

    void addTopicFollows(Set<TopicId> set);

    Set<TopicId> getTopicBlocks();

    Set<TopicId> getTopicFollows();

    Observable<Object> listenToChanges();

    void removeTopicBlocks(Set<TopicId> set);

    void removeTopicFollows(Set<TopicId> set);

    void setTopicBlocks(Set<TopicId> set);

    void setTopicFollows(Set<TopicId> set);
}
