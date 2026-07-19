package com.evie.models.wallpaper;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperData {
    private String hdpi;
    private String mdpi;
    private String xhdpi;
    private String xxhdpi;

    protected boolean canEqual(Object obj) {
        return obj instanceof WallpaperData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WallpaperData)) {
            return false;
        }
        WallpaperData wallpaperData = (WallpaperData) obj;
        if (!wallpaperData.canEqual(this)) {
            return false;
        }
        String hdpi = getHdpi();
        String hdpi2 = wallpaperData.getHdpi();
        if (hdpi != null ? !hdpi.equals(hdpi2) : hdpi2 != null) {
            return false;
        }
        String mdpi = getMdpi();
        String mdpi2 = wallpaperData.getMdpi();
        if (mdpi != null ? !mdpi.equals(mdpi2) : mdpi2 != null) {
            return false;
        }
        String xhdpi = getXhdpi();
        String xhdpi2 = wallpaperData.getXhdpi();
        if (xhdpi != null ? !xhdpi.equals(xhdpi2) : xhdpi2 != null) {
            return false;
        }
        String xxhdpi = getXxhdpi();
        String xxhdpi2 = wallpaperData.getXxhdpi();
        return xxhdpi != null ? xxhdpi.equals(xxhdpi2) : xxhdpi2 == null;
    }

    public int hashCode() {
        String hdpi = getHdpi();
        int iHashCode = hdpi == null ? 43 : hdpi.hashCode();
        String mdpi = getMdpi();
        int iHashCode2 = ((iHashCode + 59) * 59) + (mdpi == null ? 43 : mdpi.hashCode());
        String xhdpi = getXhdpi();
        int iHashCode3 = (iHashCode2 * 59) + (xhdpi == null ? 43 : xhdpi.hashCode());
        String xxhdpi = getXxhdpi();
        return (iHashCode3 * 59) + (xxhdpi != null ? xxhdpi.hashCode() : 43);
    }

    public String toString() {
        return "WallpaperData(hdpi=" + getHdpi() + ", mdpi=" + getMdpi() + ", xhdpi=" + getXhdpi() + ", xxhdpi=" + getXxhdpi() + ")";
    }

    public String getHdpi() {
        return this.hdpi;
    }

    public String getMdpi() {
        return this.mdpi;
    }

    public String getXhdpi() {
        return this.xhdpi;
    }

    public String getXxhdpi() {
        return this.xxhdpi;
    }
}
