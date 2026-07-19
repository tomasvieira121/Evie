package com.evie.sidescreen.dagger;

import android.content.Context;
import android.os.Build;
import com.evie.common.AbTestConfiguration;
import com.evie.models.config.ConfigAPI;
import com.evie.models.config.ConfigModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenConfigurationModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import io.reactivex.disposables.CompositeDisposable;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConfigModule {
    static ConfigModel providesConfigModel(Retrofit retrofit) {
        return new ConfigModel((ConfigAPI) retrofit.newBuilder().build().create(ConfigAPI.class));
    }

    static AbTestConfigurationModel providesAbTestConfigurationModel(AbTestConfiguration abTestConfiguration, ConfigModel configModel, ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, AnalyticsHandler analyticsHandler, Context context, Integer num) {
        return new AbTestConfigurationModel(abTestConfiguration, configModel, activationModel, lifecycleCallbacks, analyticsHandler, num.intValue(), Build.MODEL, context.getPackageName());
    }

    static SideScreenConfigurationModel sideScreenConfigurationModel(ActivationModel activationModel, AbTestConfigurationModel abTestConfigurationModel, LifecycleCallbacks lifecycleCallbacks, SideScreenConfiguration sideScreenConfiguration, ConfigModel configModel, AnalyticsHandler analyticsHandler, Integer num, Context context, CompositeDisposable compositeDisposable, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        SideScreenConfigurationModel sideScreenConfigurationModel = new SideScreenConfigurationModel(activationModel, lifecycleCallbacks, abTestConfigurationModel, sideScreenConfiguration, configModel, analyticsHandler, num.intValue(), Build.MODEL, context.getPackageName(), sideScreenSharedPreferencesModel);
        compositeDisposable.add(sideScreenConfigurationModel);
        return sideScreenConfigurationModel;
    }
}
