package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import com.evie.config.LauncherConfigModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.model.managers.UserProfileManager;
import dagger.Lazy;

/* JADX INFO: loaded from: classes2.dex */
public class SingletonsModule {
    public AnalyticsHandler providesAnalyticsHandler() {
        return AnalyticsHandler.getInstance();
    }

    public LocationHandler providesLocationHandler() {
        return LocationHandler.getInstance();
    }

    public UserProfileManager providesUserProfileManager() {
        return UserProfileManager.getInstance();
    }

    public SettingsStorage providesSettingsStorage(Context context, Lazy<LauncherConfigModel> lazy) {
        SettingsStorage.init(context, lazy);
        return SettingsStorage.getInstance();
    }
}
