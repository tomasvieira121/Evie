package com.evie.jigsaw.adapters.spacing;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class VerticalListSpacingStrategy implements SpacingStrategy {
    private final int space;

    public VerticalListSpacingStrategy(int i) {
        this.space = i;
    }

    @Override // com.evie.jigsaw.adapters.spacing.SpacingStrategy
    public void space(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        boolean z = i == 0;
        boolean z2 = i == i2 - 1;
        int i3 = this.space;
        int i4 = i3 / 2;
        if (z && z2) {
            marginLayoutParams.bottomMargin = i3;
            return;
        }
        if (z) {
            marginLayoutParams.bottomMargin = i4;
        } else if (z2) {
            marginLayoutParams.topMargin = i4;
            marginLayoutParams.bottomMargin = this.space;
        } else {
            marginLayoutParams.topMargin = i4;
            marginLayoutParams.bottomMargin = i4;
        }
    }
}
