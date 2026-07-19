package com.facebook.imagepipeline.decoder;

import com.facebook.imageformat.ImageFormat;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ImageDecoderConfig {
    private final Map<ImageFormat, ImageDecoder> mCustomImageDecoders;
    private final List<ImageFormat.FormatChecker> mCustomImageFormats;

    public Map<ImageFormat, ImageDecoder> getCustomImageDecoders() {
        return this.mCustomImageDecoders;
    }

    public List<ImageFormat.FormatChecker> getCustomImageFormats() {
        return this.mCustomImageFormats;
    }
}
