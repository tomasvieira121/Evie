package com.evie.models.topics.data;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class TopicId {

    /* JADX INFO: renamed from: id */
    @SerializedName("topic_id")
    String f303id;

    public TopicId() {
    }

    public TopicId(String str) {
        this.f303id = str;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof TopicId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TopicId)) {
            return false;
        }
        TopicId topicId = (TopicId) obj;
        if (!topicId.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = topicId.getId();
        return id != null ? id.equals(id2) : id2 == null;
    }

    public int hashCode() {
        String id = getId();
        return 59 + (id == null ? 43 : id.hashCode());
    }

    public String toString() {
        return "TopicId(id=" + getId() + ")";
    }

    public String getId() {
        return this.f303id;
    }
}
