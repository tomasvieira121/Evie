package com.evie.jigsaw.listeners;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.evie.common.services.analytics.models.CloseMethod;
import com.evie.jigsaw.JigsawActivity;

/* JADX INFO: loaded from: classes.dex */
public final class FinishingOnClickListener implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context = view.getContext();
        if (context instanceof JigsawActivity) {
            ((JigsawActivity) context).finish(CloseMethod.VIEW_TOUCH);
        } else if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }
}
