package org.apache.commons.lang3;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("(?: |\\u00A0|\\s|[\\s&&[^ ]])\\s*");

    public static String defaultString(String str) {
        return str == null ? "" : str;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
