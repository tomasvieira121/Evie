package com.google.android.gms.common.util;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Strings {
    private static final Pattern zzhf = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean isEmptyOrWhitespace(String str) {
        return str == null || str.trim().isEmpty();
    }
}
