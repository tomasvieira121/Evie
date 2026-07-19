package uk.p007co.chrisjenx.calligraphy;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class TypefaceUtils {
    private static final Map<String, Typeface> sCachedFonts = new HashMap();
    private static final Map<Typeface, CalligraphyTypefaceSpan> sCachedSpans = new HashMap();

    public static Typeface load(AssetManager assetManager, String str) {
        synchronized (sCachedFonts) {
            try {
                try {
                    if (!sCachedFonts.containsKey(str)) {
                        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(assetManager, str);
                        sCachedFonts.put(str, typefaceCreateFromAsset);
                        return typefaceCreateFromAsset;
                    }
                    return sCachedFonts.get(str);
                } catch (Exception e) {
                    Log.w("Calligraphy", "Can't create asset from " + str + ". Make sure you have passed in the correct path and file name.", e);
                    sCachedFonts.put(str, null);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static CalligraphyTypefaceSpan getSpan(Typeface typeface) {
        if (typeface == null) {
            return null;
        }
        synchronized (sCachedSpans) {
            if (!sCachedSpans.containsKey(typeface)) {
                CalligraphyTypefaceSpan calligraphyTypefaceSpan = new CalligraphyTypefaceSpan(typeface);
                sCachedSpans.put(typeface, calligraphyTypefaceSpan);
                return calligraphyTypefaceSpan;
            }
            return sCachedSpans.get(typeface);
        }
    }

    public static boolean isLoaded(Typeface typeface) {
        return typeface != null && sCachedFonts.containsValue(typeface);
    }

    private TypefaceUtils() {
    }
}
