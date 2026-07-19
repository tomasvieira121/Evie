package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsViewHolder_ViewBinding implements Unbinder {
    private BreakingNewsViewHolder target;
    private View view7f0b0053;

    public BreakingNewsViewHolder_ViewBinding(final BreakingNewsViewHolder breakingNewsViewHolder, View view) {
        this.target = breakingNewsViewHolder;
        breakingNewsViewHolder.mSection = (ConstraintLayout) Utils.findRequiredViewAsType(view, R.id.breakingnews_section, "field 'mSection'", ConstraintLayout.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.breakingnews_dismiss, "method 'onDismiss'");
        this.view7f0b0053 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.prompts.breakingnews.BreakingNewsViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                breakingNewsViewHolder.onDismiss(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        BreakingNewsViewHolder breakingNewsViewHolder = this.target;
        if (breakingNewsViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        breakingNewsViewHolder.mSection = null;
        this.view7f0b0053.setOnClickListener(null);
        this.view7f0b0053 = null;
    }
}
