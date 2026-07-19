package com.evie.sidescreen.personalize.onboarding;

import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
class TopicsOnboardingBottomBarViewHolder extends MvpViewHolder<TopicsOnboardingBottomBarPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f339ID = R.layout.ss_topics_onboarding_bottom_bar;

    @BindView
    View mBottomBarContainer;

    @BindView
    TextView mFollowButton;

    static /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        return true;
    }

    public TopicsOnboardingBottomBarViewHolder(View view) {
        super(view);
        this.mBottomBarContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingBottomBarViewHolder$zIKVJ0VXjjLRmHcZsTChjyfYCag
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return TopicsOnboardingBottomBarViewHolder.lambda$new$0(view2, motionEvent);
            }
        });
    }

    @OnClick
    public void onSkipClick() {
        ((TopicsOnboardingBottomBarPresenter) this.mPresenter).onSkip();
    }

    @OnClick
    public void onFollowButtonClick() {
        ((TopicsOnboardingBottomBarPresenter) this.mPresenter).onFollowButton();
    }

    public void setFollowEnabled(boolean z) {
        this.mFollowButton.setEnabled(z);
        this.mFollowButton.setAlpha(z ? 1.0f : 0.5f);
    }

    public void setFollowCount(int i) {
        if (i == 0) {
            this.mFollowButton.setText(this.itemView.getResources().getString(R.string.ss_follow_zero_count));
        } else {
            this.mFollowButton.setText(this.itemView.getResources().getQuantityString(R.plurals.ss_follow_count, i, Integer.valueOf(i)));
        }
    }
}
