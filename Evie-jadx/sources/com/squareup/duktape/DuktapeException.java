package com.squareup.duktape;

import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class DuktapeException extends RuntimeException {
    private static final String STACK_TRACE_CLASS_NAME = "JavaScript";
    private static final Pattern STACK_TRACE_PATTERN = Pattern.compile("\\s*at ([^\\s^\\[]+) \\(([^\\s]+):(\\d+)\\).*$");

    public DuktapeException(String str) {
        super(getErrorMessage(str));
        addDuktapeStack(this, str);
    }

    static void addDuktapeStack(Throwable th, String str) {
        String[] strArrSplit = str.split("\n", -1);
        if (strArrSplit.length <= 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!z && stackTraceElement.isNativeMethod() && stackTraceElement.getClassName().equals(Duktape.class.getName()) && stackTraceElement.getMethodName().equals("evaluate")) {
                for (int i = 1; i < strArrSplit.length; i++) {
                    StackTraceElement stackTraceElement2 = toStackTraceElement(strArrSplit[i]);
                    if (stackTraceElement2 != null) {
                        arrayList.add(stackTraceElement2);
                    }
                }
                z = true;
            }
            arrayList.add(stackTraceElement);
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }

    private static String getErrorMessage(String str) {
        int iIndexOf = str.indexOf(10);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    private static StackTraceElement toStackTraceElement(String str) {
        Matcher matcher = STACK_TRACE_PATTERN.matcher(str);
        if (matcher.matches()) {
            return new StackTraceElement(STACK_TRACE_CLASS_NAME, matcher.group(1), matcher.group(2), Integer.parseInt(matcher.group(3)));
        }
        return null;
    }
}
