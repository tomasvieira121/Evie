package com.evie.sidescreen.dagger;

import android.app.Application;
import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.evie.models.sidescreen.SideScreenContentAPI;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenContentModule {
    public int providesSidescreenApiVersionCode() {
        return 2;
    }

    public SideScreenContentAPI providesSideScreenContentAPI(OkHttpClient okHttpClient, Retrofit retrofit) {
        return (SideScreenContentAPI) retrofit.create(SideScreenContentAPI.class);
    }

    public SideScreenRelatedContentModel providesSideScreenRelatedContentModel(Context context, SideScreenContentAPI sideScreenContentAPI, Integer num, AbTestConfiguration abTestConfiguration, AnalyticsHandler analyticsHandler, LocationHandler locationHandler) {
        return new SideScreenRelatedContentModel(sideScreenContentAPI, 2, abTestConfiguration, analyticsHandler, locationHandler, ((Application) context.getApplicationContext()).getPackageName(), num.intValue());
    }
}
