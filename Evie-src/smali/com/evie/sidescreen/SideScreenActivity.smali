.class public abstract Lcom/evie/sidescreen/SideScreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SideScreenActivity.java"


# instance fields
.field private hasSavedNavigationBarColor:Z

.field private mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field protected mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field protected mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field protected mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field protected mExoPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerStack:Lcom/evie/sidescreen/LayerStack;

.field private mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field protected mOathPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field protected mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

.field mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

.field protected mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private navigationBarColor:I

.field private useNavigationBarColorHack:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->useNavigationBarColorHack:Z

    .line 59
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    .line 60
    iput v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->navigationBarColor:I

    return-void
.end method

.method private handleNavigationBarColor()V
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lcom/evie/sidescreen/R$attr;->ss_navigationBarColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    const/high16 v1, -0x1000000

    .line 89
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->navigationBarColor:I

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    if-eqz v0, :cond_1

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->navigationBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AudioServiceActivityLeak;->preventLeakOf(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public abstract getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
.end method

.method protected abstract getScreenViewMetaData()Ljava/lang/String;
.end method

.method protected abstract getScreenViewProtobuf()Ljava/lang/String;
.end method

.method protected abstract getScreenViewSubType()Ljava/lang/String;
.end method

.method protected abstract getScreenViewTitle()Ljava/lang/String;
.end method

.method protected abstract getScreenViewType()Ljava/lang/String;
.end method

.method public getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    invoke-virtual {v0}, Lcom/evie/sidescreen/LayerStack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/StackLayer;

    .line 207
    invoke-interface {v1}, Lcom/evie/sidescreen/StackLayer;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 211
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.evie.sidescreen.SideScreenActivity.enable_activity_navigation_bar_hack"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/evie/sidescreen/SideScreenActivity;->useNavigationBarColorHack:Z

    return-void
.end method

.method public onCreateInject()V
    .locals 4

    .line 107
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.evie.sidescreen.ActivityStarter.personalize_onboarding"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    invoke-static {}, Lcom/evie/sidescreen/SideScreenSettings;->builder()Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isPersonalizeOnboarding(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->build()Lcom/evie/sidescreen/SideScreenSettings;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->builder()Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    new-instance v3, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v3}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;-><init>()V

    invoke-direct {v2, v3}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    .line 116
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-direct {v2, v0}, Lcom/evie/sidescreen/dagger/SettingsModule;-><init>(Lcom/evie/sidescreen/SideScreenSettings;)V

    .line 117
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/ContextModule;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 118
    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/dagger/ContextModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 119
    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/dagger/NetworkStatusModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    .line 120
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->build()Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;->activitySubcomponentBuilder()Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;->popupViewProvider(Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;

    move-result-object v0

    .line 126
    invoke-interface {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;->activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;->build()Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->activationModel()Lcom/evie/sidescreen/ActivationModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 131
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->lifecycleCallbacks()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 132
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->layerStack()Lcom/evie/sidescreen/LayerStack;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    .line 133
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 134
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->disposables()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 135
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->sideScreenRelatedContentModel()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 136
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->exoPlayerObservableProvider()Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mExoPlayerObservableProvider:Ljavax/inject/Provider;

    .line 137
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->sideScreenSharedPreferencesModel()Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 138
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;->analyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 139
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    invoke-interface {v0}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->analyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 141
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/ActivationModel;->activate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 197
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 183
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->useNavigationBarColorHack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    if-eqz v0, :cond_0

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->finishScreenView()V

    .line 190
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    .line 191
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 146
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 148
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->useNavigationBarColorHack:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    if-nez v0, :cond_0

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    iput v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->navigationBarColor:I

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->useNavigationBarColorHack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->hasSavedNavigationBarColor:Z

    if-eqz v0, :cond_1

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/evie/sidescreen/SideScreenActivity;->navigationBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getScreenViewType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getScreenViewSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getScreenViewTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getScreenViewMetaData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenActivity;->getScreenViewProtobuf()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    .line 161
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenActivity;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;->handleNavigationBarColor()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;->handleNavigationBarColor()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;->handleNavigationBarColor()V

    return-void
.end method
