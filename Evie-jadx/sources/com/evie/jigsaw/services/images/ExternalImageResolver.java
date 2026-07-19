package com.evie.jigsaw.services.images;

import android.net.Uri;
import com.evie.jigsaw.services.images.models.Image;

/* JADX INFO: loaded from: classes.dex */
public class ExternalImageResolver implements ImageResolver {
    @Override // com.evie.jigsaw.services.images.ImageResolver
    public Uri resolve(Image image, int i) {
        String url = image.getUrl(i);
        if (url != null) {
            return Uri.parse(url);
        }
        return null;
    }
}
