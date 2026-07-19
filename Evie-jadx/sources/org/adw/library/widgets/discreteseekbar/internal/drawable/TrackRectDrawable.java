package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes2.dex */
public class TrackRectDrawable extends StateDrawable {
    public TrackRectDrawable(ColorStateList colorStateList) {
        super(colorStateList);
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.StateDrawable
    void doDraw(Canvas canvas, Paint paint) {
        canvas.drawRect(getBounds(), paint);
    }
}
