package org.schema;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class NewsArticle extends Thing {

    @SerializedName("ev:show_intermediate")
    private boolean showIntermediate;

    @SerializedName("views")
    private int views;

    @SerializedName("contentType")
    private String contentType = null;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> url = Collections.emptyList();

    @SerializedName("ev:ampUrl")
    private String ampUrl = null;

    @SerializedName("ev:androidUrl")
    private String androidUrl = null;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> body = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> headline = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> description = Collections.emptyList();

    @SerializedName("datePublished")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> datePublished = Collections.emptyList();

    @SerializedName("ev:displayAge")
    private Boolean displayAge = true;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<ImageObject> image = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> publisher = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<VideoObject> video = Collections.emptyList();

    @SerializedName("ev:aggregator")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> aggregator = Collections.emptyList();

    @SerializedName("ev:action")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> action = Collections.emptyList();

    @SerializedName("ev:topic")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> topics = Collections.emptyList();

    @SerializedName("displayTags")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Tag> tags = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> displayTopicDescription = Collections.emptyList();

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "NewsArticle(super=" + super.toString() + ", contentType=" + getContentType() + ", url=" + getUrl() + ", ampUrl=" + getAmpUrl() + ", androidUrl=" + getAndroidUrl() + ", body=" + getBody() + ", headline=" + getHeadline() + ", description=" + getDescription() + ", datePublished=" + getDatePublished() + ", displayAge=" + getDisplayAge() + ", image=" + getImage() + ", publisher=" + getPublisher() + ", video=" + getVideo() + ", aggregator=" + getAggregator() + ", action=" + getAction() + ", topics=" + getTopics() + ", tags=" + getTags() + ", views=" + getViews() + ", showIntermediate=" + isShowIntermediate() + ", displayTopicDescription=" + getDisplayTopicDescription() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof NewsArticle;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NewsArticle)) {
            return false;
        }
        NewsArticle newsArticle = (NewsArticle) obj;
        if (!newsArticle.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String contentType = getContentType();
        String contentType2 = newsArticle.getContentType();
        if (contentType != null ? !contentType.equals(contentType2) : contentType2 != null) {
            return false;
        }
        String url = getUrl();
        String url2 = newsArticle.getUrl();
        if (url != null ? !url.equals(url2) : url2 != null) {
            return false;
        }
        String ampUrl = getAmpUrl();
        String ampUrl2 = newsArticle.getAmpUrl();
        if (ampUrl != null ? !ampUrl.equals(ampUrl2) : ampUrl2 != null) {
            return false;
        }
        String androidUrl = getAndroidUrl();
        String androidUrl2 = newsArticle.getAndroidUrl();
        if (androidUrl != null ? !androidUrl.equals(androidUrl2) : androidUrl2 != null) {
            return false;
        }
        List<String> body = getBody();
        List<String> body2 = newsArticle.getBody();
        if (body != null ? !body.equals(body2) : body2 != null) {
            return false;
        }
        String headline = getHeadline();
        String headline2 = newsArticle.getHeadline();
        if (headline != null ? !headline.equals(headline2) : headline2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = newsArticle.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String datePublished = getDatePublished();
        String datePublished2 = newsArticle.getDatePublished();
        if (datePublished != null ? !datePublished.equals(datePublished2) : datePublished2 != null) {
            return false;
        }
        Boolean displayAge = getDisplayAge();
        Boolean displayAge2 = newsArticle.getDisplayAge();
        if (displayAge != null ? !displayAge.equals(displayAge2) : displayAge2 != null) {
            return false;
        }
        List<ImageObject> image = getImage();
        List<ImageObject> image2 = newsArticle.getImage();
        if (image != null ? !image.equals(image2) : image2 != null) {
            return false;
        }
        Thing publisher = getPublisher();
        Thing publisher2 = newsArticle.getPublisher();
        if (publisher != null ? !publisher.equals(publisher2) : publisher2 != null) {
            return false;
        }
        List<VideoObject> video = getVideo();
        List<VideoObject> video2 = newsArticle.getVideo();
        if (video != null ? !video.equals(video2) : video2 != null) {
            return false;
        }
        String aggregator = getAggregator();
        String aggregator2 = newsArticle.getAggregator();
        if (aggregator != null ? !aggregator.equals(aggregator2) : aggregator2 != null) {
            return false;
        }
        Thing action = getAction();
        Thing action2 = newsArticle.getAction();
        if (action != null ? !action.equals(action2) : action2 != null) {
            return false;
        }
        List<Thing> topics = getTopics();
        List<Thing> topics2 = newsArticle.getTopics();
        if (topics != null ? !topics.equals(topics2) : topics2 != null) {
            return false;
        }
        List<Tag> tags = getTags();
        List<Tag> tags2 = newsArticle.getTags();
        if (tags != null ? !tags.equals(tags2) : tags2 != null) {
            return false;
        }
        if (getViews() != newsArticle.getViews() || isShowIntermediate() != newsArticle.isShowIntermediate()) {
            return false;
        }
        String displayTopicDescription = getDisplayTopicDescription();
        String displayTopicDescription2 = newsArticle.getDisplayTopicDescription();
        return displayTopicDescription != null ? displayTopicDescription.equals(displayTopicDescription2) : displayTopicDescription2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String contentType = getContentType();
        int iHashCode2 = (iHashCode * 59) + (contentType == null ? 43 : contentType.hashCode());
        String url = getUrl();
        int iHashCode3 = (iHashCode2 * 59) + (url == null ? 43 : url.hashCode());
        String ampUrl = getAmpUrl();
        int iHashCode4 = (iHashCode3 * 59) + (ampUrl == null ? 43 : ampUrl.hashCode());
        String androidUrl = getAndroidUrl();
        int iHashCode5 = (iHashCode4 * 59) + (androidUrl == null ? 43 : androidUrl.hashCode());
        List<String> body = getBody();
        int iHashCode6 = (iHashCode5 * 59) + (body == null ? 43 : body.hashCode());
        String headline = getHeadline();
        int iHashCode7 = (iHashCode6 * 59) + (headline == null ? 43 : headline.hashCode());
        String description = getDescription();
        int iHashCode8 = (iHashCode7 * 59) + (description == null ? 43 : description.hashCode());
        String datePublished = getDatePublished();
        int iHashCode9 = (iHashCode8 * 59) + (datePublished == null ? 43 : datePublished.hashCode());
        Boolean displayAge = getDisplayAge();
        int iHashCode10 = (iHashCode9 * 59) + (displayAge == null ? 43 : displayAge.hashCode());
        List<ImageObject> image = getImage();
        int iHashCode11 = (iHashCode10 * 59) + (image == null ? 43 : image.hashCode());
        Thing publisher = getPublisher();
        int iHashCode12 = (iHashCode11 * 59) + (publisher == null ? 43 : publisher.hashCode());
        List<VideoObject> video = getVideo();
        int iHashCode13 = (iHashCode12 * 59) + (video == null ? 43 : video.hashCode());
        String aggregator = getAggregator();
        int iHashCode14 = (iHashCode13 * 59) + (aggregator == null ? 43 : aggregator.hashCode());
        Thing action = getAction();
        int iHashCode15 = (iHashCode14 * 59) + (action == null ? 43 : action.hashCode());
        List<Thing> topics = getTopics();
        int iHashCode16 = (iHashCode15 * 59) + (topics == null ? 43 : topics.hashCode());
        List<Tag> tags = getTags();
        int iHashCode17 = (((((iHashCode16 * 59) + (tags == null ? 43 : tags.hashCode())) * 59) + getViews()) * 59) + (isShowIntermediate() ? 79 : 97);
        String displayTopicDescription = getDisplayTopicDescription();
        return (iHashCode17 * 59) + (displayTopicDescription != null ? displayTopicDescription.hashCode() : 43);
    }

    public String getAmpUrl() {
        return this.ampUrl;
    }

    public String getAndroidUrl() {
        return this.androidUrl;
    }

    public List<String> getBody() {
        return this.body;
    }

    public Boolean getDisplayAge() {
        return this.displayAge;
    }

    public List<ImageObject> getImage() {
        return this.image;
    }

    public List<VideoObject> getVideo() {
        return this.video;
    }

    public List<Thing> getTopics() {
        return this.topics;
    }

    public int getViews() {
        return this.views;
    }

    public boolean isShowIntermediate() {
        return this.showIntermediate;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getUrl() {
        if (this.url.isEmpty()) {
            return null;
        }
        return this.url.get(0);
    }

    public String getHeadline() {
        if (this.headline.isEmpty()) {
            return null;
        }
        return this.headline.get(0);
    }

    public String getDescription() {
        if (this.description.isEmpty()) {
            return null;
        }
        return this.description.get(0);
    }

    public String getDatePublished() {
        if (this.datePublished.isEmpty()) {
            return null;
        }
        return this.datePublished.get(0);
    }

    public boolean shouldDisplayAge() {
        Boolean bool = this.displayAge;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public Thing getPublisher() {
        if (this.publisher.isEmpty()) {
            return null;
        }
        return this.publisher.get(0);
    }

    public String getAggregator() {
        if (this.aggregator.isEmpty()) {
            return null;
        }
        return this.aggregator.get(0);
    }

    public List<Tag> getTags() {
        if (this.tags.isEmpty()) {
            return null;
        }
        return this.tags;
    }

    public Thing getAction() {
        if (this.action.isEmpty()) {
            return null;
        }
        return this.action.get(0);
    }

    public String getDisplayTopicDescription() {
        if (this.displayTopicDescription.isEmpty()) {
            return null;
        }
        return this.displayTopicDescription.get(0);
    }

    public Organization getPublisherOrganization() {
        Thing publisher = getPublisher();
        if (publisher instanceof Organization) {
            return (Organization) publisher;
        }
        if (publisher instanceof Person) {
            return ((Person) publisher).getAffiliation();
        }
        return null;
    }
}
