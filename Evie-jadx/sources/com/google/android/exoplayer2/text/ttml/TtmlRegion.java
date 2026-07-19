package com.google.android.exoplayer2.text.ttml;

/* JADX INFO: loaded from: classes.dex */
final class TtmlRegion {

    /* JADX INFO: renamed from: id */
    public final String f400id;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final float width;

    public TtmlRegion(String str) {
        this(str, Float.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public TtmlRegion(String str, float f, float f2, int i, int i2, float f3) {
        this.f400id = str;
        this.position = f;
        this.line = f2;
        this.lineType = i;
        this.lineAnchor = i2;
        this.width = f3;
    }
}
