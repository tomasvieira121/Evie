package com.evie.sidescreen.background;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class BottomFadingImageView extends ImageView {
    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 1.0f;
    }

    public BottomFadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
