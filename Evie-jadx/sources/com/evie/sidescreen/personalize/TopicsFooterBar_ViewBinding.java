package com.evie.sidescreen.personalize;

import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicsFooterBar_ViewBinding implements Unbinder {
    private TopicsFooterBar target;
    private View view7f0b0071;

    public TopicsFooterBar_ViewBinding(final TopicsFooterBar topicsFooterBar, View view) {
        this.target = topicsFooterBar;
        topicsFooterBar.mListItemsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.list_items, "field 'mListItemsLayout'", LinearLayout.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.caret, "method 'onCaretExpandClick'");
        this.view7f0b0071 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.TopicsFooterBar_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicsFooterBar.onCaretExpandClick(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicsFooterBar topicsFooterBar = this.target;
        if (topicsFooterBar == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicsFooterBar.mListItemsLayout = null;
        this.view7f0b0071.setOnClickListener(null);
        this.view7f0b0071 = null;
    }
}
