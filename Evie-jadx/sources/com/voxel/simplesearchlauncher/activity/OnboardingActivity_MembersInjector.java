package com.voxel.simplesearchlauncher.activity;

import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;

/* JADX INFO: loaded from: classes.dex */
public final class OnboardingActivity_MembersInjector {
    public static void injectMLayoutSettingsManager(OnboardingActivity onboardingActivity, LayoutSettingsManager layoutSettingsManager) {
        onboardingActivity.mLayoutSettingsManager = layoutSettingsManager;
    }
}
