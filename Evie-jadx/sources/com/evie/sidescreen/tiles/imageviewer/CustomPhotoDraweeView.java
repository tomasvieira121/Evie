package com.evie.sidescreen.tiles.imageviewer;

import android.content.Context;
import android.util.AttributeSet;
import me.relex.photodraweeview.PhotoDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class CustomPhotoDraweeView extends PhotoDraweeView {
    private int mImageInfoHeight;
    private int mImageInfoWidth;

    public CustomPhotoDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public int getImageInfoWidth() {
        return this.mImageInfoWidth;
    }

    public int getImageInfoHeight() {
        return this.mImageInfoHeight;
    }

    @Override // me.relex.photodraweeview.PhotoDraweeView
    public void update(int i, int i2) {
        this.mImageInfoWidth = i;
        this.mImageInfoHeight = i2;
        super.update(i, i2);
    }
}
