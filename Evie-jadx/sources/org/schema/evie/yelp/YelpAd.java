package org.schema.evie.yelp;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.schema.Thing;

/* JADX INFO: loaded from: classes2.dex */
public class YelpAd extends Thing {

    @SerializedName("ev:action")
    private YelpAction action;

    @SerializedName("ev:androidPackageId")
    private String androidPackageId;

    @SerializedName("ev:appRequired")
    private boolean appRequired;

    @SerializedName("description")
    private String description;

    @SerializedName("headline")
    private String headline;

    @SerializedName("items")
    private List<LocalBusiness> items;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "YelpAd(super=" + super.toString() + ", headline=" + getHeadline() + ", description=" + getDescription() + ", items=" + getItems() + ", action=" + getAction() + ", androidPackageId=" + getAndroidPackageId() + ", appRequired=" + isAppRequired() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof YelpAd;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof YelpAd)) {
            return false;
        }
        YelpAd yelpAd = (YelpAd) obj;
        if (!yelpAd.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String headline = getHeadline();
        String headline2 = yelpAd.getHeadline();
        if (headline != null ? !headline.equals(headline2) : headline2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = yelpAd.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        List<LocalBusiness> items = getItems();
        List<LocalBusiness> items2 = yelpAd.getItems();
        if (items != null ? !items.equals(items2) : items2 != null) {
            return false;
        }
        YelpAction action = getAction();
        YelpAction action2 = yelpAd.getAction();
        if (action != null ? !action.equals(action2) : action2 != null) {
            return false;
        }
        String androidPackageId = getAndroidPackageId();
        String androidPackageId2 = yelpAd.getAndroidPackageId();
        if (androidPackageId != null ? androidPackageId.equals(androidPackageId2) : androidPackageId2 == null) {
            return isAppRequired() == yelpAd.isAppRequired();
        }
        return false;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String headline = getHeadline();
        int iHashCode2 = (iHashCode * 59) + (headline == null ? 43 : headline.hashCode());
        String description = getDescription();
        int iHashCode3 = (iHashCode2 * 59) + (description == null ? 43 : description.hashCode());
        List<LocalBusiness> items = getItems();
        int iHashCode4 = (iHashCode3 * 59) + (items == null ? 43 : items.hashCode());
        YelpAction action = getAction();
        int iHashCode5 = (iHashCode4 * 59) + (action == null ? 43 : action.hashCode());
        String androidPackageId = getAndroidPackageId();
        return (((iHashCode5 * 59) + (androidPackageId != null ? androidPackageId.hashCode() : 43)) * 59) + (isAppRequired() ? 79 : 97);
    }

    public String getHeadline() {
        return this.headline;
    }

    public String getDescription() {
        return this.description;
    }

    public List<LocalBusiness> getItems() {
        return this.items;
    }

    public YelpAction getAction() {
        return this.action;
    }

    public String getAndroidPackageId() {
        return this.androidPackageId;
    }

    public boolean isAppRequired() {
        return this.appRequired;
    }
}
