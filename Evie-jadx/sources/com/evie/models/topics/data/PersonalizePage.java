package com.evie.models.topics.data;

import com.google.gson.annotations.JsonAdapter;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizePage {
    String label;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    List<PersonalizeSection> sections;

    protected boolean canEqual(Object obj) {
        return obj instanceof PersonalizePage;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersonalizePage)) {
            return false;
        }
        PersonalizePage personalizePage = (PersonalizePage) obj;
        if (!personalizePage.canEqual(this)) {
            return false;
        }
        String label = getLabel();
        String label2 = personalizePage.getLabel();
        if (label != null ? !label.equals(label2) : label2 != null) {
            return false;
        }
        List<PersonalizeSection> sections = getSections();
        List<PersonalizeSection> sections2 = personalizePage.getSections();
        return sections != null ? sections.equals(sections2) : sections2 == null;
    }

    public int hashCode() {
        String label = getLabel();
        int iHashCode = label == null ? 43 : label.hashCode();
        List<PersonalizeSection> sections = getSections();
        return ((iHashCode + 59) * 59) + (sections != null ? sections.hashCode() : 43);
    }

    public String toString() {
        return "PersonalizePage(label=" + getLabel() + ", sections=" + getSections() + ")";
    }

    public String getLabel() {
        return this.label;
    }

    public List<PersonalizeSection> getSections() {
        return this.sections;
    }
}
