package org.schema;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MediaObject extends Thing {

    @SerializedName("ev:externalUrl")
    private String externalUrl;

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> url = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Integer> width = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Integer> height = Collections.emptyList();

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "MediaObject(super=" + super.toString() + ", url=" + getUrl() + ", externalUrl=" + getExternalUrl() + ", width=" + getWidth() + ", height=" + getHeight() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof MediaObject;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaObject)) {
            return false;
        }
        MediaObject mediaObject = (MediaObject) obj;
        if (!mediaObject.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String url = getUrl();
        String url2 = mediaObject.getUrl();
        if (url != null ? !url.equals(url2) : url2 != null) {
            return false;
        }
        String externalUrl = getExternalUrl();
        String externalUrl2 = mediaObject.getExternalUrl();
        if (externalUrl != null ? !externalUrl.equals(externalUrl2) : externalUrl2 != null) {
            return false;
        }
        Integer width = getWidth();
        Integer width2 = mediaObject.getWidth();
        if (width != null ? !width.equals(width2) : width2 != null) {
            return false;
        }
        Integer height = getHeight();
        Integer height2 = mediaObject.getHeight();
        return height != null ? height.equals(height2) : height2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String url = getUrl();
        int iHashCode2 = (iHashCode * 59) + (url == null ? 43 : url.hashCode());
        String externalUrl = getExternalUrl();
        int iHashCode3 = (iHashCode2 * 59) + (externalUrl == null ? 43 : externalUrl.hashCode());
        Integer width = getWidth();
        int iHashCode4 = (iHashCode3 * 59) + (width == null ? 43 : width.hashCode());
        Integer height = getHeight();
        return (iHashCode4 * 59) + (height != null ? height.hashCode() : 43);
    }

    public String getExternalUrl() {
        return this.externalUrl;
    }

    public String getUrl() {
        if (this.url.isEmpty()) {
            return null;
        }
        return this.url.get(0);
    }

    public Integer getWidth() {
        if (this.width.isEmpty()) {
            return null;
        }
        return this.width.get(0);
    }

    public Integer getHeight() {
        if (this.height.isEmpty()) {
            return null;
        }
        return this.height.get(0);
    }
}
