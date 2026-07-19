package org.schema.evie.yelp;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class YelpAction {

    @SerializedName("ev:androidUrl")
    private String androidUrl;

    @SerializedName("description")
    private String description;

    @SerializedName("label")
    private String label;

    @SerializedName("ev:style")
    private String style;

    @SerializedName("url")
    private String url;

    public String toString() {
        return "YelpAction(label=" + getLabel() + ", description=" + getDescription() + ", style=" + getStyle() + ", androidUrl=" + getAndroidUrl() + ", url=" + getUrl() + ")";
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof YelpAction;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof YelpAction)) {
            return false;
        }
        YelpAction yelpAction = (YelpAction) obj;
        if (!yelpAction.canEqual(this)) {
            return false;
        }
        String label = getLabel();
        String label2 = yelpAction.getLabel();
        if (label != null ? !label.equals(label2) : label2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = yelpAction.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String style = getStyle();
        String style2 = yelpAction.getStyle();
        if (style != null ? !style.equals(style2) : style2 != null) {
            return false;
        }
        String androidUrl = getAndroidUrl();
        String androidUrl2 = yelpAction.getAndroidUrl();
        if (androidUrl != null ? !androidUrl.equals(androidUrl2) : androidUrl2 != null) {
            return false;
        }
        String url = getUrl();
        String url2 = yelpAction.getUrl();
        return url != null ? url.equals(url2) : url2 == null;
    }

    public int hashCode() {
        String label = getLabel();
        int iHashCode = label == null ? 43 : label.hashCode();
        String description = getDescription();
        int iHashCode2 = ((iHashCode + 59) * 59) + (description == null ? 43 : description.hashCode());
        String style = getStyle();
        int iHashCode3 = (iHashCode2 * 59) + (style == null ? 43 : style.hashCode());
        String androidUrl = getAndroidUrl();
        int iHashCode4 = (iHashCode3 * 59) + (androidUrl == null ? 43 : androidUrl.hashCode());
        String url = getUrl();
        return (iHashCode4 * 59) + (url != null ? url.hashCode() : 43);
    }

    public String getLabel() {
        return this.label;
    }

    public String getDescription() {
        return this.description;
    }

    public String getStyle() {
        return this.style;
    }

    public String getAndroidUrl() {
        return this.androidUrl;
    }

    public String getUrl() {
        return this.url;
    }
}
