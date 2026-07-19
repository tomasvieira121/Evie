package com.evie.sidescreen.personalize.onboarding;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsOnboardingFragment_MembersInjector {
    public static void injectMTopicsOnboardingPresenterFactory(TopicsOnboardingFragment topicsOnboardingFragment, TopicsOnboardingPresenterFactory topicsOnboardingPresenterFactory) {
        topicsOnboardingFragment.mTopicsOnboardingPresenterFactory = topicsOnboardingPresenterFactory;
    }

    public static void injectMTopicsOnboardingBottomBarPresenterFactory(TopicsOnboardingFragment topicsOnboardingFragment, TopicsOnboardingBottomBarPresenterFactory topicsOnboardingBottomBarPresenterFactory) {
        topicsOnboardingFragment.mTopicsOnboardingBottomBarPresenterFactory = topicsOnboardingBottomBarPresenterFactory;
    }

    public static void injectMPreferencesModel(TopicsOnboardingFragment topicsOnboardingFragment, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        topicsOnboardingFragment.mPreferencesModel = sideScreenSharedPreferencesModel;
    }

    public static void injectMActivityStarter(TopicsOnboardingFragment topicsOnboardingFragment, ActivityStarter activityStarter) {
        topicsOnboardingFragment.mActivityStarter = activityStarter;
    }
}
