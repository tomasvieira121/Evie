package com.facebook.drawee.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.R;
import com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class SimpleDraweeView extends GenericDraweeView {
    private static Supplier<? extends SimpleDraweeControllerBuilder> sDraweeControllerBuilderSupplier;
    private SimpleDraweeControllerBuilder mSimpleDraweeControllerBuilder;

    public static void initialize(Supplier<? extends SimpleDraweeControllerBuilder> supplier) {
        sDraweeControllerBuilderSupplier = supplier;
    }

    public SimpleDraweeView(Context context) {
        super(context);
        init(context, null);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    private void init(Context context, @Nullable AttributeSet attributeSet) {
        int resourceId;
        if (isInEditMode()) {
            return;
        }
        Preconditions.checkNotNull(sDraweeControllerBuilderSupplier, "SimpleDraweeView was not initialized!");
        this.mSimpleDraweeControllerBuilder = sDraweeControllerBuilderSupplier.get();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SimpleDraweeView);
            try {
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SimpleDraweeView_actualImageUri)) {
                    setImageURI(Uri.parse(typedArrayObtainStyledAttributes.getString(R.styleable.SimpleDraweeView_actualImageUri)), (Object) null);
                } else if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SimpleDraweeView_actualImageResource) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SimpleDraweeView_actualImageResource, -1)) != -1) {
                    setActualImageResource(resourceId);
                }
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    protected SimpleDraweeControllerBuilder getControllerBuilder() {
        return this.mSimpleDraweeControllerBuilder;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setImageURI(@Nullable String str) {
        setImageURI(str, (Object) null);
    }

    public void setImageURI(Uri uri, @Nullable Object obj) {
        setController(this.mSimpleDraweeControllerBuilder.setCallerContext(obj).setUri(uri).setOldController(getController()).build());
    }

    public void setImageURI(@Nullable String str, @Nullable Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }

    public void setActualImageResource(int i) {
        setActualImageResource(i, null);
    }

    public void setActualImageResource(int i, @Nullable Object obj) {
        setImageURI(UriUtil.getUriForResourceId(i), obj);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
    }
}
