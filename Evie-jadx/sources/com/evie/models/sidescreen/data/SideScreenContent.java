package com.evie.models.sidescreen.data;

import java.util.Collections;
import java.util.List;
import org.schema.Thing;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenContent {
    private List<Thing> objects = Collections.emptyList();
    private SideScreenContentLayout layout = SideScreenContentLayout.EMPTY;

    protected boolean canEqual(Object obj) {
        return obj instanceof SideScreenContent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SideScreenContent)) {
            return false;
        }
        SideScreenContent sideScreenContent = (SideScreenContent) obj;
        if (!sideScreenContent.canEqual(this)) {
            return false;
        }
        List<Thing> objects = getObjects();
        List<Thing> objects2 = sideScreenContent.getObjects();
        if (objects != null ? !objects.equals(objects2) : objects2 != null) {
            return false;
        }
        SideScreenContentLayout layout = getLayout();
        SideScreenContentLayout layout2 = sideScreenContent.getLayout();
        return layout != null ? layout.equals(layout2) : layout2 == null;
    }

    public int hashCode() {
        List<Thing> objects = getObjects();
        int iHashCode = objects == null ? 43 : objects.hashCode();
        SideScreenContentLayout layout = getLayout();
        return ((iHashCode + 59) * 59) + (layout != null ? layout.hashCode() : 43);
    }

    public String toString() {
        return "SideScreenContent(objects=" + getObjects() + ", layout=" + getLayout() + ")";
    }

    public List<Thing> getObjects() {
        return this.objects;
    }

    public SideScreenContentLayout getLayout() {
        return this.layout;
    }
}
