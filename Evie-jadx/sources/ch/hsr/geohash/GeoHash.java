package ch.hsr.geohash;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class GeoHash implements Serializable, Comparable<GeoHash> {
    private static final int[] BITS = {16, 8, 4, 2, 1};
    private static final char[] base32 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final Map<Character, Integer> decodeMap = new HashMap();
    private static final long serialVersionUID = -8553214249630252175L;
    private BoundingBox boundingBox;
    private WGS84Point point;
    protected long bits = 0;
    protected byte significantBits = 0;

    static {
        int length = base32.length;
        for (int i = 0; i < length; i++) {
            decodeMap.put(Character.valueOf(base32[i]), Integer.valueOf(i));
        }
    }

    protected GeoHash() {
    }

    public static GeoHash withCharacterPrecision(double d, double d2, int i) {
        if (i > 12) {
            throw new IllegalArgumentException("A geohash can only be 12 character long.");
        }
        int i2 = i * 5;
        return new GeoHash(d, d2, i2 <= 60 ? i2 : 60);
    }

    public static String geoHashStringWithCharacterPrecision(double d, double d2, int i) {
        return withCharacterPrecision(d, d2, i).toBase32();
    }

    private GeoHash(double d, double d2, int i) {
        this.point = new WGS84Point(d, d2);
        int iMin = Math.min(i, 64);
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z = true;
        while (this.significantBits < iMin) {
            if (z) {
                divideRangeEncode(d2, dArr2);
            } else {
                divideRangeEncode(d, dArr);
            }
            z = !z;
        }
        setBoundingBox(this, dArr, dArr2);
        this.bits <<= 64 - iMin;
    }

    private static void setBoundingBox(GeoHash geoHash, double[] dArr, double[] dArr2) {
        geoHash.boundingBox = new BoundingBox(new WGS84Point(dArr[0], dArr2[0]), new WGS84Point(dArr[1], dArr2[1]));
    }

    private void divideRangeEncode(double d, double[] dArr) {
        double d2 = (dArr[0] + dArr[1]) / 2.0d;
        if (d >= d2) {
            addOnBitToEnd();
            dArr[0] = d2;
        } else {
            addOffBitToEnd();
            dArr[1] = d2;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public String toBase32() {
        if (this.significantBits % 5 != 0) {
            throw new IllegalStateException("Cannot convert a geohash to base32 if the precision is not a multiple of 5.");
        }
        StringBuilder sb = new StringBuilder();
        long j = this.bits;
        double d = this.significantBits;
        Double.isNaN(d);
        int iCeil = (int) Math.ceil(d / 5.0d);
        for (int i = 0; i < iCeil; i++) {
            sb.append(base32[(int) ((j & (-576460752303423488L)) >>> 59)]);
            j <<= 5;
        }
        return sb.toString();
    }

    protected final void addOnBitToEnd() {
        this.significantBits = (byte) (this.significantBits + 1);
        this.bits <<= 1;
        this.bits |= 1;
    }

    protected final void addOffBitToEnd() {
        this.significantBits = (byte) (this.significantBits + 1);
        this.bits <<= 1;
    }

    public String toString() {
        return this.significantBits % 5 == 0 ? String.format("%s -> %s -> %s", Long.toBinaryString(this.bits), this.boundingBox, toBase32()) : String.format("%s -> %s, bits: %d", Long.toBinaryString(this.bits), this.boundingBox, Byte.valueOf(this.significantBits));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GeoHash)) {
            return false;
        }
        GeoHash geoHash = (GeoHash) obj;
        return geoHash.significantBits == this.significantBits && geoHash.bits == this.bits;
    }

    public int hashCode() {
        long j = this.bits;
        return ((527 + ((int) (j ^ (j >>> 32)))) * 31) + this.significantBits;
    }

    @Override // java.lang.Comparable
    public int compareTo(GeoHash geoHash) {
        int iCompare = Long.compare(this.bits ^ Long.MIN_VALUE, Long.MIN_VALUE ^ geoHash.bits);
        return iCompare != 0 ? iCompare : Integer.compare(this.significantBits, geoHash.significantBits);
    }
}
