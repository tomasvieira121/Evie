package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.functions.Consumer;
import java.util.Collections;
import java.util.List;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicsOnboardingBottomBarPresenter extends ItemPresenter<TopicsOnboardingBottomBarViewHolder> {
    private final Runnable mFinishRunnable;
    private final SideScreenSharedPreferencesModel mPreferencesModel;
    private final Runnable mSkipRunnable;
    private final TopicsModel mTopicsModel;

    public TopicsOnboardingBottomBarPresenter(Runnable runnable, Runnable runnable2, @Provided TopicsModel topicsModel, @Provided SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        this.mSkipRunnable = runnable;
        this.mFinishRunnable = runnable2;
        this.mTopicsModel = topicsModel;
        this.mPreferencesModel = sideScreenSharedPreferencesModel;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicsOnboardingBottomBarViewHolder.f339ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicsOnboardingBottomBarViewHolder createViewHolderInstance(View view) {
        return new TopicsOnboardingBottomBarViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicsOnboardingBottomBarViewHolder topicsOnboardingBottomBarViewHolder) {
        refreshFollowText();
        this.mDisposables.add(this.mPreferencesModel.observeSharedPreferenceChanges().subscribe(new Consumer() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingBottomBarPresenter$GtAzg0g50DqkNZPmIQTMCmhk_cE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicsOnboardingBottomBarPresenter.lambda$onBindViewHolder$0(this.f$0, (String) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(TopicsOnboardingBottomBarPresenter topicsOnboardingBottomBarPresenter, String str) throws Exception {
        if (str.equals("personalize_onboarding_saved_topics")) {
            topicsOnboardingBottomBarPresenter.refreshFollowText();
        }
    }

    private void refreshFollowText() {
        List<Topic> personalizeOnboardingList = this.mPreferencesModel.getPersonalizeOnboardingList();
        ((TopicsOnboardingBottomBarViewHolder) this.mViewHolder).setFollowEnabled(!personalizeOnboardingList.isEmpty());
        ((TopicsOnboardingBottomBarViewHolder) this.mViewHolder).setFollowCount(personalizeOnboardingList.size());
    }

    public void onSkip() {
        this.mSkipRunnable.run();
        this.mPreferencesModel.setPersonalizeOnboardingList(Collections.emptyList());
        this.mPreferencesModel.setHasFinishedPersonalizeOnboarding(true);
    }

    public void onFollowButton() {
        this.mFinishRunnable.run();
        this.mTopicsModel.followTopics(this.mPreferencesModel.getPersonalizeOnboardingList());
        this.mPreferencesModel.setPersonalizeOnboardingList(Collections.emptyList());
        this.mPreferencesModel.setHasFinishedPersonalizeOnboarding(true);
    }
}
