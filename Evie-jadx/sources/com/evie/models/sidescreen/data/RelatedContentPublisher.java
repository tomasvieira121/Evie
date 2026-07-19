package com.evie.models.sidescreen.data;

import java.util.Collections;
import java.util.List;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class RelatedContentPublisher {
    private List<Object> follows = Collections.emptyList();
    private List<Topic> topics = Collections.emptyList();

    protected boolean canEqual(Object obj) {
        return obj instanceof RelatedContentPublisher;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RelatedContentPublisher)) {
            return false;
        }
        RelatedContentPublisher relatedContentPublisher = (RelatedContentPublisher) obj;
        if (!relatedContentPublisher.canEqual(this)) {
            return false;
        }
        List<Object> follows = getFollows();
        List<Object> follows2 = relatedContentPublisher.getFollows();
        if (follows != null ? !follows.equals(follows2) : follows2 != null) {
            return false;
        }
        List<Topic> topics = getTopics();
        List<Topic> topics2 = relatedContentPublisher.getTopics();
        return topics != null ? topics.equals(topics2) : topics2 == null;
    }

    public int hashCode() {
        List<Object> follows = getFollows();
        int iHashCode = follows == null ? 43 : follows.hashCode();
        List<Topic> topics = getTopics();
        return ((iHashCode + 59) * 59) + (topics != null ? topics.hashCode() : 43);
    }

    public String toString() {
        return "RelatedContentPublisher(follows=" + getFollows() + ", topics=" + getTopics() + ")";
    }

    public List<Object> getFollows() {
        return this.follows;
    }

    public List<Topic> getTopics() {
        return this.topics;
    }
}
