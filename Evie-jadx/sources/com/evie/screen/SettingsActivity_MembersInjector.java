package com.evie.screen;

import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;

/* JADX INFO: loaded from: classes.dex */
public final class SettingsActivity_MembersInjector {
    public static void injectMAnalyticsHandler(SettingsActivity settingsActivity, AnalyticsHandler analyticsHandler) {
        settingsActivity.mAnalyticsHandler = analyticsHandler;
    }

    public static void injectMSideScreenRelatedContentModel(SettingsActivity settingsActivity, SideScreenRelatedContentModel sideScreenRelatedContentModel) {
        settingsActivity.mSideScreenRelatedContentModel = sideScreenRelatedContentModel;
    }

    public static void injectMSideScreenSharedPreferencesModel(SettingsActivity settingsActivity, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        settingsActivity.mSideScreenSharedPreferencesModel = sideScreenSharedPreferencesModel;
    }
}
