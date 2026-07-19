package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicsOnboardingHeaderViewHolder_ViewBinding implements Unbinder {
    private TopicsOnboardingHeaderViewHolder target;
    private View view7f0b0192;

    public TopicsOnboardingHeaderViewHolder_ViewBinding(final TopicsOnboardingHeaderViewHolder topicsOnboardingHeaderViewHolder, View view) {
        this.target = topicsOnboardingHeaderViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.search_bar, "method 'onSearchBarClick'");
        this.view7f0b0192 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.onboarding.TopicsOnboardingHeaderViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicsOnboardingHeaderViewHolder.onSearchBarClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        if (this.target == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        this.view7f0b0192.setOnClickListener(null);
        this.view7f0b0192 = null;
    }
}
