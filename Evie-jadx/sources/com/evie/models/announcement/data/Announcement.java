package com.evie.models.announcement.data;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class Announcement {
    private String action;

    @SerializedName("action_text")
    private String actionText;
    private String description;

    @SerializedName("dismiss_text")
    private String dismissText;

    /* JADX INFO: renamed from: id */
    @SerializedName("@id")
    private String f300id;

    @SerializedName("image")
    private String imageURL;
    private String title;

    @SerializedName("@type")
    private String type;

    protected boolean canEqual(Object obj) {
        return obj instanceof Announcement;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Announcement)) {
            return false;
        }
        Announcement announcement = (Announcement) obj;
        if (!announcement.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = announcement.getId();
        if (id != null ? !id.equals(id2) : id2 != null) {
            return false;
        }
        String type = getType();
        String type2 = announcement.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        String dismissText = getDismissText();
        String dismissText2 = announcement.getDismissText();
        if (dismissText != null ? !dismissText.equals(dismissText2) : dismissText2 != null) {
            return false;
        }
        String action = getAction();
        String action2 = announcement.getAction();
        if (action != null ? !action.equals(action2) : action2 != null) {
            return false;
        }
        String actionText = getActionText();
        String actionText2 = announcement.getActionText();
        if (actionText != null ? !actionText.equals(actionText2) : actionText2 != null) {
            return false;
        }
        String title = getTitle();
        String title2 = announcement.getTitle();
        if (title != null ? !title.equals(title2) : title2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = announcement.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String imageURL = getImageURL();
        String imageURL2 = announcement.getImageURL();
        return imageURL != null ? imageURL.equals(imageURL2) : imageURL2 == null;
    }

    public int hashCode() {
        String id = getId();
        int iHashCode = id == null ? 43 : id.hashCode();
        String type = getType();
        int iHashCode2 = ((iHashCode + 59) * 59) + (type == null ? 43 : type.hashCode());
        String dismissText = getDismissText();
        int iHashCode3 = (iHashCode2 * 59) + (dismissText == null ? 43 : dismissText.hashCode());
        String action = getAction();
        int iHashCode4 = (iHashCode3 * 59) + (action == null ? 43 : action.hashCode());
        String actionText = getActionText();
        int iHashCode5 = (iHashCode4 * 59) + (actionText == null ? 43 : actionText.hashCode());
        String title = getTitle();
        int iHashCode6 = (iHashCode5 * 59) + (title == null ? 43 : title.hashCode());
        String description = getDescription();
        int iHashCode7 = (iHashCode6 * 59) + (description == null ? 43 : description.hashCode());
        String imageURL = getImageURL();
        return (iHashCode7 * 59) + (imageURL != null ? imageURL.hashCode() : 43);
    }

    public String toString() {
        return "Announcement(id=" + getId() + ", type=" + getType() + ", dismissText=" + getDismissText() + ", action=" + getAction() + ", actionText=" + getActionText() + ", title=" + getTitle() + ", description=" + getDescription() + ", imageURL=" + getImageURL() + ")";
    }

    public String getId() {
        return this.f300id;
    }

    public String getType() {
        return this.type;
    }

    public String getDismissText() {
        return this.dismissText;
    }

    public String getAction() {
        return this.action;
    }

    public String getActionText() {
        return this.actionText;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public String getImageURL() {
        return this.imageURL;
    }

    public boolean hasImage() {
        return !TextUtils.isEmpty(this.imageURL);
    }

    public boolean hasDismiss() {
        return !TextUtils.isEmpty(this.dismissText);
    }

    public boolean hasAction() {
        return !TextUtils.isEmpty(this.action);
    }
}
