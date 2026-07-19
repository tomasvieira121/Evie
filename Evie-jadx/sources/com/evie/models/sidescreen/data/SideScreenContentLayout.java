package com.evie.models.sidescreen.data;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenContentLayout {
    public static final SideScreenContentLayout EMPTY = new SideScreenContentLayout();
    private List<SideScreenContentTile> tiles = Collections.emptyList();

    protected boolean canEqual(Object obj) {
        return obj instanceof SideScreenContentLayout;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SideScreenContentLayout)) {
            return false;
        }
        SideScreenContentLayout sideScreenContentLayout = (SideScreenContentLayout) obj;
        if (!sideScreenContentLayout.canEqual(this)) {
            return false;
        }
        List<SideScreenContentTile> tiles = getTiles();
        List<SideScreenContentTile> tiles2 = sideScreenContentLayout.getTiles();
        return tiles != null ? tiles.equals(tiles2) : tiles2 == null;
    }

    public int hashCode() {
        List<SideScreenContentTile> tiles = getTiles();
        return 59 + (tiles == null ? 43 : tiles.hashCode());
    }

    public String toString() {
        return "SideScreenContentLayout(tiles=" + getTiles() + ")";
    }

    public List<SideScreenContentTile> getTiles() {
        return this.tiles;
    }
}
