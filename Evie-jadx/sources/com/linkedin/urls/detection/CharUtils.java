package com.linkedin.urls.detection;

import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public class CharUtils {
    public static boolean isAlpha(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    public static boolean isDot(char c) {
        return c == '.' || c == 12290 || c == 65294 || c == 65377;
    }

    public static boolean isHex(char c) {
        return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
    }

    public static boolean isNumeric(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isWhiteSpace(char c) {
        return c == '\n' || c == '\t' || c == '\r' || c == ' ';
    }

    public static boolean isAlphaNumeric(char c) {
        return isAlpha(c) || isNumeric(c);
    }

    public static boolean isUnreserved(char c) {
        return isAlphaNumeric(c) || c == '-' || c == '.' || c == '_' || c == '~';
    }

    public static String[] splitByDot(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (StringUtils.isEmpty(str)) {
            return new String[]{""};
        }
        InputTextReader inputTextReader = new InputTextReader(str);
        while (!inputTextReader.eof()) {
            char c = inputTextReader.read();
            if (isDot(c)) {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else if (c == '%' && inputTextReader.canReadChars(2) && inputTextReader.peek(2).equalsIgnoreCase("2e")) {
                inputTextReader.read();
                inputTextReader.read();
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(c);
            }
        }
        arrayList.add(sb.toString());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
