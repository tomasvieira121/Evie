package com.android.gallery3d.common;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.android.gallery3d.exif.ExifInterface;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class BitmapUtils {
    public static int computeSampleSizeLarger(float f) {
        int iFloor = (int) Math.floor(1.0f / f);
        if (iFloor <= 1) {
            return 1;
        }
        return iFloor <= 8 ? Utils.prevPowerOf2(iFloor) : (iFloor / 8) * 8;
    }

    public static int getRotationFromExif(Context context, Uri uri) {
        return getRotationFromExifHelper(null, 0, context, uri);
    }

    public static int getRotationFromExif(Resources resources, int i) {
        return getRotationFromExifHelper(resources, i, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Integer] */
    private static int getRotationFromExifHelper(Resources resources, int i, Context context, Uri uri) throws Throwable {
        ?? r2;
        ?? r1;
        ExifInterface exifInterface = new ExifInterface();
        ?? r3 = 0;
        r3 = 0;
        r3 = 0;
        r3 = 0;
        r3 = 0;
        r3 = 0;
        try {
            try {
                try {
                    try {
                        if (uri != null) {
                            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamOpenInputStream);
                            exifInterface.readExif(bufferedInputStream);
                            r3 = bufferedInputStream;
                            resources = inputStreamOpenInputStream;
                        } else {
                            InputStream inputStreamOpenRawResource = resources.openRawResource(i);
                            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStreamOpenRawResource);
                            exifInterface.readExif(bufferedInputStream2);
                            r3 = bufferedInputStream2;
                            resources = inputStreamOpenRawResource;
                        }
                        i = exifInterface.getTagIntValue(ExifInterface.TAG_ORIENTATION);
                        r1 = r3;
                        r2 = resources;
                        if (i != 0) {
                            int rotationForOrientationValue = ExifInterface.getRotationForOrientationValue(i.shortValue());
                            Utils.closeSilently(r3);
                            Utils.closeSilently(resources);
                            return rotationForOrientationValue;
                        }
                    } catch (Throwable th) {
                        th = th;
                        Utils.closeSilently(r3);
                        Utils.closeSilently(resources);
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                    Log.w("BitmapUtils", "Getting exif data failed", e);
                    r1 = r3;
                    r2 = resources;
                } catch (NullPointerException e2) {
                    e = e2;
                    Log.w("BitmapUtils", "Getting exif data failed", e);
                    r1 = r3;
                    r2 = resources;
                }
            } catch (IOException e3) {
                e = e3;
                resources = r3;
                Log.w("BitmapUtils", "Getting exif data failed", e);
                r1 = r3;
                r2 = resources;
            } catch (NullPointerException e4) {
                e = e4;
                resources = r3;
                Log.w("BitmapUtils", "Getting exif data failed", e);
                r1 = r3;
                r2 = resources;
            } catch (Throwable th2) {
                th = th2;
                resources = r3;
                Utils.closeSilently(r3);
                Utils.closeSilently(resources);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            r3 = i;
            Log.w("BitmapUtils", "Getting exif data failed", e);
            r1 = r3;
            r2 = resources;
        } catch (NullPointerException e6) {
            e = e6;
            r3 = i;
            Log.w("BitmapUtils", "Getting exif data failed", e);
            r1 = r3;
            r2 = resources;
        } catch (Throwable th3) {
            th = th3;
            r3 = i;
            Utils.closeSilently(r3);
            Utils.closeSilently(resources);
            throw th;
        }
        Utils.closeSilently(r1);
        Utils.closeSilently(r2);
        return 0;
    }
}
