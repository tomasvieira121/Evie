package com.evie.sidescreen.dagger;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.evie.common.AbTestConfiguration;
import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.AnnouncementAPI;
import com.evie.models.announcement.AnnouncementModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementModule {
    public AnnouncementModel providesAnnouncementModel(Context context, Retrofit retrofit, AnalyticsHandler analyticsHandler, PromptStoreModel promptStoreModel, Integer num, AbTestConfiguration abTestConfiguration) {
        String packageName = ((Application) context.getApplicationContext()).getPackageName();
        return new AnnouncementModel((AnnouncementAPI) retrofit.create(AnnouncementAPI.class), analyticsHandler.getDistinctUserId(), packageName, promptStoreModel, num.intValue(), Build.MODEL, abTestConfiguration);
    }
}
