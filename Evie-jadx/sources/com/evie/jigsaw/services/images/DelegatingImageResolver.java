package com.evie.jigsaw.services.images;

import android.net.Uri;
import com.evie.jigsaw.services.images.models.Image;

/* JADX INFO: loaded from: classes.dex */
public class DelegatingImageResolver implements ImageResolver {
    private final ImageResolver[] mResolvers;

    public DelegatingImageResolver(ImageResolver... imageResolverArr) {
        this.mResolvers = imageResolverArr;
    }

    @Override // com.evie.jigsaw.services.images.ImageResolver
    public Uri resolve(Image image, int i) {
        for (ImageResolver imageResolver : this.mResolvers) {
            Uri uriResolve = imageResolver.resolve(image, i);
            if (uriResolve != null) {
                return uriResolve;
            }
        }
        return null;
    }
}
