.class public Lcom/voxel/launcher3/FlavorInitializer;
.super Ljava/lang/Object;
.source "FlavorInitializer.java"


# instance fields
.field private final mAnalyticsFilterChain:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

.field mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mContext:Landroid/content/Context;

.field mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

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

.field mKiller:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

.field mLauncherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mAnalyticsFilterChain:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

    .line 58
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public fabricInit()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/BaseApplication;

    invoke-virtual {v0}, Lcom/voxel/launcher3/BaseApplication;->isDebugBuild()Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/fabric/sdk/android/Kit;

    new-instance v3, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v4, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    .line 66
    invoke-virtual {v4, v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    .line 65
    invoke-virtual {v3, v0}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 63
    invoke-static {v1, v2}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installer package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/voxel/launcher3/MemoryCrashHandler;

    invoke-direct {v0}, Lcom/voxel/launcher3/MemoryCrashHandler;-><init>()V

    iget-object v1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/MemoryCrashHandler;->initPostFabric(Landroid/content/Context;)V

    return-void
.end method

.method public postDaggerInit()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherApplication;->getInjector(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/Injector;

    move-result-object v0

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/dagger/Injector;->getLauncherAppComponent()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/launcher3/FlavorInitializer;)V

    .line 83
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mAnalyticsFilterChain:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

    new-instance v1, Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;

    iget-object v2, p0, Lcom/voxel/launcher3/FlavorInitializer;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    invoke-direct {v1, v2}, Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;-><init>(Lcom/evie/models/frequentlyused/FrequentlyUsedModel;)V

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->addFilter(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;)V

    .line 84
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mKiller:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->registerReceiver()V

    return-void
.end method

.method public preDaggerInit()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mAnalyticsFilterChain:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/LauncherAnalyticsFilter;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/LauncherAnalyticsFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;->addFilter(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;)V

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/FlavorInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mAnalyticsFilterChain:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilterChain;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->init(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;)V

    return-void
.end method
