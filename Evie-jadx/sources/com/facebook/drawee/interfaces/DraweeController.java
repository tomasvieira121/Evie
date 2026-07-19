package com.facebook.drawee.interfaces;

import android.view.MotionEvent;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface DraweeController {
    @Nullable
    DraweeHierarchy getHierarchy();

    void onAttach();

    void onDetach();

    boolean onTouchEvent(MotionEvent motionEvent);

    void setHierarchy(@Nullable DraweeHierarchy draweeHierarchy);
}
