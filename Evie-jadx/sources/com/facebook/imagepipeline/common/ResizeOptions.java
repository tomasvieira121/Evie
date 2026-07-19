package com.facebook.imagepipeline.common;

import com.facebook.common.util.HashCodeUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ResizeOptions {
    public final int height;
    public final float maxBitmapSize;
    public final float roundUpFraction;
    public final int width;

    public int hashCode() {
        return HashCodeUtil.hashCode(this.width, this.height);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResizeOptions)) {
            return false;
        }
        ResizeOptions resizeOptions = (ResizeOptions) obj;
        return this.width == resizeOptions.width && this.height == resizeOptions.height;
    }

    public String toString() {
        return String.format((Locale) null, "%dx%d", Integer.valueOf(this.width), Integer.valueOf(this.height));
    }
}
