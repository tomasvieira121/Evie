package org.schema.evie.topics;

import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.ImageObject;
import org.schema.Thing;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class Topic extends Thing {
    private String description;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<ImageObject> images = Collections.emptyList();
    private String name;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "Topic(name=" + getName() + ", description=" + getDescription() + ", images=" + getImages() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof Topic;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Topic)) {
            return false;
        }
        Topic topic = (Topic) obj;
        if (!topic.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String name = getName();
        String name2 = topic.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = topic.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        List<ImageObject> images = getImages();
        List<ImageObject> images2 = topic.getImages();
        return images != null ? images.equals(images2) : images2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String name = getName();
        int iHashCode2 = (iHashCode * 59) + (name == null ? 43 : name.hashCode());
        String description = getDescription();
        int iHashCode3 = (iHashCode2 * 59) + (description == null ? 43 : description.hashCode());
        List<ImageObject> images = getImages();
        return (iHashCode3 * 59) + (images != null ? images.hashCode() : 43);
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public List<ImageObject> getImages() {
        return this.images;
    }
}
