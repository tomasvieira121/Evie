package com.evie.models.topics.data;

import com.google.gson.annotations.JsonAdapter;
import java.util.List;
import org.schema.evie.topics.Topic;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeSection {
    String label;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    List<Topic> topics;

    protected boolean canEqual(Object obj) {
        return obj instanceof PersonalizeSection;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersonalizeSection)) {
            return false;
        }
        PersonalizeSection personalizeSection = (PersonalizeSection) obj;
        if (!personalizeSection.canEqual(this)) {
            return false;
        }
        String label = getLabel();
        String label2 = personalizeSection.getLabel();
        if (label != null ? !label.equals(label2) : label2 != null) {
            return false;
        }
        List<Topic> topics = getTopics();
        List<Topic> topics2 = personalizeSection.getTopics();
        return topics != null ? topics.equals(topics2) : topics2 == null;
    }

    public int hashCode() {
        String label = getLabel();
        int iHashCode = label == null ? 43 : label.hashCode();
        List<Topic> topics = getTopics();
        return ((iHashCode + 59) * 59) + (topics != null ? topics.hashCode() : 43);
    }

    public String toString() {
        return "PersonalizeSection(label=" + getLabel() + ", topics=" + getTopics() + ")";
    }

    public String getLabel() {
        return this.label;
    }

    public List<Topic> getTopics() {
        return this.topics;
    }
}
