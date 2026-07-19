package com.aol.mobile.sdk.player.advertisement.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static String join(CharSequence charSequence, Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    public static boolean isM3u8(String str) {
        if (str.contains("?")) {
            return str.substring(0, str.indexOf("?")).endsWith(".m3u8");
        }
        return str.endsWith(".m3u8");
    }

    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }
}
