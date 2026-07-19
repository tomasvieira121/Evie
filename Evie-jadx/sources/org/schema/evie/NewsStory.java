package org.schema.evie;

import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes2.dex */
public class NewsStory extends NewsArticle {
    @Override // org.schema.NewsArticle, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "NewsStory(super=" + super.toString() + ")";
    }

    @Override // org.schema.NewsArticle, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof NewsStory;
    }

    @Override // org.schema.NewsArticle, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof NewsStory) && ((NewsStory) obj).canEqual(this) && super.equals(obj);
    }

    @Override // org.schema.NewsArticle, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return super.hashCode();
    }
}
