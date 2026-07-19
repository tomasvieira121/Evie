.class public Lcom/evie/sidescreen/SideScreen;
.super Ljava/lang/Object;
.source "SideScreen.java"


# instance fields
.field mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

.field mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field mLayerStack:Lcom/evie/sidescreen/LayerStack;

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

.field mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

.field private final mSideScreenSubcomponent:Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

.field mSideScreenView:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/evie/sidescreen/SideScreenDependencies;Lcom/evie/sidescreen/SideScreenSharedDependencies;Lcom/evie/sidescreen/SideScreenSettings;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 42
    invoke-static {}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->builder()Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreen;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-direct {v1, p4}, Lcom/evie/sidescreen/dagger/SettingsModule;-><init>(Lcom/evie/sidescreen/SideScreenSettings;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object p4

    new-instance v0, Lcom/evie/sidescreen/dagger/ContextModule;

    .line 45
    invoke-interface {p3}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/dagger/ContextModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object p4

    new-instance v0, Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    .line 46
    invoke-interface {p3}, Lcom/evie/sidescreen/SideScreenSharedDependencies;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/dagger/NetworkStatusModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object p4

    .line 47
    invoke-virtual {p4, p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    move-result-object p3

    .line 48
    invoke-virtual {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->build()Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;

    move-result-object p3

    .line 49
    invoke-interface {p3}, Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;->sideScreenSubcomponentBuilder()Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;

    move-result-object p3

    new-instance p4, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-direct {p4, p2}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;-><init>(Lcom/evie/sidescreen/SideScreenDependencies;)V

    .line 50
    invoke-interface {p3, p4}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;->sideScreenDependenciesModule(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;

    move-result-object p2

    .line 51
    invoke-interface {p2, p1}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;->activity(Landroid/app/Activity;)Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;->build()Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenSubcomponent:Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    .line 54
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenSubcomponent:Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    invoke-interface {p1, p0}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;->inject(Lcom/evie/sidescreen/SideScreen;)V

    .line 56
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenPresenter;->bindSideScreenView(Lcom/evie/sidescreen/SideScreenView;)V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/ActivationModel;->activate()V

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenSubcomponent:Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;->memoryWatcher()Lcom/evie/common/utils/MemoryWatcher;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    invoke-interface {v0, v1}, Lcom/evie/common/utils/MemoryWatcher;->watch(Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-interface {v0, v1}, Lcom/evie/common/utils/MemoryWatcher;->watch(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenPresenter;->dispose()V

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenView;->dispose()V

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenSubcomponent:Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;->disposables()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public getSideScreenPresenter()Lcom/evie/sidescreen/SideScreenPresenter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenPresenter:Lcom/evie/sidescreen/SideScreenPresenter;

    return-object v0
.end method

.method public getSideScreenView()Lcom/evie/sidescreen/SideScreenView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    return-object v0
.end method

.method public onBack()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    invoke-virtual {v0}, Lcom/evie/sidescreen/LayerStack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/StackLayer;

    .line 93
    invoke-interface {v1}, Lcom/evie/sidescreen/StackLayer;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreen;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
