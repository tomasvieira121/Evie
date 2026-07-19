package com.facebook.imagepipeline.cache;

import android.net.Uri;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface MediaIdExtractor {
    @Nullable
    String getMediaIdFrom(Uri uri);
}
