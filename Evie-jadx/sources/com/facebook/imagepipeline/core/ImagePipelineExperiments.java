package com.facebook.imagepipeline.core;

import com.facebook.common.internal.Supplier;
import com.facebook.common.webp.WebpBitmapFactory;
import com.facebook.imagepipeline.cache.MediaIdExtractor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ImagePipelineExperiments {
    private final boolean mDecodeCancellationEnabled;
    private final boolean mExternalCreatedBitmapLogEnabled;
    private final MediaIdExtractor mMediaIdExtractor;
    private final Supplier<Boolean> mMediaVariationsIndexEnabled;
    private final boolean mPartialImageCachingEnabled;
    private final boolean mSuppressBitmapPrefetching;
    private final boolean mUseBitmapPrepareToDraw;
    private final boolean mUseDownsamplingRatioForResizing;
    private final WebpBitmapFactory mWebpBitmapFactory;
    private final WebpBitmapFactory.WebpErrorLogger mWebpErrorLogger;
    private final boolean mWebpSupportEnabled;

    private ImagePipelineExperiments(Builder builder, ImagePipelineConfig.Builder builder2) {
        this.mWebpSupportEnabled = builder.mWebpSupportEnabled;
        this.mExternalCreatedBitmapLogEnabled = builder.mExternalCreatedBitmapLogEnabled;
        if (builder.mMediaVariationsIndexEnabled == null) {
            this.mMediaVariationsIndexEnabled = new Supplier<Boolean>() { // from class: com.facebook.imagepipeline.core.ImagePipelineExperiments.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.common.internal.Supplier
                public Boolean get() {
                    return Boolean.FALSE;
                }
            };
        } else {
            this.mMediaVariationsIndexEnabled = builder.mMediaVariationsIndexEnabled;
        }
        this.mMediaIdExtractor = builder.mMediaIdExtractor;
        this.mWebpErrorLogger = builder.mWebpErrorLogger;
        this.mDecodeCancellationEnabled = builder.mDecodeCancellationEnabled;
        this.mWebpBitmapFactory = builder.mWebpBitmapFactory;
        this.mSuppressBitmapPrefetching = builder.mSuppressBitmapPrefetching;
        this.mUseDownsamplingRatioForResizing = builder.mUseDownsamplingRatioForResizing;
        this.mUseBitmapPrepareToDraw = builder.mUseBitmapPrepareToDraw;
        this.mPartialImageCachingEnabled = builder.mPartialImageCachingEnabled;
    }

    public boolean isExternalCreatedBitmapLogEnabled() {
        return this.mExternalCreatedBitmapLogEnabled;
    }

    public boolean getMediaVariationsIndexEnabled() {
        return this.mMediaVariationsIndexEnabled.get().booleanValue();
    }

    @Nullable
    public MediaIdExtractor getMediaIdExtractor() {
        return this.mMediaIdExtractor;
    }

    public boolean getUseDownsamplingRatioForResizing() {
        return this.mUseDownsamplingRatioForResizing;
    }

    public boolean isWebpSupportEnabled() {
        return this.mWebpSupportEnabled;
    }

    public boolean isDecodeCancellationEnabled() {
        return this.mDecodeCancellationEnabled;
    }

    public WebpBitmapFactory.WebpErrorLogger getWebpErrorLogger() {
        return this.mWebpErrorLogger;
    }

    public WebpBitmapFactory getWebpBitmapFactory() {
        return this.mWebpBitmapFactory;
    }

    public boolean getUseBitmapPrepareToDraw() {
        return this.mUseBitmapPrepareToDraw;
    }

    public boolean isPartialImageCachingEnabled() {
        return this.mPartialImageCachingEnabled;
    }

    public static class Builder {
        private final ImagePipelineConfig.Builder mConfigBuilder;
        private MediaIdExtractor mMediaIdExtractor;
        private WebpBitmapFactory mWebpBitmapFactory;
        private WebpBitmapFactory.WebpErrorLogger mWebpErrorLogger;
        private boolean mWebpSupportEnabled = false;
        private boolean mExternalCreatedBitmapLogEnabled = false;
        private Supplier<Boolean> mMediaVariationsIndexEnabled = null;
        private boolean mDecodeCancellationEnabled = false;
        private boolean mSuppressBitmapPrefetching = false;
        private boolean mUseDownsamplingRatioForResizing = false;
        private boolean mUseBitmapPrepareToDraw = false;
        private boolean mPartialImageCachingEnabled = false;

        public Builder(ImagePipelineConfig.Builder builder) {
            this.mConfigBuilder = builder;
        }

        public ImagePipelineExperiments build() {
            return new ImagePipelineExperiments(this, this.mConfigBuilder);
        }
    }
}
