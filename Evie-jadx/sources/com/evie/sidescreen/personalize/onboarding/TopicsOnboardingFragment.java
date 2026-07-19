package com.evie.sidescreen.personalize.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.personalize.TopicsListViewHolder;
import dagger.android.support.AndroidSupportInjection;
import io.reactivex.disposables.CompositeDisposable;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class TopicsOnboardingFragment extends Fragment implements TopicItemPresenter.FollowStateChangedListener {
    private static final String EXTRA_SCREEN_INFO = TopicsOnboardingFragment.class.getName() + ".screenInfo";
    ActivityStarter mActivityStarter;
    SideScreenSharedPreferencesModel mPreferencesModel;
    private TopicsOnboardingPresenter mTopicsListPresenter;
    private TopicsListViewHolder mTopicsListViewHolder;
    private TopicsOnboardingBottomBarPresenter mTopicsOnboardingBottomBarPresenter;
    TopicsOnboardingBottomBarPresenterFactory mTopicsOnboardingBottomBarPresenterFactory;
    private TopicsOnboardingBottomBarViewHolder mTopicsOnboardingBottomBarViewHolder;
    TopicsOnboardingPresenterFactory mTopicsOnboardingPresenterFactory;
    private CompositeDisposable mDisposable = new CompositeDisposable();
    private Runnable mSkipRunnable = new Runnable() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingFragment$nLo4Lv3BcWnTgf_FrZji5-oaHKU
        @Override // java.lang.Runnable
        public final void run() {
            TopicsOnboardingFragment.lambda$new$0(this.f$0);
        }
    };
    private Runnable mFinishRunnable = new Runnable() { // from class: com.evie.sidescreen.personalize.onboarding.-$$Lambda$TopicsOnboardingFragment$4eRdGZuQMHcWjRmhUUNJfijO8nI
        @Override // java.lang.Runnable
        public final void run() {
            TopicsOnboardingFragment.lambda$new$1(this.f$0);
        }
    };

    @Override // com.evie.sidescreen.personalize.TopicItemPresenter.FollowStateChangedListener
    public void onFollowStateChanged(TopicItemPresenter topicItemPresenter) {
    }

    public static /* synthetic */ void lambda$new$0(TopicsOnboardingFragment topicsOnboardingFragment) {
        if (topicsOnboardingFragment.getActivity() != null) {
            topicsOnboardingFragment.getActivity().finish();
        }
    }

    public static /* synthetic */ void lambda$new$1(TopicsOnboardingFragment topicsOnboardingFragment) {
        if (topicsOnboardingFragment.getActivity() != null) {
            topicsOnboardingFragment.getActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        this.mPreferencesModel.setPersonalizeOnboardingList(Collections.emptyList());
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ss_topics_onboarding_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ListTopicsRequestOptions listTopicsRequestOptions = new ListTopicsRequestOptions();
        listTopicsRequestOptions.setLimit(100);
        this.mTopicsListPresenter = this.mTopicsOnboardingPresenterFactory.create(listTopicsRequestOptions, true, this, new ScreenInfo("personalize_onboarding", null, null));
        this.mTopicsListViewHolder = new TopicsListViewHolder(view);
        this.mTopicsListViewHolder.bindPresenter(this.mTopicsListPresenter);
        this.mTopicsListPresenter.bindViewHolder(this.mTopicsListViewHolder);
        TopicsOnboardingBottomBarPresenterFactory topicsOnboardingBottomBarPresenterFactory = this.mTopicsOnboardingBottomBarPresenterFactory;
        Runnable runnable = this.mSkipRunnable;
        this.mTopicsOnboardingBottomBarPresenter = topicsOnboardingBottomBarPresenterFactory.create(runnable, runnable);
        this.mTopicsOnboardingBottomBarViewHolder = new TopicsOnboardingBottomBarViewHolder(view);
        this.mTopicsOnboardingBottomBarViewHolder.bindPresenter(this.mTopicsOnboardingBottomBarPresenter);
        this.mTopicsOnboardingBottomBarPresenter.bindViewHolder(this.mTopicsOnboardingBottomBarViewHolder);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mTopicsListPresenter.load();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mTopicsListPresenter.dispose();
        this.mTopicsListPresenter = null;
        this.mTopicsListViewHolder = null;
        this.mTopicsOnboardingBottomBarPresenter.dispose();
        this.mTopicsOnboardingBottomBarPresenter = null;
        this.mTopicsOnboardingBottomBarViewHolder = null;
        this.mDisposable.dispose();
    }
}
