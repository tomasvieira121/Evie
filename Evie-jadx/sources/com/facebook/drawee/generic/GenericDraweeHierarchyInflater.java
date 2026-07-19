package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.R;
import com.facebook.drawee.drawable.AutoRotateDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.infer.annotation.ReturnsOwnership;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class GenericDraweeHierarchyInflater {
    public static GenericDraweeHierarchyBuilder inflateBuilder(Context context, @Nullable AttributeSet attributeSet) {
        return updateBuilder(new GenericDraweeHierarchyBuilder(context.getResources()), context, attributeSet);
    }

    public static GenericDraweeHierarchyBuilder updateBuilder(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder, Context context, @Nullable AttributeSet attributeSet) {
        int dimensionPixelSize;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        int i = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GenericDraweeHierarchy);
            try {
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                int integer = 0;
                dimensionPixelSize = 0;
                boolean z5 = true;
                z = true;
                z2 = true;
                z3 = true;
                for (int i2 = 0; i2 < indexCount; i2++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i2);
                    if (index == R.styleable.GenericDraweeHierarchy_actualImageScaleType) {
                        genericDraweeHierarchyBuilder.setActualImageScaleType(getScaleTypeFromXml(typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImage) {
                        genericDraweeHierarchyBuilder.setPlaceholderImage(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_pressedStateOverlayImage) {
                        genericDraweeHierarchyBuilder.setPressedStateOverlay(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImage) {
                        genericDraweeHierarchyBuilder.setProgressBarImage(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_fadeDuration) {
                        genericDraweeHierarchyBuilder.setFadeDuration(typedArrayObtainStyledAttributes.getInt(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_viewAspectRatio) {
                        genericDraweeHierarchyBuilder.setDesiredAspectRatio(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                    } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImageScaleType) {
                        genericDraweeHierarchyBuilder.setPlaceholderImageScaleType(getScaleTypeFromXml(typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_retryImage) {
                        genericDraweeHierarchyBuilder.setRetryImage(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_retryImageScaleType) {
                        genericDraweeHierarchyBuilder.setRetryImageScaleType(getScaleTypeFromXml(typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_failureImage) {
                        genericDraweeHierarchyBuilder.setFailureImage(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_failureImageScaleType) {
                        genericDraweeHierarchyBuilder.setFailureImageScaleType(getScaleTypeFromXml(typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImageScaleType) {
                        genericDraweeHierarchyBuilder.setProgressBarImageScaleType(getScaleTypeFromXml(typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                        integer = typedArrayObtainStyledAttributes.getInteger(index, integer);
                    } else if (index == R.styleable.GenericDraweeHierarchy_backgroundImage) {
                        genericDraweeHierarchyBuilder.setBackground(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_overlayImage) {
                        genericDraweeHierarchyBuilder.setOverlay(getDrawable(context, typedArrayObtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundAsCircle) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setRoundAsCircle(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundedCornerRadius) {
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundTopLeft) {
                        z5 = typedArrayObtainStyledAttributes.getBoolean(index, z5);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundTopRight) {
                        z = typedArrayObtainStyledAttributes.getBoolean(index, z);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomLeft) {
                        z3 = typedArrayObtainStyledAttributes.getBoolean(index, z3);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomRight) {
                        z2 = typedArrayObtainStyledAttributes.getBoolean(index, z2);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundWithOverlayColor) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setOverlayColor(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderWidth) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setBorderWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderColor) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setBorderColor(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderPadding) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
                i = integer;
                z4 = z5;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            dimensionPixelSize = 0;
            z = true;
            z2 = true;
            z3 = true;
        }
        if (genericDraweeHierarchyBuilder.getProgressBarImage() != null && i > 0) {
            genericDraweeHierarchyBuilder.setProgressBarImage(new AutoRotateDrawable(genericDraweeHierarchyBuilder.getProgressBarImage(), i));
        }
        if (dimensionPixelSize > 0) {
            getRoundingParams(genericDraweeHierarchyBuilder).setCornersRadii(z4 ? dimensionPixelSize : 0.0f, z ? dimensionPixelSize : 0.0f, z2 ? dimensionPixelSize : 0.0f, z3 ? dimensionPixelSize : 0.0f);
        }
        return genericDraweeHierarchyBuilder;
    }

    @ReturnsOwnership
    private static RoundingParams getRoundingParams(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder) {
        if (genericDraweeHierarchyBuilder.getRoundingParams() == null) {
            genericDraweeHierarchyBuilder.setRoundingParams(new RoundingParams());
        }
        return genericDraweeHierarchyBuilder.getRoundingParams();
    }

    @Nullable
    private static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static ScalingUtils.ScaleType getScaleTypeFromXml(TypedArray typedArray, int i) {
        switch (typedArray.getInt(i, -2)) {
            case -1:
                return null;
            case 0:
                return ScalingUtils.ScaleType.FIT_XY;
            case 1:
                return ScalingUtils.ScaleType.FIT_START;
            case 2:
                return ScalingUtils.ScaleType.FIT_CENTER;
            case 3:
                return ScalingUtils.ScaleType.FIT_END;
            case 4:
                return ScalingUtils.ScaleType.CENTER;
            case 5:
                return ScalingUtils.ScaleType.CENTER_INSIDE;
            case 6:
                return ScalingUtils.ScaleType.CENTER_CROP;
            case 7:
                return ScalingUtils.ScaleType.FOCUS_CROP;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
