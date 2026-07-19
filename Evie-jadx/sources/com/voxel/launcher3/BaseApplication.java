package com.voxel.launcher3;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.multidex.MultiDex;
import com.crashlytics.android.Crashlytics;
import com.evie.common.iconpack.IconPackFilter;
import com.evie.common.utils.MemoryWatcher;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.JigsawInjector;
import com.facebook.common.soloader.SoLoaderShim;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.getkeepsafe.relinker.ReLinker;
import com.squareup.leakcanary.LeakCanary;
import com.squareup.leakcanary.RefWatcher;
import com.voxel.launcher3.fresco.ConservativeBitmapCacheConfigSupplier;
import com.voxel.launcher3.fresco.HybridNetworkFetcher;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent;
import com.voxel.simplesearchlauncher.dagger.Injector;
import com.voxel.simplesearchlauncher.dagger.LauncherAppComponent;
import com.voxel.simplesearchlauncher.iconpack.IconPackManager;
import com.voxel.simplesearchlauncher.model.AppsInfoIconFilter;
import com.voxel.simplesearchlauncher.model.AppsInfoProvider;
import com.voxel.simplesearchlauncher.model.LocalAppsUpdateReceiver;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.model.managers.UserProfileManager;
import com.voxel.simplesearchlauncher.utils.DebugUtil;
import com.voxel.simplesearchlauncher.utils.MemoryRegistry;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasActivityInjector;
import dagger.android.HasServiceInjector;
import dagger.android.support.HasSupportFragmentInjector;
import java.util.List;
import javax.inject.Provider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"Registered"})
public class BaseApplication extends Application implements JigsawInjector, Injector, HasActivityInjector, HasServiceInjector, HasSupportFragmentInjector {
    private static final String TAG = "BaseApplication";
    private static BaseApplication sApplication;
    private static RefWatcher sRefWatcher;
    private LauncherAppComponent launcherAppComponent;
    DispatchingAndroidInjector<Activity> mActivityInjector;
    AnalyticsHandler mAnalyticsHandler;
    private long mAppStartTime;
    Provider<HybridNetworkFetcher> mHybridNetworkFetcherProvider;
    Provider<AppsInfoIconFilter> mIconFilterProvider;
    IconPackManager mIconPackManager;
    private Boolean mIsDebugBuild;
    Jigsaw mJigsaw;
    MemoryRegistry mMemoryRegistry;
    DispatchingAndroidInjector<Service> mServiceInjector;
    SettingsStorage mSettingsStorage;
    DispatchingAndroidInjector<Fragment> mSupportFragmentInjector;

    @Override // android.app.Application
    public void onCreate() {
        if (LeakCanary.isInAnalyzerProcess(this)) {
            super.onCreate();
            return;
        }
        if (isDebugBuild()) {
            Timber.plant(new Timber.DebugTree());
        }
        sApplication = this;
        AppsInfoProvider.setApplicationContext(this);
        DebugUtil.addVoxelDebugSyncLog("DEBUG-HOME-DELAY", "**** LauncherApplication.onCreate() - Starting launcher process ****");
        this.mAppStartTime = SystemClock.elapsedRealtime();
        super.onCreate();
        FlavorInitializer flavorInitializer = new FlavorInitializer(getApplicationContext());
        flavorInitializer.fabricInit();
        sRefWatcher = installLeakCanary();
        LocationHandler.init(getApplicationContext());
        flavorInitializer.preDaggerInit();
        setup();
        Crashlytics.setUserIdentifier(this.mAnalyticsHandler.getDistinctUserId());
        flavorInitializer.postDaggerInit();
        Timber.m551d("STARTUP-PERFORMANCE", "* Launcher Application onCreate() total time: " + (SystemClock.elapsedRealtime() - this.mAppStartTime));
        Timber.m551d(TAG, "onCreate end");
    }

    protected RefWatcher installLeakCanary() {
        return RefWatcher.DISABLED;
    }

    public boolean isDebugBuild() {
        if (this.mIsDebugBuild == null) {
            this.mIsDebugBuild = false;
            Timber.m551d(TAG, "BuildConfig.DEBUG " + this.mIsDebugBuild);
        }
        return this.mIsDebugBuild.booleanValue();
    }

