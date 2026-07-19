package com.aol.mobile.sdk.controls.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.aol.mobile.sdk.annotations.PrivateApi;
import com.aol.mobile.sdk.controls.C0234R;
import com.aol.mobile.sdk.controls.Themed;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public class TintableImageButton extends ImageButton implements Themed {
    protected int accentColor;
    protected int mainColor;

    public TintableImageButton(Context context) {
        this(context, null);
    }

    public TintableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mainColor = context.getResources().getColor(C0234R.color.default_main_color);
        this.accentColor = context.getResources().getColor(C0234R.color.default_accent_color);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0234R.styleable.TintableImageButton, i, 0);
            try {
                this.mainColor = typedArrayObtainStyledAttributes.getColor(C0234R.styleable.TintableImageButton_mainColor, this.mainColor);
                this.accentColor = typedArrayObtainStyledAttributes.getColor(C0234R.styleable.TintableImageButton_accentColor, this.accentColor);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        drawableStateChanged();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        setColorFilter(getColorFor(getDrawableState()), PorterDuff.Mode.MULTIPLY);
    }

    protected int getColorFor(int[] iArr) {
        for (int i : iArr) {
            if (i == 16842908 || i == 16842913 || i == 16842919) {
                return this.accentColor;
            }
        }
        return this.mainColor;
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setAccentColor(int i) {
        this.accentColor = i;
        drawableStateChanged();
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setMainColor(int i) {
        this.mainColor = i;
        drawableStateChanged();
    }
}
