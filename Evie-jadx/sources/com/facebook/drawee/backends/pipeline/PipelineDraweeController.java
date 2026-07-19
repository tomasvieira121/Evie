package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.drawable.base.DrawableWithCaches;
import com.facebook.drawee.components.DeferredReleaser;
import com.facebook.drawee.controller.AbstractDraweeController;
import com.facebook.drawee.debug.DebugControllerOverlayDrawable;
import com.facebook.drawee.drawable.OrientedDrawable;
import com.facebook.drawee.drawable.ScaleTypeDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.interfaces.DraweeHierarchy;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.drawable.DrawableFactory;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.ImageInfo;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class PipelineDraweeController extends AbstractDraweeController<CloseableReference<CloseableImage>, ImageInfo> {
    private static final Class<?> TAG = PipelineDraweeController.class;
    private final DrawableFactory mAnimatedDrawableFactory;
    private CacheKey mCacheKey;

    @Nullable
    private ImmutableList<DrawableFactory> mCustomDrawableFactories;
    private Supplier<DataSource<CloseableReference<CloseableImage>>> mDataSourceSupplier;
    private final DrawableFactory mDefaultDrawableFactory;
    private boolean mDrawDebugOverlay;

    @Nullable
    private final ImmutableList<DrawableFactory> mGlobalDrawableFactories;

    @Nullable
    private MemoryCache<CacheKey, CloseableImage> mMemoryCache;
    private final Resources mResources;

    public PipelineDraweeController(Resources resources, DeferredReleaser deferredReleaser, DrawableFactory drawableFactory, Executor executor, MemoryCache<CacheKey, CloseableImage> memoryCache, Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj, @Nullable ImmutableList<DrawableFactory> immutableList) {
        super(deferredReleaser, executor, str, obj);
        this.mDefaultDrawableFactory = new DrawableFactory() { // from class: com.facebook.drawee.backends.pipeline.PipelineDraweeController.1
            @Override // com.facebook.imagepipeline.drawable.DrawableFactory
            public boolean supportsImageType(CloseableImage closeableImage) {
                return true;
            }

            @Override // com.facebook.imagepipeline.drawable.DrawableFactory
            public Drawable createDrawable(CloseableImage closeableImage) {
                if (!(closeableImage instanceof CloseableStaticBitmap)) {
                    if (PipelineDraweeController.this.mAnimatedDrawableFactory == null || !PipelineDraweeController.this.mAnimatedDrawableFactory.supportsImageType(closeableImage)) {
                        return null;
                    }
                    return PipelineDraweeController.this.mAnimatedDrawableFactory.createDrawable(closeableImage);
                }
                CloseableStaticBitmap closeableStaticBitmap = (CloseableStaticBitmap) closeableImage;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(PipelineDraweeController.this.mResources, closeableStaticBitmap.getUnderlyingBitmap());
                return (closeableStaticBitmap.getRotationAngle() == 0 || closeableStaticBitmap.getRotationAngle() == -1) ? bitmapDrawable : new OrientedDrawable(bitmapDrawable, closeableStaticBitmap.getRotationAngle());
            }
        };
        this.mResources = resources;
        this.mAnimatedDrawableFactory = drawableFactory;
        this.mMemoryCache = memoryCache;
        this.mCacheKey = cacheKey;
        this.mGlobalDrawableFactories = immutableList;
        init(supplier);
    }

    public void initialize(Supplier<DataSource<CloseableReference<CloseableImage>>> supplier, String str, CacheKey cacheKey, Object obj, @Nullable ImmutableList<DrawableFactory> immutableList) {
        super.initialize(str, obj);
        init(supplier);
        this.mCacheKey = cacheKey;
        setCustomDrawableFactories(immutableList);
    }

    public void setDrawDebugOverlay(boolean z) {
        this.mDrawDebugOverlay = z;
    }

    public void setCustomDrawableFactories(@Nullable ImmutableList<DrawableFactory> immutableList) {
        this.mCustomDrawableFactories = immutableList;
    }

    private void init(Supplier<DataSource<CloseableReference<CloseableImage>>> supplier) {
        this.mDataSourceSupplier = supplier;
        maybeUpdateDebugOverlay(null);
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController
    protected DataSource<CloseableReference<CloseableImage>> getDataSource() {
        if (FLog.isLoggable(2)) {
            FLog.m327v(TAG, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        return this.mDataSourceSupplier.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public Drawable createDrawable(CloseableReference<CloseableImage> closeableReference) {
        Preconditions.checkState(CloseableReference.isValid(closeableReference));
        CloseableImage closeableImage = closeableReference.get();
        maybeUpdateDebugOverlay(closeableImage);
        Drawable drawableMaybeCreateDrawableFromFactories = maybeCreateDrawableFromFactories(this.mCustomDrawableFactories, closeableImage);
        if (drawableMaybeCreateDrawableFromFactories != null) {
            return drawableMaybeCreateDrawableFromFactories;
        }
        Drawable drawableMaybeCreateDrawableFromFactories2 = maybeCreateDrawableFromFactories(this.mGlobalDrawableFactories, closeableImage);
        if (drawableMaybeCreateDrawableFromFactories2 != null) {
            return drawableMaybeCreateDrawableFromFactories2;
        }
        Drawable drawableCreateDrawable = this.mDefaultDrawableFactory.createDrawable(closeableImage);
        if (drawableCreateDrawable != null) {
            return drawableCreateDrawable;
        }
        throw new UnsupportedOperationException("Unrecognized image class: " + closeableImage);
    }

    private Drawable maybeCreateDrawableFromFactories(@Nullable ImmutableList<DrawableFactory> immutableList, CloseableImage closeableImage) {
        Drawable drawableCreateDrawable;
        if (immutableList == null) {
            return null;
        }
        for (DrawableFactory drawableFactory : immutableList) {
            if (drawableFactory.supportsImageType(closeableImage) && (drawableCreateDrawable = drawableFactory.createDrawable(closeableImage)) != null) {
                return drawableCreateDrawable;
            }
        }
        return null;
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController, com.facebook.drawee.interfaces.DraweeController
    public void setHierarchy(@Nullable DraweeHierarchy draweeHierarchy) {
        super.setHierarchy(draweeHierarchy);
        maybeUpdateDebugOverlay(null);
    }

    private void maybeUpdateDebugOverlay(@Nullable CloseableImage closeableImage) {
        ScaleTypeDrawable activeScaleTypeDrawable;
        if (this.mDrawDebugOverlay) {
            Drawable controllerOverlay = getControllerOverlay();
            if (controllerOverlay == null) {
                controllerOverlay = new DebugControllerOverlayDrawable();
                setControllerOverlay(controllerOverlay);
            }
            if (controllerOverlay instanceof DebugControllerOverlayDrawable) {
                DebugControllerOverlayDrawable debugControllerOverlayDrawable = (DebugControllerOverlayDrawable) controllerOverlay;
                debugControllerOverlayDrawable.setControllerId(getId());
                DraweeHierarchy hierarchy = getHierarchy();
                ScalingUtils.ScaleType scaleType = null;
                if (hierarchy != null && (activeScaleTypeDrawable = ScalingUtils.getActiveScaleTypeDrawable(hierarchy.getTopLevelDrawable())) != null) {
                    scaleType = activeScaleTypeDrawable.getScaleType();
                }
                debugControllerOverlayDrawable.setScaleType(scaleType);
                if (closeableImage != null) {
                    debugControllerOverlayDrawable.setDimensions(closeableImage.getWidth(), closeableImage.getHeight());
                    debugControllerOverlayDrawable.setImageSize(closeableImage.getSizeInBytes());
                } else {
                    debugControllerOverlayDrawable.reset();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public ImageInfo getImageInfo(CloseableReference<CloseableImage> closeableReference) {
        Preconditions.checkState(CloseableReference.isValid(closeableReference));
        return closeableReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public int getImageHash(@Nullable CloseableReference<CloseableImage> closeableReference) {
        if (closeableReference != null) {
            return closeableReference.getValueHash();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public void releaseImage(@Nullable CloseableReference<CloseableImage> closeableReference) {
        CloseableReference.closeSafely(closeableReference);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    protected void releaseDrawable(@Nullable Drawable drawable) {
        if (drawable instanceof DrawableWithCaches) {
            ((DrawableWithCaches) drawable).dropCaches();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public CloseableReference<CloseableImage> getCachedImage() {
        CacheKey cacheKey;
        MemoryCache<CacheKey, CloseableImage> memoryCache = this.mMemoryCache;
        if (memoryCache == null || (cacheKey = this.mCacheKey) == null) {
            return null;
        }
        CloseableReference<CloseableImage> closeableReference = memoryCache.get(cacheKey);
        if (closeableReference == null || closeableReference.get().getQualityInfo().isOfFullQuality()) {
            return closeableReference;
        }
        closeableReference.close();
        return null;
    }

    @Override // com.facebook.drawee.controller.AbstractDraweeController
    public String toString() {
        return Objects.toStringHelper(this).add("super", super.toString()).add("dataSourceSupplier", this.mDataSourceSupplier).toString();
    }
}
