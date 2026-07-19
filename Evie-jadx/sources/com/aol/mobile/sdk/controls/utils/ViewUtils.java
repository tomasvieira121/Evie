package com.aol.mobile.sdk.controls.utils;

import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.view.WindowManager;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class ViewUtils {
    public static <T extends View> T findView(View view, int i) {
        return (T) view.findViewById(i);
    }

    public static Point getDisplaySize(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getSize(point);
        return point;
    }

    public static boolean isVisible(View view) {
        return view.getVisibility() == 0;
    }

    public static void renderAvailability(boolean z, View view) {
        if (z != view.isEnabled()) {
            view.setAlpha(z ? 1.0f : 0.3f);
            view.setEnabled(z);
            view.setFocusable(z);
        }
    }

    public static void renderSeekerBufferProgress(int i, SeekBar seekBar) {
        int max = (i * seekBar.getMax()) / 100;
        if (seekBar.getSecondaryProgress() != max) {
            seekBar.setSecondaryProgress(max);
        }
    }

    public static void renderSeekerMaxValue(int i, SeekBar seekBar) {
        if (seekBar.getMax() != i) {
            seekBar.setMax(i);
        }
    }

    public static void renderSeekerProgress(double d, SeekBar seekBar) {
        double max = seekBar.getMax();
        Double.isNaN(max);
        int iRound = (int) Math.round(max * d);
        if (seekBar.getProgress() != iRound) {
            seekBar.setProgress(iRound);
        }
    }

    public static void renderSelectivity(boolean z, View view) {
        if (z != view.isSelected()) {
            view.setSelected(z);
        }
    }

    public static void renderText(CharSequence charSequence, TextView textView) {
        CharSequence text = textView.getText();
        if ((charSequence != null || text == null) && (charSequence == null || charSequence.equals(text))) {
            return;
        }
        textView.setText(charSequence);
    }

    public static void renderVisibility(boolean z, View view) {
        if (z != isVisible(view)) {
            set(view, z);
        }
    }

    public static void set(View view, boolean z) {
        view.setVisibility(z ? 0 : 4);
    }
}
