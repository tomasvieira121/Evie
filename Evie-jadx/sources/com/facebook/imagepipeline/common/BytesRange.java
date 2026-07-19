package com.facebook.imagepipeline.common;

import com.facebook.common.internal.Preconditions;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class BytesRange {

    @Nullable
    private static Pattern sHeaderParsingRegEx;
    public final int from;

    /* JADX INFO: renamed from: to */
    public final int f382to;

    public BytesRange(int i, int i2) {
        this.from = i;
        this.f382to = i2;
    }

    public String toHttpRangeHeaderValue() {
        return String.format((Locale) null, "bytes=%s-%s", valueOrEmpty(this.from), valueOrEmpty(this.f382to));
    }

    public boolean contains(@Nullable BytesRange bytesRange) {
        return bytesRange != null && this.from <= bytesRange.from && this.f382to >= bytesRange.f382to;
    }

    public String toString() {
        return String.format((Locale) null, "%s-%s", valueOrEmpty(this.from), valueOrEmpty(this.f382to));
    }

    private static String valueOrEmpty(int i) {
        return i == Integer.MAX_VALUE ? "" : Integer.toString(i);
    }

    public static BytesRange from(int i) {
        Preconditions.checkArgument(i >= 0);
        return new BytesRange(i, Integer.MAX_VALUE);
    }

    public static BytesRange toMax(int i) {
        Preconditions.checkArgument(i > 0);
        return new BytesRange(0, i);
    }

    @Nullable
    public static BytesRange fromContentRangeHeader(@Nullable String str) throws IllegalArgumentException {
        if (str == null) {
            return null;
        }
        if (sHeaderParsingRegEx == null) {
            sHeaderParsingRegEx = Pattern.compile("[-/ ]");
        }
        try {
            String[] strArrSplit = sHeaderParsingRegEx.split(str);
            Preconditions.checkArgument(strArrSplit.length == 4);
            Preconditions.checkArgument(strArrSplit[0].equals("bytes"));
            int i = Integer.parseInt(strArrSplit[1]);
            int i2 = Integer.parseInt(strArrSplit[2]);
            int i3 = Integer.parseInt(strArrSplit[3]);
            Preconditions.checkArgument(i2 > i);
            Preconditions.checkArgument(i3 > i2);
            if (i2 < i3 - 1) {
                return new BytesRange(i, i2);
            }
            return new BytesRange(i, Integer.MAX_VALUE);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(String.format((Locale) null, "Invalid Content-Range header value: \"%s\"", str), e);
        }
    }
}
