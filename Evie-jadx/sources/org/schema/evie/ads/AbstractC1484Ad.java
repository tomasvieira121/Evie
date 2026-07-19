package org.schema.evie.ads;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.Thing;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: renamed from: org.schema.evie.ads.Ad */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1484Ad extends Thing {

    @SerializedName("adType")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> adType = Collections.emptyList();

    @SerializedName("preferredProvider")
    private String preferredProvider = null;

    @SerializedName("layout")
    private String layout = null;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "Ad(super=" + super.toString() + ", adType=" + getAdType() + ", preferredProvider=" + getPreferredProvider() + ", layout=" + getLayout() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof AbstractC1484Ad;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC1484Ad)) {
            return false;
        }
        AbstractC1484Ad abstractC1484Ad = (AbstractC1484Ad) obj;
        if (!abstractC1484Ad.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String adType = getAdType();
        String adType2 = abstractC1484Ad.getAdType();
        if (adType != null ? !adType.equals(adType2) : adType2 != null) {
            return false;
        }
        String preferredProvider = getPreferredProvider();
        String preferredProvider2 = abstractC1484Ad.getPreferredProvider();
        if (preferredProvider != null ? !preferredProvider.equals(preferredProvider2) : preferredProvider2 != null) {
            return false;
        }
        String layout = getLayout();
        String layout2 = abstractC1484Ad.getLayout();
        return layout != null ? layout.equals(layout2) : layout2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String adType = getAdType();
        int iHashCode2 = (iHashCode * 59) + (adType == null ? 43 : adType.hashCode());
        String preferredProvider = getPreferredProvider();
        int iHashCode3 = (iHashCode2 * 59) + (preferredProvider == null ? 43 : preferredProvider.hashCode());
        String layout = getLayout();
        return (iHashCode3 * 59) + (layout != null ? layout.hashCode() : 43);
    }

    public String getPreferredProvider() {
        return this.preferredProvider;
    }

    public String getAdType() {
        if (this.adType.isEmpty()) {
            return null;
        }
        return this.adType.get(0);
    }

    public String getLayout() {
        return this.layout;
    }
}
