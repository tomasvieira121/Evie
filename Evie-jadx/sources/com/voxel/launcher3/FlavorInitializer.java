package com.voxel.launcher3;

import android.content.Context;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.core.CrashlyticsCore;
import com.evie.models.frequentlyused.FrequentlyUsedAnalyticsFilter;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsFilterChain;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.analytics.LauncherAnalyticsFilter;
import com.voxel.simplesearchlauncher.dagger.LauncherAppComponent;
import com.voxel.simplesearchlauncher.iconpack.IconPackManager;
import com.voxel.simplesearchlauncher.model.AppsInfoIconFilter;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller;
import io.fabric.sdk.android.Fabric;
import javax.inject.Provider;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public class FlavorInitializer {
    private final AnalyticsFilterChain mAnalyticsFilterChain = new AnalyticsFilterChain();
    AnalyticsModel mAnalyticsModel;
    private final Context mContext;
    FrequentlyUsedModel mFrequentlyUsedModel;
    Provider<AppsInfoIconFilter> mIconFilterProvider;
    IconPackManager mIconPackManager;
    ConnectionPoolKiller mKiller;
    LauncherAppComponent mLauncherAppComponent;
    OkHttpClient mOkHttpClient;
    SettingsStorage mSettingsStorage;

    public FlavorInitializer(Context context) {
        this.mContext = context;
    }

    public void fabricInit() {
        Fabric.with(this.mContext, new Crashlytics.Builder().core(new CrashlyticsCore.Builder().disabled(((BaseApplication) this.mContext.getApplicationContext()).isDebugBuild()).build()).build());
        Crashlytics.log("Installer package name: " + this.mContext.getPackageManager().getInstallerPackageName(this.mContext.getPackageName()));
        new MemoryCrashHandler().initPostFabric(this.mContext.getApplicationContext());
    }

    public void preDaggerInit() {
        this.mAnalyticsFilterChain.addFilter(new LauncherAnalyticsFilter());
        AnalyticsHandler.init(this.mContext, this.mAnalyticsFilterChain);
    }

    public void postDaggerInit() {
        LauncherApplication.getInjector(this.mContext).getLauncherAppComponent().inject(this);
        this.mAnalyticsFilterChain.addFilter(new FrequentlyUsedAnalyticsFilter(this.mFrequentlyUsedModel));
        this.mKiller.registerReceiver();
    }
}
