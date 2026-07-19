package com.aol.mobile.sdk.controls;

import android.widget.ImageView;
import com.aol.mobile.sdk.annotations.PublicApi;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public interface ImageLoader {
    void cancelLoad(ImageView imageView);

    void load(String str, ImageView imageView);
}
