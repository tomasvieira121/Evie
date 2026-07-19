package ch.hsr.geohash;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class WGS84Point implements Serializable {
    private static final long serialVersionUID = 7457963026513014856L;
    private final double latitude;
    private final double longitude;

    public WGS84Point(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
        if (Math.abs(d) > 90.0d || Math.abs(d2) > 180.0d) {
            throw new IllegalArgumentException("The supplied coordinates " + this + " are out of range.");
        }
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String toString() {
        return String.format("(" + this.latitude + "," + this.longitude + ")", new Object[0]);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WGS84Point)) {
            return false;
        }
        WGS84Point wGS84Point = (WGS84Point) obj;
        return this.latitude == wGS84Point.latitude && this.longitude == wGS84Point.longitude;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.latitude);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return ((1302 + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }
}
