package org.schema.evie.yelp;

import com.google.gson.annotations.SerializedName;
import org.schema.Thing;

/* JADX INFO: loaded from: classes2.dex */
public class LocalBusiness extends Thing {

    @SerializedName("ev:androidUrl")
    private String androidUrl;

    @SerializedName("description")
    private String description;

    @SerializedName("geo")
    private Geo geo;

    @SerializedName("image")
    private String image;

    @SerializedName("name")
    private String name;

    @SerializedName("priceRange")
    private int priceRange;

    @SerializedName("aggregateRating")
    private Rating rating;

    @SerializedName("url")
    private String url;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "LocalBusiness(name=" + getName() + ", description=" + getDescription() + ", image=" + getImage() + ", geo=" + getGeo() + ", rating=" + getRating() + ", priceRange=" + getPriceRange() + ", url=" + getUrl() + ", androidUrl=" + getAndroidUrl() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof LocalBusiness;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalBusiness)) {
            return false;
        }
        LocalBusiness localBusiness = (LocalBusiness) obj;
        if (!localBusiness.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String name = getName();
        String name2 = localBusiness.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = localBusiness.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String image = getImage();
        String image2 = localBusiness.getImage();
        if (image != null ? !image.equals(image2) : image2 != null) {
            return false;
        }
        Geo geo = getGeo();
        Geo geo2 = localBusiness.getGeo();
        if (geo != null ? !geo.equals(geo2) : geo2 != null) {
            return false;
        }
        Rating rating = getRating();
        Rating rating2 = localBusiness.getRating();
        if (rating != null ? !rating.equals(rating2) : rating2 != null) {
            return false;
        }
        if (getPriceRange() != localBusiness.getPriceRange()) {
            return false;
        }
        String url = getUrl();
        String url2 = localBusiness.getUrl();
        if (url != null ? !url.equals(url2) : url2 != null) {
            return false;
        }
        String androidUrl = getAndroidUrl();
        String androidUrl2 = localBusiness.getAndroidUrl();
        return androidUrl != null ? androidUrl.equals(androidUrl2) : androidUrl2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String name = getName();
        int iHashCode2 = (iHashCode * 59) + (name == null ? 43 : name.hashCode());
        String description = getDescription();
        int iHashCode3 = (iHashCode2 * 59) + (description == null ? 43 : description.hashCode());
        String image = getImage();
        int iHashCode4 = (iHashCode3 * 59) + (image == null ? 43 : image.hashCode());
        Geo geo = getGeo();
        int iHashCode5 = (iHashCode4 * 59) + (geo == null ? 43 : geo.hashCode());
        Rating rating = getRating();
        int iHashCode6 = (((iHashCode5 * 59) + (rating == null ? 43 : rating.hashCode())) * 59) + getPriceRange();
        String url = getUrl();
        int iHashCode7 = (iHashCode6 * 59) + (url == null ? 43 : url.hashCode());
        String androidUrl = getAndroidUrl();
        return (iHashCode7 * 59) + (androidUrl != null ? androidUrl.hashCode() : 43);
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public String getImage() {
        return this.image;
    }

    public Geo getGeo() {
        return this.geo;
    }

    public Rating getRating() {
        return this.rating;
    }

    public int getPriceRange() {
        return this.priceRange;
    }

    public String getUrl() {
        return this.url;
    }

    public String getAndroidUrl() {
        return this.androidUrl;
    }

    public static class Rating {

        @SerializedName("ratingValue")
        private float ratingValue;

        @SerializedName("reviewCount")
        private int reviewCount;

        protected boolean canEqual(Object obj) {
            return obj instanceof Rating;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Rating)) {
                return false;
            }
            Rating rating = (Rating) obj;
            return rating.canEqual(this) && Float.compare(getRatingValue(), rating.getRatingValue()) == 0 && getReviewCount() == rating.getReviewCount();
        }

        public int hashCode() {
            return ((Float.floatToIntBits(getRatingValue()) + 59) * 59) + getReviewCount();
        }

        public String toString() {
            return "LocalBusiness.Rating(ratingValue=" + getRatingValue() + ", reviewCount=" + getReviewCount() + ")";
        }

        public float getRatingValue() {
            return this.ratingValue;
        }

        public int getReviewCount() {
            return this.reviewCount;
        }
    }

    public static class Geo {

        @SerializedName("latitude")
        private float latitude;

        @SerializedName("longitude")
        private float longitude;

        protected boolean canEqual(Object obj) {
            return obj instanceof Geo;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Geo)) {
                return false;
            }
            Geo geo = (Geo) obj;
            return geo.canEqual(this) && Float.compare(getLatitude(), geo.getLatitude()) == 0 && Float.compare(getLongitude(), geo.getLongitude()) == 0;
        }

        public int hashCode() {
            return ((Float.floatToIntBits(getLatitude()) + 59) * 59) + Float.floatToIntBits(getLongitude());
        }

        public String toString() {
            return "LocalBusiness.Geo(latitude=" + getLatitude() + ", longitude=" + getLongitude() + ")";
        }

        public float getLatitude() {
            return this.latitude;
        }

        public float getLongitude() {
            return this.longitude;
        }
    }
}
