package com.evie.sidescreen.personalize.onboarding;

import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.personalize.BaseFollowButtonHandler;
import com.evie.sidescreen.personalize.FollowButtonViewHolder;
import com.evie.sidescreen.personalize.FollowState;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.disposables.CompositeDisposable;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class FollowButtonOnboardingHandler extends BaseFollowButtonHandler {
    private final SideScreenSharedPreferencesModel mSharedPreferencesModel;

    public FollowButtonOnboardingHandler(FollowState followState, CompositeDisposable compositeDisposable, @Provided SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel, @Provided AnalyticsModel analyticsModel) {
        super(followState, compositeDisposable, analyticsModel);
        this.mSharedPreferencesModel = sideScreenSharedPreferencesModel;
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleFollow(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mSharedPreferencesModel.addToPersonalizeOnboardingList(topic);
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleUnfollow(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mSharedPreferencesModel.removeFromPersonalizeOnboardingList(topic);
    }

    @Override // com.evie.sidescreen.personalize.BaseFollowButtonHandler
    protected void onHandleUnblock(FollowButtonViewHolder followButtonViewHolder, Topic topic) {
        this.mSharedPreferencesModel.removeFromPersonalizeOnboardingList(topic);
    }
}
