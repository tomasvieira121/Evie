package com.evie.sidescreen.background;

import android.graphics.Bitmap;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackgroundModel {
    public abstract Observable<Bitmap> getObservable();

    enum ImageDensity {
        MDPI(160, "mdpi"),
        HDPI(240, "hdpi"),
        XHDPI(320, "xhdpi"),
        XXHDPI(480, "xxhdpi");

        private String density;
        private int dpi;

        ImageDensity(int i, String str) {
            this.dpi = i;
            this.density = str;
        }

        public static ImageDensity findClosestImageDensity(int i) {
            ImageDensity imageDensity = null;
            int i2 = Integer.MAX_VALUE;
            for (ImageDensity imageDensity2 : values()) {
                int iAbs = Math.abs(imageDensity2.dpi - i);
                if (i2 > iAbs) {
                    imageDensity = imageDensity2;
                    i2 = iAbs;
                }
            }
            return imageDensity;
        }
    }
}
