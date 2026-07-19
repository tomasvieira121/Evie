package com.evie.search.model;

import com.evie.search.remote.RemoteImage;
import com.google.gson.annotations.SerializedName;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RemoteSearchItem {

    @SerializedName("entity_id")
    private String entityId;

    @SerializedName("entity_type")
    private String entityType;
    private RemoteSearchExplanation explanation;

    @SerializedName("item_type")
    private String itemType;
    private String label;
    private List<String> links;

    @SerializedName("label_note")
    private String note;

    @SerializedName("package")
    private String packageName;
    private transient RemoteSearchItem parent;

    @SerializedName("rating_image")
    private String ratingImageUrl;

    @SerializedName("rating_text")
    private String ratingText;

    @SerializedName("items")
    private List<RemoteSearchItem> subitems = Collections.emptyList();
    private RemoteImage image = new RemoteImage();

    public void setParent(RemoteSearchItem remoteSearchItem) {
        this.parent = remoteSearchItem;
    }

    public List<RemoteSearchItem> getSubitems() {
        return this.subitems;
    }

    public String getLabel() {
        return this.label;
    }

    public String getNote() {
        return this.note;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public List<String> getLinks() {
        return this.links;
    }

    public RemoteSearchExplanation getExplanation() {
        return this.explanation;
    }

    public String getItemType() {
        return this.itemType;
    }

    public String getEntityType() {
        return this.entityType;
    }

    public String getEntityId() {
        return this.entityId;
    }

    public String getRatingImageUrl() {
        return this.ratingImageUrl;
    }

    public String getRatingText() {
        return this.ratingText;
    }

    public RemoteSearchItem getParent() {
        return this.parent;
    }

    public RemoteSearchItem(RecentItem recentItem) {
        this.links = Collections.emptyList();
        this.image.setBaseUrl(recentItem.getImageUrl());
        this.label = recentItem.getLabel();
        this.links = Arrays.asList(recentItem.getLink().split("\\|\\|"));
    }

    public String getImageUrl(int i) {
        return this.image.getImageUrl(i);
    }
}
