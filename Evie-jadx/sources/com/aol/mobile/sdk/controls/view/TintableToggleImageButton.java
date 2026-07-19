package com.aol.mobile.sdk.controls.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import com.aol.mobile.sdk.annotations.PrivateApi;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public class TintableToggleImageButton extends TintableImageButton {
    public TintableToggleImageButton(Context context) {
        this(context, null);
    }

    public TintableToggleImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintableToggleImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.aol.mobile.sdk.controls.view.TintableImageButton, android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        setColorFilter(getColorFor(getDrawableState()), PorterDuff.Mode.MULTIPLY);
    }

    @Override // com.aol.mobile.sdk.controls.view.TintableImageButton
    protected int getColorFor(int[] iArr) {
        for (int i : iArr) {
            if (i == 16842913) {
                return this.accentColor;
            }
        }
        return this.mainColor;
    }
}
