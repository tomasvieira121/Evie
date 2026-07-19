package com.evie.models.topics.data;

import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.C1483Id;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeResult {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<C1483Id> following = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<C1483Id> blocked = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<PersonalizePage> pages = Collections.emptyList();

    protected boolean canEqual(Object obj) {
        return obj instanceof PersonalizeResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersonalizeResult)) {
            return false;
        }
        PersonalizeResult personalizeResult = (PersonalizeResult) obj;
        if (!personalizeResult.canEqual(this)) {
            return false;
        }
        List<C1483Id> following = getFollowing();
        List<C1483Id> following2 = personalizeResult.getFollowing();
        if (following != null ? !following.equals(following2) : following2 != null) {
            return false;
        }
        List<C1483Id> blocked = getBlocked();
        List<C1483Id> blocked2 = personalizeResult.getBlocked();
        if (blocked != null ? !blocked.equals(blocked2) : blocked2 != null) {
            return false;
        }
        List<PersonalizePage> pages = getPages();
        List<PersonalizePage> pages2 = personalizeResult.getPages();
        return pages != null ? pages.equals(pages2) : pages2 == null;
    }

    public int hashCode() {
        List<C1483Id> following = getFollowing();
        int iHashCode = following == null ? 43 : following.hashCode();
        List<C1483Id> blocked = getBlocked();
        int iHashCode2 = ((iHashCode + 59) * 59) + (blocked == null ? 43 : blocked.hashCode());
        List<PersonalizePage> pages = getPages();
        return (iHashCode2 * 59) + (pages != null ? pages.hashCode() : 43);
    }

    public String toString() {
        return "PersonalizeResult(following=" + getFollowing() + ", blocked=" + getBlocked() + ", pages=" + getPages() + ")";
    }

    public List<C1483Id> getFollowing() {
        return this.following;
    }

    public List<C1483Id> getBlocked() {
        return this.blocked;
    }

    public List<PersonalizePage> getPages() {
        return this.pages;
    }
}
