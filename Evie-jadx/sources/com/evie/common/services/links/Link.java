package com.evie.common.services.links;

import android.net.Uri;
import com.facebook.common.internal.Preconditions;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public final class Link {
    public static Uri toCard(String str) {
        Preconditions.checkNotNull(str, "Entity may not be null.");
        return toUri(String.format("/layouts/card?entity=%s", encode(str)));
    }

    private static Uri toUri(String str) {
        return new Uri.Builder().scheme("jigsaw").encodedPath(str).build();
    }

    private static String encode(String str) {
        return URLEncoder.encode(str, "UTF-8");
    }
}
