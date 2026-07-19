package com.evie.models.sidescreen.data;

import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.NewsArticle;
import org.schema.Thing;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenRelatedContent {

    @SerializedName("article_body")
    private String articleBody;
    private RelatedContentPublisher publisher;
    private NewsArticle seed;
    private List<Thing> objects = Collections.emptyList();
    private SideScreenContentLayout layout = SideScreenContentLayout.EMPTY;

    protected boolean canEqual(Object obj) {
        return obj instanceof SideScreenRelatedContent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SideScreenRelatedContent)) {
            return false;
        }
        SideScreenRelatedContent sideScreenRelatedContent = (SideScreenRelatedContent) obj;
        if (!sideScreenRelatedContent.canEqual(this)) {
            return false;
        }
        String articleBody = getArticleBody();
        String articleBody2 = sideScreenRelatedContent.getArticleBody();
        if (articleBody != null ? !articleBody.equals(articleBody2) : articleBody2 != null) {
            return false;
        }
        RelatedContentPublisher publisher = getPublisher();
        RelatedContentPublisher publisher2 = sideScreenRelatedContent.getPublisher();
        if (publisher != null ? !publisher.equals(publisher2) : publisher2 != null) {
            return false;
        }
        NewsArticle seed = getSeed();
        NewsArticle seed2 = sideScreenRelatedContent.getSeed();
        if (seed != null ? !seed.equals(seed2) : seed2 != null) {
            return false;
        }
        List<Thing> objects = getObjects();
        List<Thing> objects2 = sideScreenRelatedContent.getObjects();
        if (objects != null ? !objects.equals(objects2) : objects2 != null) {
            return false;
        }
        SideScreenContentLayout layout = getLayout();
        SideScreenContentLayout layout2 = sideScreenRelatedContent.getLayout();
        return layout != null ? layout.equals(layout2) : layout2 == null;
    }

    public int hashCode() {
        String articleBody = getArticleBody();
        int iHashCode = articleBody == null ? 43 : articleBody.hashCode();
        RelatedContentPublisher publisher = getPublisher();
        int iHashCode2 = ((iHashCode + 59) * 59) + (publisher == null ? 43 : publisher.hashCode());
        NewsArticle seed = getSeed();
        int iHashCode3 = (iHashCode2 * 59) + (seed == null ? 43 : seed.hashCode());
        List<Thing> objects = getObjects();
        int iHashCode4 = (iHashCode3 * 59) + (objects == null ? 43 : objects.hashCode());
        SideScreenContentLayout layout = getLayout();
        return (iHashCode4 * 59) + (layout != null ? layout.hashCode() : 43);
    }

    public String toString() {
        return "SideScreenRelatedContent(articleBody=" + getArticleBody() + ", publisher=" + getPublisher() + ", seed=" + getSeed() + ", objects=" + getObjects() + ", layout=" + getLayout() + ")";
    }

    public String getArticleBody() {
        return this.articleBody;
    }

    public RelatedContentPublisher getPublisher() {
        return this.publisher;
    }

    public NewsArticle getSeed() {
        return this.seed;
    }

    public List<Thing> getObjects() {
        return this.objects;
    }

    public SideScreenContentLayout getLayout() {
        return this.layout;
    }
}
