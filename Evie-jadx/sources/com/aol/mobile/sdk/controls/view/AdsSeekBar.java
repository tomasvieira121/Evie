package com.aol.mobile.sdk.controls.view;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.aol.mobile.sdk.controls.C0234R;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AdsSeekBar extends SeekBar {

    /* JADX INFO: renamed from: a */
    private Paint f79a;

    /* JADX INFO: renamed from: b */
    private Set<Double> f80b;

    public AdsSeekBar(Context context) {
        this(context, null);
    }

    public AdsSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdsSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f79a = new Paint();
        this.f79a.setFlags(1);
        this.f79a.setColor(getResources().getColor(C0234R.color.default_accent_color));
    }

    /* JADX INFO: renamed from: a */
    private void m37a() {
        LayerDrawable layerDrawable = (LayerDrawable) getProgressDrawable();
        Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.background);
        int iHeight = drawableFindDrawableByLayerId.getBounds().height();
        int iWidth = drawableFindDrawableByLayerId.getBounds().width();
        float dimension = getResources().getDimension(C0234R.dimen.ad_mark_radius);
        if (iWidth == 0 || iHeight == 0) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidth, iHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Set<Double> set = this.f80b;
        if (set != null && set.size() != 0) {
            Iterator<Double> it = this.f80b.iterator();
            while (it.hasNext()) {
                double dDoubleValue = it.next().doubleValue();
                double d = iWidth;
                Double.isNaN(d);
                canvas.drawCircle((float) (dDoubleValue * d), iHeight / 2, dimension, this.f79a);
            }
        }
        layerDrawable.setDrawableByLayerId(C0234R.id.ad_marks, new BitmapDrawable(getResources(), bitmapCreateBitmap));
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m37a();
        }
    }

    public void renderAdCues(Set<Double> set) {
        if (set.equals(this.f80b)) {
            return;
        }
        this.f80b = new HashSet(set);
        m37a();
    }
}
