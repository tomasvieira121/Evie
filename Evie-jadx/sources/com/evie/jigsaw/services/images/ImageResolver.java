package com.evie.jigsaw.services.images;

import android.net.Uri;
import com.evie.jigsaw.services.images.models.Image;

/* JADX INFO: loaded from: classes.dex */
public interface ImageResolver {
    Uri resolve(Image image, int i);
}
