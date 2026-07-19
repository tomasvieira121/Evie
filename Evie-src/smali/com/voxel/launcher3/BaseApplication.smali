.class public Lcom/voxel/launcher3/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/evie/jigsaw/JigsawInjector;
.implements Lcom/voxel/simplesearchlauncher/dagger/Injector;
.implements Ldagger/android/HasActivityInjector;
.implements Ldagger/android/HasServiceInjector;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseApplication"

.field private static sApplication:Lcom/voxel/launcher3/BaseApplication;

.field private static sRefWatcher:Lcom/squareup/leakcanary/RefWatcher;


# instance fields
.field private launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

.field mActivityInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mAppStartTime:J

.field mHybridNetworkFetcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;",
            ">;"
        }
    .end annotation
.end field

.field mIconFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;",
            ">;"
        }
    .end annotation
.end field

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field private mIsDebugBuild:Ljava/lang/Boolean;

.field mJigsaw:Lcom/evie/jigsaw/Jigsaw;

.field mMemoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

.field mServiceInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

.field mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/squareup/leakcanary/RefWatcher;
    .locals 1

    .line 72
    sget-object v0, Lcom/voxel/launcher3/BaseApplication;->sRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method

.method public static getApplication()Lcom/voxel/launcher3/BaseApplication;
    .locals 1

    .line 294
    sget-object v0, Lcom/voxel/launcher3/BaseApplication;->sApplication:Lcom/voxel/launcher3/BaseApplication;

    return-object v0
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 4

    .line 260
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 261
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 267
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_0

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInjector(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/Injector;
    .locals 0

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/dagger/Injector;

    return-object p0
.end method

.method public static getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;
    .locals 1

    .line 290
    sget-object v0, Lcom/voxel/launcher3/BaseApplication;->sRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method

.method private initFresco()V
    .locals 3

    .line 195
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$BaseApplication$ApfR-bZU_494rDSvkyT2gOvCidY;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$BaseApplication$ApfR-bZU_494rDSvkyT2gOvCidY;-><init>(Lcom/voxel/launcher3/BaseApplication;)V

    invoke-static {v0}, Lcom/facebook/common/soloader/SoLoaderShim;->setHandler(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V

    const-string v0, "activity"

    .line 197
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 198
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;

    invoke-direct {v2, v0}, Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;-><init>(Landroid/app/ActivityManager;)V

    .line 199
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/BaseApplication;->mHybridNetworkFetcherProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getMemoryRegistry()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public static synthetic lambda$initFresco$0(Lcom/voxel/launcher3/BaseApplication;Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private registerPackageChangedReceiver()V
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->init(Landroid/content/Context;)V

    .line 172
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 173
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    .line 175
    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->setupGraph()V

    .line 176
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/launcher3/BaseApplication;)V

    .line 178
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/BaseApplication;->mIconFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/IconCache;->setAppsInfoIconFilter(Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;)V

    .line 179
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackPackageName()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/voxel/launcher3/BaseApplication;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackVersionCode()I

    move-result v1

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v2

    new-instance v3, Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/evie/common/iconpack/IconPackFilter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/IconCache;->setIconPackFilter(Lcom/evie/common/iconpack/IconPackFilter;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/launcher3/LauncherAppState;)V

    .line 185
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/launcher3/LauncherModel;)V

    .line 187
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->onInject()V

    .line 189
    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->registerPackageChangedReceiver()V

    .line 190
    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->initFresco()V

    return-void
.end method

.method private setupGraph()V
    .locals 2

    .line 207
    invoke-static {}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->builder()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;

    move-result-object v0

    .line 208
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;->application(Landroid/app/Application;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;->context(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/BaseApplication$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/BaseApplication$1;-><init>(Lcom/voxel/launcher3/BaseApplication;)V

    .line 210
    invoke-interface {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;->memoryWatcher(Lcom/evie/common/utils/MemoryWatcher;)Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent$Builder;->build()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic activityInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->activityInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public activityInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mActivityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 232
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getAppStartTime()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/voxel/launcher3/BaseApplication;->mAppStartTime:J

    return-wide v0
.end method

.method public getJigsaw()Lcom/evie/jigsaw/Jigsaw;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mJigsaw:Lcom/evie/jigsaw/Jigsaw;

    return-object v0
.end method

.method public declared-synchronized getLauncherAppComponent()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->launcherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemoryRegistry()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mMemoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    return-object v0
.end method

.method protected installLeakCanary()Lcom/squareup/leakcanary/RefWatcher;
    .locals 1

    .line 143
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method

.method public isDebugBuild()Z
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mIsDebugBuild:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/BaseApplication;->mIsDebugBuild:Ljava/lang/Boolean;

    .line 163
    sget-object v1, Lcom/voxel/launcher3/BaseApplication;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildConfig.DEBUG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/voxel/launcher3/BaseApplication;->mIsDebugBuild:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mIsDebugBuild:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 7

    .line 101
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ltimber/log/Timber$DebugTree;

    invoke-direct {v0}, Ltimber/log/Timber$DebugTree;-><init>()V

    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 111
    :cond_1
    sput-object p0, Lcom/voxel/launcher3/BaseApplication;->sApplication:Lcom/voxel/launcher3/BaseApplication;

    .line 113
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->setApplicationContext(Landroid/app/Application;)V

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "**** LauncherApplication.onCreate() - Starting launcher process ****"

    .line 115
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/BaseApplication;->mAppStartTime:J

    .line 118
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 121
    new-instance v0, Lcom/voxel/launcher3/FlavorInitializer;

    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/FlavorInitializer;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0}, Lcom/voxel/launcher3/FlavorInitializer;->fabricInit()V

    .line 124
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->installLeakCanary()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v1

    sput-object v1, Lcom/voxel/launcher3/BaseApplication;->sRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 126
    invoke-virtual {p0}, Lcom/voxel/launcher3/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->init(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lcom/voxel/launcher3/FlavorInitializer;->preDaggerInit()V

    .line 129
    invoke-direct {p0}, Lcom/voxel/launcher3/BaseApplication;->setup()V

    .line 131
    iget-object v1, p0, Lcom/voxel/launcher3/BaseApplication;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcom/voxel/launcher3/FlavorInitializer;->postDaggerInit()V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/voxel/launcher3/BaseApplication;->mAppStartTime:J

    sub-long/2addr v0, v2

    const-string v2, "STARTUP-PERFORMANCE"

    const/4 v3, 0x1

    .line 136
    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Launcher Application onCreate() total time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/voxel/launcher3/BaseApplication;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "onCreate end"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 277
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public resetAppStartTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lcom/voxel/launcher3/BaseApplication;->mAppStartTime:J

    return-void
.end method

.method public serviceInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mServiceInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/voxel/launcher3/BaseApplication;->mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
