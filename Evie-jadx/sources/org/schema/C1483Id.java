package org.schema;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: renamed from: org.schema.Id */
/* JADX INFO: loaded from: classes2.dex */
public class C1483Id implements Serializable {

    /* JADX INFO: renamed from: id */
    @SerializedName("@id")
    private String f609id;

    protected boolean canEqual(Object obj) {
        return obj instanceof C1483Id;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1483Id)) {
            return false;
        }
        C1483Id c1483Id = (C1483Id) obj;
        if (!c1483Id.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = c1483Id.getId();
        return id != null ? id.equals(id2) : id2 == null;
    }

    public int hashCode() {
        String id = getId();
        return 59 + (id == null ? 43 : id.hashCode());
    }

    public String toString() {
        return "Id(id=" + getId() + ")";
    }

    public String getId() {
        if (TextUtils.isEmpty(this.f609id)) {
            return null;
        }
        return this.f609id;
    }
}
