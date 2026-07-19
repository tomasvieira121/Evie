package org.schema.evie.topics;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class TopicEntity extends Topic {

    @SerializedName("salience")
    private final float salience = 0.0f;

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "TopicEntity(salience=" + getSalience() + ")";
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof TopicEntity;
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TopicEntity)) {
            return false;
        }
        TopicEntity topicEntity = (TopicEntity) obj;
        return topicEntity.canEqual(this) && super.equals(obj) && Float.compare(getSalience(), topicEntity.getSalience()) == 0;
    }

    @Override // org.schema.evie.topics.Topic, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return (super.hashCode() * 59) + Float.floatToIntBits(getSalience());
    }

    public float getSalience() {
        getClass();
        return 0.0f;
    }
}
