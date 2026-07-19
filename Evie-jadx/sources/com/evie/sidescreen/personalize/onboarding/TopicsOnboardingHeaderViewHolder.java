package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TopicsOnboardingHeaderViewHolder extends MvpViewHolder<TopicsOnboardingHeaderItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f340ID = R.layout.ss_topics_onboarding_header_item;

    public TopicsOnboardingHeaderViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onSearchBarClick() {
        ((TopicsOnboardingHeaderItemPresenter) this.mPresenter).onSearchBarClick();
    }
}
