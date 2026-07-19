.class public Lcom/evie/sidescreen/firebase/TokenService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "TokenService.java"


# instance fields
.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field mHandler:Landroid/os/Handler;

.field mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

.field mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

.field mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/firebase/TokenService;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/firebase/TokenService;->registerFirebaseToken(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$registerFirebaseToken$0(Lcom/evie/sidescreen/firebase/TokenService;ILjava/lang/String;Lcom/evie/common/data/Lce;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-virtual {p3}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Error reporting token, %s"

    const/4 v2, 0x1

    .line 94
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    invoke-static {v0, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p3, 0xa

    if-ge p1, p3, :cond_1

    .line 96
    iget-object p3, p0, Lcom/evie/sidescreen/firebase/TokenService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/evie/sidescreen/firebase/TokenService$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/evie/sidescreen/firebase/TokenService$1;-><init>(Lcom/evie/sidescreen/firebase/TokenService;Ljava/lang/String;I)V

    shl-int p1, v2, p1

    mul-int/lit16 p1, p1, 0x1388

    int-to-long p1, p1

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "Success"

    .line 106
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setFirebaseCloudMessagingRegistrationToken(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerFirebaseToken(Ljava/lang/String;I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 92
    invoke-virtual {v1, p1}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->registerFirebaseToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;

    invoke-direct {v2, p0, p2, p1}, Lcom/evie/sidescreen/firebase/-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I;-><init>(Lcom/evie/sidescreen/firebase/TokenService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 45
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onCreate()V

    .line 46
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Service;)V

    .line 48
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 50
    invoke-static {}, Lcom/evie/sidescreen/SideScreenSettings;->builder()Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->build()Lcom/evie/sidescreen/SideScreenSettings;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->builder()Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    new-instance v3, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v3}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;-><init>()V

    invoke-direct {v2, v3}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    .line 54
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-direct {v2, v0}, Lcom/evie/sidescreen/dagger/SettingsModule;-><init>(Lcom/evie/sidescreen/SideScreenSettings;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/ContextModule;

    iget-object v2, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 56
    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/dagger/ContextModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    iget-object v2, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 57
    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/dagger/NetworkStatusModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 58
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->build()Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;->sideScreenRelatedContentModel()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 61
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;->sideScreenSharedPreferencesModel()Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    invoke-interface {v0}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->analyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/firebase/TokenService;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public onTokenRefresh()V
    .locals 3

    const-string v0, "com.voxel.launcher3.prefs"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/firebase/TokenService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "com.evie.screen.WelcomeScreenController.PREFERENCE_CONDITIONS_ACCEPTED"

    .line 71
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/evie/sidescreen/firebase/TokenService;->registerFirebaseToken(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
