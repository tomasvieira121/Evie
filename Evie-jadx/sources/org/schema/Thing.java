package org.schema;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class Thing extends C1483Id {

    @SerializedName("@type")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> type = Collections.emptyList();
    private Map<String, Object> analytics = Collections.emptyMap();

    @Override // org.schema.C1483Id
    public String toString() {
        return "Thing(type=" + getType() + ", analytics=" + getAnalytics() + ")";
    }

    @Override // org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof Thing;
    }

    @Override // org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Thing)) {
            return false;
        }
        Thing thing = (Thing) obj;
        if (!thing.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String type = getType();
        String type2 = thing.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        Map<String, Object> analytics = getAnalytics();
        Map<String, Object> analytics2 = thing.getAnalytics();
        return analytics != null ? analytics.equals(analytics2) : analytics2 == null;
    }

    @Override // org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String type = getType();
        int iHashCode2 = (iHashCode * 59) + (type == null ? 43 : type.hashCode());
        Map<String, Object> analytics = getAnalytics();
        return (iHashCode2 * 59) + (analytics != null ? analytics.hashCode() : 43);
    }

    public Map<String, Object> getAnalytics() {
        return this.analytics;
    }

    public String getType() {
        if (this.type.isEmpty()) {
            return null;
        }
        return this.type.get(0);
    }
}
