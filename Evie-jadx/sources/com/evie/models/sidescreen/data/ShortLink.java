package com.evie.models.sidescreen.data;

/* JADX INFO: loaded from: classes.dex */
public class ShortLink {
    private String link;

    protected boolean canEqual(Object obj) {
        return obj instanceof ShortLink;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ShortLink)) {
            return false;
        }
        ShortLink shortLink = (ShortLink) obj;
        if (!shortLink.canEqual(this)) {
            return false;
        }
        String link = getLink();
        String link2 = shortLink.getLink();
        return link != null ? link.equals(link2) : link2 == null;
    }

    public int hashCode() {
        String link = getLink();
        return 59 + (link == null ? 43 : link.hashCode());
    }

    public String toString() {
        return "ShortLink(link=" + getLink() + ")";
    }

    public String getLink() {
        return this.link;
    }
}
