package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.image.ImageInfo;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoDraweeView extends SimpleDraweeView {
    private Attacher mAttacher;
    private boolean mEnableDraweeMatrix;

    public PhotoDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEnableDraweeMatrix = true;
        init();
    }

    protected void init() {
        Attacher attacher = this.mAttacher;
        if (attacher == null || attacher.getDraweeView() == null) {
            this.mAttacher = new Attacher(this);
        }
    }

    public Attacher getAttacher() {
        return this.mAttacher;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int iSave = canvas.save();
        if (this.mEnableDraweeMatrix) {
            canvas.concat(this.mAttacher.getDrawMatrix());
        }
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        init();
        super.onAttachedToWindow();
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        this.mAttacher.onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    public float getMinimumScale() {
        return this.mAttacher.getMinimumScale();
    }

    public float getMediumScale() {
        return this.mAttacher.getMediumScale();
    }

    public float getMaximumScale() {
        return this.mAttacher.getMaximumScale();
    }

    public void setMinimumScale(float f) {
        this.mAttacher.setMinimumScale(f);
    }

    public void setMediumScale(float f) {
        this.mAttacher.setMediumScale(f);
    }

    public void setMaximumScale(float f) {
        this.mAttacher.setMaximumScale(f);
    }

    public float getScale() {
        return this.mAttacher.getScale();
    }

    public void setScale(float f) {
        this.mAttacher.setScale(f);
    }

    public void setOrientation(int i) {
        this.mAttacher.setOrientation(i);
    }

    public void setZoomTransitionDuration(long j) {
        this.mAttacher.setZoomTransitionDuration(j);
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.mAttacher.setAllowParentInterceptOnEdge(z);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mAttacher.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void setOnScaleChangeListener(OnScaleChangeListener onScaleChangeListener) {
        this.mAttacher.setOnScaleChangeListener(onScaleChangeListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mAttacher.setOnLongClickListener(onLongClickListener);
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.mAttacher.setOnPhotoTapListener(onPhotoTapListener);
    }

    public void setOnViewTapListener(OnViewTapListener onViewTapListener) {
        this.mAttacher.setOnViewTapListener(onViewTapListener);
    }

    public OnPhotoTapListener getOnPhotoTapListener() {
        return this.mAttacher.getOnPhotoTapListener();
    }

    public OnViewTapListener getOnViewTapListener() {
        return this.mAttacher.getOnViewTapListener();
    }

    public void update(int i, int i2) {
        this.mAttacher.update(i, i2);
    }

    public void setEnableDraweeMatrix(boolean z) {
        this.mEnableDraweeMatrix = z;
    }

    public void setPhotoUri(Uri uri) {
        setPhotoUri(uri, null);
    }

    public void setPhotoUri(Uri uri, Context context) {
        this.mEnableDraweeMatrix = false;
        setController(Fresco.newDraweeControllerBuilder().setCallerContext((Object) context).setUri(uri).setOldController(getController()).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: me.relex.photodraweeview.PhotoDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFailure(String str, Throwable th) {
                super.onFailure(str, th);
                PhotoDraweeView.this.mEnableDraweeMatrix = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFinalImageSet(String str, ImageInfo imageInfo, Animatable animatable) {
                super.onFinalImageSet(str, imageInfo, animatable);
                PhotoDraweeView.this.mEnableDraweeMatrix = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.update(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onIntermediateImageFailed(String str, Throwable th) {
                super.onIntermediateImageFailed(str, th);
                PhotoDraweeView.this.mEnableDraweeMatrix = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onIntermediateImageSet(String str, ImageInfo imageInfo) {
                super.onIntermediateImageSet(str, imageInfo);
                PhotoDraweeView.this.mEnableDraweeMatrix = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.update(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }
        }).build());
    }
}
