package org.schema.evie;

import com.google.gson.annotations.JsonAdapter;
import java.util.List;
import org.schema.Thing;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class NewsChannel extends Thing {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> publisher;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<NewsStory> stories;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "NewsChannel(super=" + super.toString() + ", publisher=" + getPublisher() + ", stories=" + getStories() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof NewsChannel;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NewsChannel)) {
            return false;
        }
        NewsChannel newsChannel = (NewsChannel) obj;
        if (!newsChannel.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        Thing publisher = getPublisher();
        Thing publisher2 = newsChannel.getPublisher();
        if (publisher != null ? !publisher.equals(publisher2) : publisher2 != null) {
            return false;
        }
        List<NewsStory> stories = getStories();
        List<NewsStory> stories2 = newsChannel.getStories();
        return stories != null ? stories.equals(stories2) : stories2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        Thing publisher = getPublisher();
        int iHashCode2 = (iHashCode * 59) + (publisher == null ? 43 : publisher.hashCode());
        List<NewsStory> stories = getStories();
        return (iHashCode2 * 59) + (stories != null ? stories.hashCode() : 43);
    }

    public List<NewsStory> getStories() {
        return this.stories;
    }

    public Thing getPublisher() {
        if (this.publisher.isEmpty()) {
            return null;
        }
        return this.publisher.get(0);
    }
}
