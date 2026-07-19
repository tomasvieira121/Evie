package com.facebook.drawee.controller;

import android.content.Context;
import android.graphics.drawable.Animatable;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.datasource.DataSource;
import com.facebook.datasource.DataSources;
import com.facebook.datasource.FirstAvailableDataSourceSupplier;
import com.facebook.datasource.IncreasingQualityDataSourceSupplier;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.drawee.gestures.GestureDetector;
import com.facebook.drawee.interfaces.DraweeController;
import com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDraweeControllerBuilder<BUILDER extends AbstractDraweeControllerBuilder<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements SimpleDraweeControllerBuilder {
    private boolean mAutoPlayAnimations;
    private final Set<ControllerListener> mBoundControllerListeners;

    @Nullable
    private Object mCallerContext;
    private String mContentDescription;
    private final Context mContext;

    @Nullable
    private ControllerListener<? super INFO> mControllerListener;

    @Nullable
    private ControllerViewportVisibilityListener mControllerViewportVisibilityListener;

    @Nullable
    private Supplier<DataSource<IMAGE>> mDataSourceSupplier;

    @Nullable
    private REQUEST mImageRequest;

    @Nullable
    private REQUEST mLowResImageRequest;

    @Nullable
    private REQUEST[] mMultiImageRequests;

    @Nullable
    private DraweeController mOldController;
    private boolean mRetainImageOnFailure;
    private boolean mTapToRetryEnabled;
    private boolean mTryCacheOnlyFirst;
    private static final ControllerListener<Object> sAutoPlayAnimationsListener = new BaseControllerListener<Object>() { // from class: com.facebook.drawee.controller.AbstractDraweeControllerBuilder.1
        @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
        public void onFinalImageSet(String str, @Nullable Object obj, @Nullable Animatable animatable) {
            if (animatable != null) {
                animatable.start();
            }
        }
    };
    private static final NullPointerException NO_REQUEST_EXCEPTION = new NullPointerException("No image request was specified!");
    private static final AtomicLong sIdCounter = new AtomicLong();

    public enum CacheLevel {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    protected abstract DataSource<IMAGE> getDataSourceForRequest(REQUEST request, Object obj, CacheLevel cacheLevel);

    @ReturnsOwnership
    protected abstract BUILDER getThis();

    @ReturnsOwnership
    protected abstract AbstractDraweeController obtainController();

    protected AbstractDraweeControllerBuilder(Context context, Set<ControllerListener> set) {
        this.mContext = context;
        this.mBoundControllerListeners = set;
        init();
    }

    private void init() {
        this.mCallerContext = null;
        this.mImageRequest = null;
        this.mLowResImageRequest = null;
        this.mMultiImageRequests = null;
        this.mTryCacheOnlyFirst = true;
        this.mControllerListener = null;
        this.mControllerViewportVisibilityListener = null;
        this.mTapToRetryEnabled = false;
        this.mAutoPlayAnimations = false;
        this.mOldController = null;
        this.mContentDescription = null;
    }

    @Override // com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder
    public BUILDER setCallerContext(Object obj) {
        this.mCallerContext = obj;
        return (BUILDER) getThis();
    }

    @Nullable
    public Object getCallerContext() {
        return this.mCallerContext;
    }

    public BUILDER setImageRequest(REQUEST request) {
        this.mImageRequest = request;
        return (BUILDER) getThis();
    }

    @Nullable
    public REQUEST getImageRequest() {
        return this.mImageRequest;
    }

    public boolean getRetainImageOnFailure() {
        return this.mRetainImageOnFailure;
    }

    public BUILDER setControllerListener(ControllerListener<? super INFO> controllerListener) {
        this.mControllerListener = controllerListener;
        return (BUILDER) getThis();
    }

    @Nullable
    public ControllerViewportVisibilityListener getControllerViewportVisibilityListener() {
        return this.mControllerViewportVisibilityListener;
    }

    @Nullable
    public String getContentDescription() {
        return this.mContentDescription;
    }

    @Override // com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder
    public BUILDER setOldController(@Nullable DraweeController draweeController) {
        this.mOldController = draweeController;
        return (BUILDER) getThis();
    }

    @Nullable
    public DraweeController getOldController() {
        return this.mOldController;
    }

    @Override // com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder
    public AbstractDraweeController build() {
        REQUEST request;
        validate();
        if (this.mImageRequest == null && this.mMultiImageRequests == null && (request = this.mLowResImageRequest) != null) {
            this.mImageRequest = request;
            this.mLowResImageRequest = null;
        }
        return buildController();
    }

    protected void validate() {
        boolean z = false;
        Preconditions.checkState(this.mMultiImageRequests == null || this.mImageRequest == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.mDataSourceSupplier == null || (this.mMultiImageRequests == null && this.mImageRequest == null && this.mLowResImageRequest == null)) {
            z = true;
        }
        Preconditions.checkState(z, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    protected AbstractDraweeController buildController() {
        AbstractDraweeController abstractDraweeControllerObtainController = obtainController();
        abstractDraweeControllerObtainController.setRetainImageOnFailure(getRetainImageOnFailure());
        abstractDraweeControllerObtainController.setContentDescription(getContentDescription());
        abstractDraweeControllerObtainController.setControllerViewportVisibilityListener(getControllerViewportVisibilityListener());
        maybeBuildAndSetRetryManager(abstractDraweeControllerObtainController);
        maybeAttachListeners(abstractDraweeControllerObtainController);
        return abstractDraweeControllerObtainController;
    }

    protected static String generateUniqueControllerId() {
        return String.valueOf(sIdCounter.getAndIncrement());
    }

    protected Supplier<DataSource<IMAGE>> obtainDataSourceSupplier() {
        Supplier<DataSource<IMAGE>> supplier = this.mDataSourceSupplier;
        if (supplier != null) {
            return supplier;
        }
        Supplier<DataSource<IMAGE>> firstAvailableDataSourceSupplier = null;
        REQUEST request = this.mImageRequest;
        if (request != null) {
            firstAvailableDataSourceSupplier = getDataSourceSupplierForRequest(request);
        } else {
            REQUEST[] requestArr = this.mMultiImageRequests;
            if (requestArr != null) {
                firstAvailableDataSourceSupplier = getFirstAvailableDataSourceSupplier(requestArr, this.mTryCacheOnlyFirst);
            }
        }
        if (firstAvailableDataSourceSupplier != null && this.mLowResImageRequest != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(firstAvailableDataSourceSupplier);
            arrayList.add(getDataSourceSupplierForRequest(this.mLowResImageRequest));
            firstAvailableDataSourceSupplier = IncreasingQualityDataSourceSupplier.create(arrayList);
        }
        return firstAvailableDataSourceSupplier == null ? DataSources.getFailedDataSourceSupplier(NO_REQUEST_EXCEPTION) : firstAvailableDataSourceSupplier;
    }

    protected Supplier<DataSource<IMAGE>> getFirstAvailableDataSourceSupplier(REQUEST[] requestArr, boolean z) {
        ArrayList arrayList = new ArrayList(requestArr.length * 2);
        if (z) {
            for (REQUEST request : requestArr) {
                arrayList.add(getDataSourceSupplierForRequest(request, CacheLevel.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : requestArr) {
            arrayList.add(getDataSourceSupplierForRequest(request2));
        }
        return FirstAvailableDataSourceSupplier.create(arrayList);
    }

    protected Supplier<DataSource<IMAGE>> getDataSourceSupplierForRequest(REQUEST request) {
        return getDataSourceSupplierForRequest(request, CacheLevel.FULL_FETCH);
    }

    protected Supplier<DataSource<IMAGE>> getDataSourceSupplierForRequest(final REQUEST request, final CacheLevel cacheLevel) {
        final Object callerContext = getCallerContext();
        return new Supplier<DataSource<IMAGE>>() { // from class: com.facebook.drawee.controller.AbstractDraweeControllerBuilder.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.facebook.common.internal.Supplier
            public DataSource<IMAGE> get() {
                return AbstractDraweeControllerBuilder.this.getDataSourceForRequest(request, callerContext, cacheLevel);
            }

            public String toString() {
                return Objects.toStringHelper(this).add("request", request.toString()).toString();
            }
        };
    }

    protected void maybeAttachListeners(AbstractDraweeController abstractDraweeController) {
        Set<ControllerListener> set = this.mBoundControllerListeners;
        if (set != null) {
            Iterator<ControllerListener> it = set.iterator();
            while (it.hasNext()) {
                abstractDraweeController.addControllerListener(it.next());
            }
        }
        ControllerListener<? super INFO> controllerListener = this.mControllerListener;
        if (controllerListener != null) {
            abstractDraweeController.addControllerListener(controllerListener);
        }
        if (this.mAutoPlayAnimations) {
            abstractDraweeController.addControllerListener(sAutoPlayAnimationsListener);
        }
    }

    protected void maybeBuildAndSetRetryManager(AbstractDraweeController abstractDraweeController) {
        if (this.mTapToRetryEnabled) {
            abstractDraweeController.getRetryManager().setTapToRetryEnabled(this.mTapToRetryEnabled);
            maybeBuildAndSetGestureDetector(abstractDraweeController);
        }
    }

    protected void maybeBuildAndSetGestureDetector(AbstractDraweeController abstractDraweeController) {
        if (abstractDraweeController.getGestureDetector() == null) {
            abstractDraweeController.setGestureDetector(GestureDetector.newInstance(this.mContext));
        }
    }
}
