package me.relex.photodraweeview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.DraweeView;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultOnDoubleTapListener implements GestureDetector.OnDoubleTapListener {
    protected Attacher mAttacher;

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public DefaultOnDoubleTapListener(Attacher attacher) {
        setPhotoDraweeViewAttacher(attacher);
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        DraweeView<GenericDraweeHierarchy> draweeView;
        RectF displayRect;
        Attacher attacher = this.mAttacher;
        if (attacher == null || (draweeView = attacher.getDraweeView()) == null) {
            return false;
        }
        if (this.mAttacher.getOnPhotoTapListener() != null && (displayRect = this.mAttacher.getDisplayRect()) != null) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (displayRect.contains(x, y)) {
                this.mAttacher.getOnPhotoTapListener().onPhotoTap(draweeView, (x - displayRect.left) / displayRect.width(), (y - displayRect.top) / displayRect.height());
                return true;
            }
        }
        if (this.mAttacher.getOnViewTapListener() == null) {
            return false;
        }
        this.mAttacher.getOnViewTapListener().onViewTap(draweeView, motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        Attacher attacher = this.mAttacher;
        if (attacher == null) {
            return false;
        }
        try {
            float scale = attacher.getScale();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (scale < this.mAttacher.getMediumScale()) {
                this.mAttacher.setScale(this.mAttacher.getMediumScale(), x, y, true);
            } else if (scale >= this.mAttacher.getMediumScale() && scale < this.mAttacher.getMaximumScale()) {
                this.mAttacher.setScale(this.mAttacher.getMaximumScale(), x, y, true);
            } else {
                this.mAttacher.setScale(this.mAttacher.getMinimumScale(), x, y, true);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    public void setPhotoDraweeViewAttacher(Attacher attacher) {
        this.mAttacher = attacher;
    }
}
