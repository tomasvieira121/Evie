package org.schema;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class Tag {

    @SerializedName("favicon")
    public String imgUrl;

    @SerializedName("text")
    public String text;

    @SerializedName("tint")
    public String tint;

    protected boolean canEqual(Object obj) {
        return obj instanceof Tag;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        if (!tag.canEqual(this)) {
            return false;
        }
        String text = getText();
        String text2 = tag.getText();
        if (text != null ? !text.equals(text2) : text2 != null) {
            return false;
        }
        String imgUrl = getImgUrl();
        String imgUrl2 = tag.getImgUrl();
        if (imgUrl != null ? !imgUrl.equals(imgUrl2) : imgUrl2 != null) {
            return false;
        }
        String tint = getTint();
        String tint2 = tag.getTint();
        return tint != null ? tint.equals(tint2) : tint2 == null;
    }

    public int hashCode() {
        String text = getText();
        int iHashCode = text == null ? 43 : text.hashCode();
        String imgUrl = getImgUrl();
        int iHashCode2 = ((iHashCode + 59) * 59) + (imgUrl == null ? 43 : imgUrl.hashCode());
        String tint = getTint();
        return (iHashCode2 * 59) + (tint != null ? tint.hashCode() : 43);
    }

    public String toString() {
        return "Tag(text=" + getText() + ", imgUrl=" + getImgUrl() + ", tint=" + getTint() + ")";
    }

    public String getText() {
        return this.text;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public String getTint() {
        return this.tint;
    }
}
