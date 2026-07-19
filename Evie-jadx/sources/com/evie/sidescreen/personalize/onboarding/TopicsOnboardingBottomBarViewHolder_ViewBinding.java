package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicsOnboardingBottomBarViewHolder_ViewBinding implements Unbinder {
    private TopicsOnboardingBottomBarViewHolder target;
    private View view7f0b0061;
    private View view7f0b01af;

    public TopicsOnboardingBottomBarViewHolder_ViewBinding(final TopicsOnboardingBottomBarViewHolder topicsOnboardingBottomBarViewHolder, View view) {
        this.target = topicsOnboardingBottomBarViewHolder;
        topicsOnboardingBottomBarViewHolder.mBottomBarContainer = Utils.findRequiredView(view, R.id.bottom_bar_container, "field 'mBottomBarContainer'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.button, "field 'mFollowButton' and method 'onFollowButtonClick'");
        topicsOnboardingBottomBarViewHolder.mFollowButton = (TextView) Utils.castView(viewFindRequiredView, R.id.button, "field 'mFollowButton'", TextView.class);
        this.view7f0b0061 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.onboarding.TopicsOnboardingBottomBarViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicsOnboardingBottomBarViewHolder.onFollowButtonClick();
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.skip, "method 'onSkipClick'");
        this.view7f0b01af = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.personalize.onboarding.TopicsOnboardingBottomBarViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                topicsOnboardingBottomBarViewHolder.onSkipClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicsOnboardingBottomBarViewHolder topicsOnboardingBottomBarViewHolder = this.target;
        if (topicsOnboardingBottomBarViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicsOnboardingBottomBarViewHolder.mBottomBarContainer = null;
        topicsOnboardingBottomBarViewHolder.mFollowButton = null;
        this.view7f0b0061.setOnClickListener(null);
        this.view7f0b0061 = null;
        this.view7f0b01af.setOnClickListener(null);
        this.view7f0b01af = null;
    }
}
