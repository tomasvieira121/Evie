package com.evie.jigsaw.services.images.models;

import android.content.Context;
import com.evie.jigsaw.R;
import com.facebook.drawee.generic.RoundingParams;

/* JADX INFO: loaded from: classes.dex */
public enum Rounding {
    circle(R.color.white, RoundingShape.CIRCLE),
    clear_circle(R.color.transparent, RoundingShape.CIRCLE),
    square(R.color.white, RoundingShape.SQUARE),
    clear_square(R.color.transparent, RoundingShape.SQUARE);

    private final int colorResource;
    private final RoundingShape shape;

    private enum RoundingShape {
        CIRCLE,
        SQUARE
    }

    Rounding(int i, RoundingShape roundingShape) {
        this.colorResource = i;
        this.shape = roundingShape;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public RoundingParams getParams(Context context, int i) {
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.setBorderColor(context.getResources().getColor(this.colorResource));
        roundingParams.setBorderWidth(i * 0.04f);
        switch (this.shape) {
            case CIRCLE:
                roundingParams.setRoundAsCircle(true);
                return roundingParams;
            case SQUARE:
                roundingParams.setCornersRadius(context.getResources().getDimensionPixelSize(R.dimen.image_rounding_border_radius));
                return roundingParams;
            default:
                return roundingParams;
        }
    }
}
