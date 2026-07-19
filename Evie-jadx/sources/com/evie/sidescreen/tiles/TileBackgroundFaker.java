package com.evie.sidescreen.tiles;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.evie.sidescreen.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TileBackgroundFaker extends ViewGroup {
    private final Rect mBounds;
    private final ArrayList<View> mCacheViews;
    private int mRadius;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    public TileBackgroundFaker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBounds = new Rect();
        this.mCacheViews = new ArrayList<>();
        init(context);
    }

    private void init(Context context) {
        this.mRadius = context.getResources().getDimensionPixelSize(R.dimen.ss_image_rounded_corner_radius);
    }
}
