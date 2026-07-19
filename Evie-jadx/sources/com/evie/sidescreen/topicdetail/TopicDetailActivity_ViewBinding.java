package com.evie.sidescreen.topicdetail;

import android.view.View;
import android.widget.FrameLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailActivity_ViewBinding implements Unbinder {
    private TopicDetailActivity target;

    public TopicDetailActivity_ViewBinding(TopicDetailActivity topicDetailActivity, View view) {
        this.target = topicDetailActivity;
        topicDetailActivity.mPopupView = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.popup_view, "field 'mPopupView'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicDetailActivity topicDetailActivity = this.target;
        if (topicDetailActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicDetailActivity.mPopupView = null;
    }
}
