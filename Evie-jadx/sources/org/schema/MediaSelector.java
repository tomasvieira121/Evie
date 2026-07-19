package org.schema;

import java.util.List;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class MediaSelector {
    public static String selectMediaUrl(List<? extends MediaObject> list, int i, float f) {
        return selectMediaUrl(list, i, f, true);
    }

    public static String selectMediaUrl(List<? extends MediaObject> list, int i, float f, boolean z) {
        MediaObject mediaObjectSelectMedia = selectMedia(list, i, f, z);
        if (mediaObjectSelectMedia != null) {
            return mediaObjectSelectMedia.getUrl();
        }
        return null;
    }

    public static MediaObject selectMedia(List<? extends MediaObject> list, int i, float f) {
        return selectMedia(list, i, f, true);
    }

    public static MediaObject selectMedia(List<? extends MediaObject> list, int i, float f, boolean z) {
        if (list.isEmpty()) {
            return null;
        }
        TreeSet treeSet = new TreeSet();
        TreeMap treeMap = new TreeMap();
        for (MediaObject mediaObject : list) {
            Integer width = mediaObject.getWidth();
            Integer height = mediaObject.getHeight();
            if (width != null && height != null) {
                float fFloatValue = width.floatValue() / height.floatValue();
                treeSet.add(Float.valueOf(fFloatValue));
                if (Math.abs(fFloatValue - f) <= 0.01f) {
                    treeMap.put(width, mediaObject);
                }
            }
        }
        if (!treeMap.isEmpty()) {
            for (Integer num : treeMap.keySet()) {
                if (num.intValue() >= i) {
                    return (MediaObject) treeMap.get(num);
                }
            }
            return list.get(list.size() - 1);
        }
        if (!z) {
            return null;
        }
        if (treeSet.size() <= 0) {
            return list.get(list.size() - 1);
        }
        if (((Float) treeSet.last()).floatValue() < f) {
            return selectMedia(list, i, ((Float) treeSet.lower(Float.valueOf(f))).floatValue());
        }
        treeSet.add(Float.valueOf(f));
        return selectMedia(list, i, ((Float) treeSet.higher(Float.valueOf(f))).floatValue());
    }
}
