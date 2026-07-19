package com.evie.jigsaw.adapters.spacing;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface SpacingStrategy {
    public static final SpacingStrategy NO_SPACING = new SpacingStrategy() { // from class: com.evie.jigsaw.adapters.spacing.SpacingStrategy.1
        @Override // com.evie.jigsaw.adapters.spacing.SpacingStrategy
        public void space(View view, int i, int i2) {
        }
    };

    void space(View view, int i, int i2);
}
