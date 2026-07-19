package org.schema;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class Organization extends Thing {

    @SerializedName("ev:topicId")
    private String topicId;

    @SerializedName("ev:topicId2")
    private String topicId2;

    @SerializedName("ev:topicId3")
    private String topicId3;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> name = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> favicon = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<ImageObject> logo = Collections.emptyList();

    @SerializedName("ev:androidPackageId")
    private String androidPackageId = null;

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "Organization(name=" + getName() + ", favicon=" + getFavicon() + ", logo=" + getLogo() + ", androidPackageId=" + getAndroidPackageId() + ", topicId=" + getTopicId() + ", topicId2=" + getTopicId2() + ", topicId3=" + getTopicId3() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof Organization;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Organization)) {
            return false;
        }
        Organization organization = (Organization) obj;
        if (!organization.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String name = getName();
        String name2 = organization.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        List<String> favicon = getFavicon();
        List<String> favicon2 = organization.getFavicon();
        if (favicon != null ? !favicon.equals(favicon2) : favicon2 != null) {
            return false;
        }
        List<ImageObject> logo = getLogo();
        List<ImageObject> logo2 = organization.getLogo();
        if (logo != null ? !logo.equals(logo2) : logo2 != null) {
            return false;
        }
        String androidPackageId = getAndroidPackageId();
        String androidPackageId2 = organization.getAndroidPackageId();
        if (androidPackageId != null ? !androidPackageId.equals(androidPackageId2) : androidPackageId2 != null) {
            return false;
        }
        String topicId = getTopicId();
        String topicId2 = organization.getTopicId();
        if (topicId != null ? !topicId.equals(topicId2) : topicId2 != null) {
            return false;
        }
        String topicId3 = getTopicId2();
        String topicId4 = organization.getTopicId2();
        if (topicId3 != null ? !topicId3.equals(topicId4) : topicId4 != null) {
            return false;
        }
        String topicId5 = getTopicId3();
        String topicId6 = organization.getTopicId3();
        return topicId5 != null ? topicId5.equals(topicId6) : topicId6 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String name = getName();
        int iHashCode2 = (iHashCode * 59) + (name == null ? 43 : name.hashCode());
        List<String> favicon = getFavicon();
        int iHashCode3 = (iHashCode2 * 59) + (favicon == null ? 43 : favicon.hashCode());
        List<ImageObject> logo = getLogo();
        int iHashCode4 = (iHashCode3 * 59) + (logo == null ? 43 : logo.hashCode());
        String androidPackageId = getAndroidPackageId();
        int iHashCode5 = (iHashCode4 * 59) + (androidPackageId == null ? 43 : androidPackageId.hashCode());
        String topicId = getTopicId();
        int iHashCode6 = (iHashCode5 * 59) + (topicId == null ? 43 : topicId.hashCode());
        String topicId2 = getTopicId2();
        int iHashCode7 = (iHashCode6 * 59) + (topicId2 == null ? 43 : topicId2.hashCode());
        String topicId3 = getTopicId3();
        return (iHashCode7 * 59) + (topicId3 != null ? topicId3.hashCode() : 43);
    }

    public List<String> getFavicon() {
        return this.favicon;
    }

    public List<ImageObject> getLogo() {
        return this.logo;
    }

    public String getAndroidPackageId() {
        return this.androidPackageId;
    }

    public String getTopicId() {
        return this.topicId;
    }

    public String getTopicId2() {
        return this.topicId2;
    }

    public String getTopicId3() {
        return this.topicId3;
    }

    public String getName() {
        if (this.name.isEmpty()) {
            return null;
        }
        return this.name.get(0);
    }

    public String getFaviconUrl() {
        if (this.favicon.isEmpty()) {
            return null;
        }
        return this.favicon.get(0);
    }
}
