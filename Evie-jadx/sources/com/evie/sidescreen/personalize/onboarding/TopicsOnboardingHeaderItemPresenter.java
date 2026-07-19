package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.personalize.PersonalizeSearchActivity;

/* JADX INFO: loaded from: classes.dex */
public class TopicsOnboardingHeaderItemPresenter extends ItemPresenter<TopicsOnboardingHeaderViewHolder> {
    private ActivityStarter mActivityStarter;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicsOnboardingHeaderViewHolder topicsOnboardingHeaderViewHolder) {
    }

    public TopicsOnboardingHeaderItemPresenter(ActivityStarter activityStarter) {
        this.mActivityStarter = activityStarter;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicsOnboardingHeaderViewHolder.f340ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicsOnboardingHeaderViewHolder createViewHolderInstance(View view) {
        return new TopicsOnboardingHeaderViewHolder(view);
    }

    public void onSearchBarClick() {
        this.mActivityStarter.startActivity(null, this.mActivityStarter.getLocalActivityIntent(PersonalizeSearchActivity.class), false);
    }
}
