package com.evie.sidescreen.personalize;

import com.evie.models.topics.data.TopicId;
import java.util.Collection;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public enum FollowState {
    FOLLOW,
    FOLLOWING,
    BLOCKED;

    public static FollowState determineFollowState(boolean z, boolean z2) {
        if (z) {
            return FOLLOWING;
        }
        if (z2) {
            return BLOCKED;
        }
        return FOLLOW;
    }

    public static FollowState determineFollowState(Topic topic, Collection<TopicId> collection, Collection<TopicId> collection2) {
        if (topic == null) {
            return FOLLOW;
        }
        return determineFollowState(topic.getId(), collection, collection2);
    }

    public static FollowState determineFollowState(String str, Collection<TopicId> collection, Collection<TopicId> collection2) {
        if (str == null || collection == null || collection2 == null) {
            return FOLLOW;
        }
        TopicId topicId = new TopicId(str);
        return determineFollowState(collection.contains(topicId), collection2.contains(topicId));
    }
}
