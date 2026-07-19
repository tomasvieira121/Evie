package org.schema.evie.topics;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class TopicPublisher extends Topic {

    @SerializedName("is_article_publisher")
    boolean isArticlePublisher = false;

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "TopicPublisher(isArticlePublisher=" + isArticlePublisher() + ")";
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof TopicPublisher;
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TopicPublisher)) {
            return false;
        }
        TopicPublisher topicPublisher = (TopicPublisher) obj;
        return topicPublisher.canEqual(this) && super.equals(obj) && isArticlePublisher() == topicPublisher.isArticlePublisher();
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return (super.hashCode() * 59) + (isArticlePublisher() ? 79 : 97);
    }

    public boolean isArticlePublisher() {
        return this.isArticlePublisher;
    }
}
