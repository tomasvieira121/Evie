package com.github.rahatarmanahmed.cpv;

/* JADX INFO: loaded from: classes.dex */
public interface CircularProgressViewListener {
    void onAnimationReset();

    void onModeChanged(boolean z);

    void onProgressUpdate(float f);

    void onProgressUpdateEnd(float f);
}
