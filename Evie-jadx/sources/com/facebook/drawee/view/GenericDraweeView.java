package com.facebook.drawee.view;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder;
import com.facebook.drawee.generic.GenericDraweeHierarchyInflater;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class GenericDraweeView extends DraweeView<GenericDraweeHierarchy> {
    public GenericDraweeView(Context context) {
        super(context);
        inflateHierarchy(context, null);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        inflateHierarchy(context, attributeSet);
    }

    protected void inflateHierarchy(Context context, @Nullable AttributeSet attributeSet) {
        GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilderInflateBuilder = GenericDraweeHierarchyInflater.inflateBuilder(context, attributeSet);
        setAspectRatio(genericDraweeHierarchyBuilderInflateBuilder.getDesiredAspectRatio());
        setHierarchy(genericDraweeHierarchyBuilderInflateBuilder.build());
    }
}