    private void setup() {
        UserProfileManager.init(getApplicationContext());
        LauncherAppState.setApplicationContext(getApplicationContext());
        LauncherAppState.getInstance();
        setupGraph();
        this.launcherAppComponent.inject(this);
        LauncherAppState.getInstance().getIconCache().setAppsInfoIconFilter(this.mIconFilterProvider.get());
        String currentIconPackPackageName = this.mIconPackManager.getCurrentIconPackPackageName();
        int currentIconPackVersionCode = this.mIconPackManager.getCurrentIconPackVersionCode();
        if (!TextUtils.isEmpty(currentIconPackPackageName)) {
            LauncherAppState.getInstance().getIconCache().setIconPackFilter(new IconPackFilter(getApplicationContext(), currentIconPackPackageName, currentIconPackVersionCode));
        }
        this.launcherAppComponent.inject(LauncherAppState.getInstance());
        this.launcherAppComponent.inject(LauncherAppState.getInstance().getModel());
        LauncherAppState.getInstance().getModel().onInject();
        registerPackageChangedReceiver();
        initFresco();
    }

    private void initFresco() {
        SoLoaderShim.setHandler(new SoLoaderShim.Handler() { // from class: com.voxel.launcher3.-$$Lambda$BaseApplication$ApfR-bZU_494rDSvkyT2gOvCidY
            @Override // com.facebook.common.soloader.SoLoaderShim.Handler
            public final void loadLibrary(String str) {
                ReLinker.loadLibrary(this.f$0.getApplicationContext(), str);
            }
        });
        Fresco.initialize(getApplicationContext(), ImagePipelineConfig.newBuilder(getApplicationContext()).setBitmapMemoryCacheParamsSupplier(new ConservativeBitmapCacheConfigSupplier((ActivityManager) getSystemService("activity"))).setNetworkFetcher(this.mHybridNetworkFetcherProvider.get()).setMemoryTrimmableRegistry(getMemoryRegistry()).build());
    }

    private void setupGraph() {
        this.launcherAppComponent = DaggerLauncherAppComponent.builder().application(this).context(getApplicationContext()).memoryWatcher(new MemoryWatcher() { // from class: com.voxel.launcher3.BaseApplication.1
            @Override // com.evie.common.utils.MemoryWatcher
            public void watch(Object obj) {
                BaseApplication.sRefWatcher.watch(obj);
            }
        }).build();
    }

    @Override // com.voxel.simplesearchlauncher.dagger.Injector
    public synchronized LauncherAppComponent getLauncherAppComponent() {
        return this.launcherAppComponent;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    public static Injector getInjector(Context context) {
        return (Injector) context.getApplicationContext();
    }

    public long getAppStartTime() {
        return this.mAppStartTime;
    }

    public void resetAppStartTime() {
        this.mAppStartTime = 0L;
    }

    private void registerPackageChangedReceiver() {
        String currentProcessName = getCurrentProcessName();
        if (currentProcessName != null && currentProcessName.equals(getPackageName())) {
            LocalAppsUpdateReceiver.registerReceiver(this);
        }
        Timber.m551d("ProcessName: " + getCurrentProcessName(), new Object[0]);
    }

    private String getCurrentProcessName() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
    }

    @Override // com.evie.jigsaw.JigsawInjector
    public Jigsaw getJigsaw() {
        return this.mJigsaw;
    }

    public MemoryRegistry getMemoryRegistry() {
        return this.mMemoryRegistry;
    }

    public static RefWatcher getRefWatcher() {
        return sRefWatcher;
    }

    public static BaseApplication getApplication() {
        return sApplication;
    }

    @Override // dagger.android.HasActivityInjector
    public DispatchingAndroidInjector<Activity> activityInjector() {
        return this.mActivityInjector;
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return this.mSupportFragmentInjector;
    }

    @Override // dagger.android.HasServiceInjector
    public AndroidInjector<Service> serviceInjector() {
        return this.mServiceInjector;
    }
}
