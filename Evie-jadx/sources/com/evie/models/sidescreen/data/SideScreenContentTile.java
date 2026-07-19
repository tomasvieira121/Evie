package com.evie.models.sidescreen.data;

import com.google.gson.annotations.SerializedName;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenContentTile {

    @SerializedName("fallbackId")
    private String fallbackId;

    /* JADX INFO: renamed from: id */
    private String f302id;
    private Map<String, Object> params;

    @SerializedName("positionY")
    private int positionY;
    private TileType type;

    protected boolean canEqual(Object obj) {
        return obj instanceof SideScreenContentTile;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SideScreenContentTile)) {
            return false;
        }
        SideScreenContentTile sideScreenContentTile = (SideScreenContentTile) obj;
        if (!sideScreenContentTile.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = sideScreenContentTile.getId();
        if (id != null ? !id.equals(id2) : id2 != null) {
            return false;
        }
        TileType type = getType();
        TileType type2 = sideScreenContentTile.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        Map<String, Object> params = getParams();
        Map<String, Object> params2 = sideScreenContentTile.getParams();
        if (params != null ? !params.equals(params2) : params2 != null) {
            return false;
        }
        String fallbackId = getFallbackId();
        String fallbackId2 = sideScreenContentTile.getFallbackId();
        if (fallbackId != null ? fallbackId.equals(fallbackId2) : fallbackId2 == null) {
            return getPositionY() == sideScreenContentTile.getPositionY();
        }
        return false;
    }

    public int hashCode() {
        String id = getId();
        int iHashCode = id == null ? 43 : id.hashCode();
        TileType type = getType();
        int iHashCode2 = ((iHashCode + 59) * 59) + (type == null ? 43 : type.hashCode());
        Map<String, Object> params = getParams();
        int iHashCode3 = (iHashCode2 * 59) + (params == null ? 43 : params.hashCode());
        String fallbackId = getFallbackId();
        return (((iHashCode3 * 59) + (fallbackId != null ? fallbackId.hashCode() : 43)) * 59) + getPositionY();
    }

    public void setPositionY(int i) {
        this.positionY = i;
    }

    public void setType(TileType tileType) {
        this.type = tileType;
    }

    public String toString() {
        return "SideScreenContentTile(id=" + getId() + ", type=" + getType() + ", params=" + getParams() + ", fallbackId=" + getFallbackId() + ", positionY=" + getPositionY() + ")";
    }

    public String getId() {
        return this.f302id;
    }

    public TileType getType() {
        return this.type;
    }

    public Map<String, Object> getParams() {
        return this.params;
    }

    public String getFallbackId() {
        return this.fallbackId;
    }

    public int getPositionY() {
        return this.positionY;
    }

    public SideScreenContentTile(String str, TileType tileType, int i) {
        this.positionY = -1;
        this.f302id = str;
        this.type = tileType;
        this.positionY = i;
    }
}
