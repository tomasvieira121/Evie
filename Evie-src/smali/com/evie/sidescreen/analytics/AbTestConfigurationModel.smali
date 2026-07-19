.class public Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;
.super Ljava/lang/Object;
.source "AbTestConfigurationModel.java"


# instance fields
.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigModel:Lcom/evie/models/config/ConfigModel;

.field private final mForceUpdateSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private final mPackageName:Ljava/lang/String;

.field private final mPhoneModel:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    .line 51
    iput-object p2, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mConfigModel:Lcom/evie/models/config/ConfigModel;

    .line 52
    iput-object p3, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 53
    iput-object p4, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 54
    iput-object p5, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 55
    iput p6, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mVersion:I

    .line 56
    iput-object p7, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mPhoneModel:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 60
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mForceUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    .line 63
    iget-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$P_1oRcJlhbjiEfMx3S2vTEiAmGI;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$P_1oRcJlhbjiEfMx3S2vTEiAmGI;-><init>(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;)V

    .line 64
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;->INSTANCE:Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;

    .line 67
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mForceUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p2, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 71
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$aE3s8s64G-vGpYrX0wWeS4aadpc;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$aE3s8s64G-vGpYrX0wWeS4aadpc;-><init>(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;)V

    .line 72
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$JJa_pyGv-L17aMNTfAfnwZvZEYE;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$JJa_pyGv-L17aMNTfAfnwZvZEYE;-><init>(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;)V

    .line 73
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 65
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 66
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$new$1(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mConfigModel:Lcom/evie/models/config/ConfigModel;

    iget-object v1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mVersion:I

    iget-object v3, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mPhoneModel:Ljava/lang/String;

    iget-object v4, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mPackageName:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/evie/models/config/ConfigModel;->getExperiment(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$3(Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/common/data/Lce;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/config/ExperimentData;

    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v1}, Lcom/evie/common/AbTestConfiguration;->getActualGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/config/ExperimentData;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {p1}, Lcom/evie/models/config/ExperimentData;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/common/AbTestConfiguration;->setActualGroup(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;

    const/4 v0, 0x1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v1}, Lcom/evie/common/AbTestConfiguration;->getActualExperiment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/config/ExperimentData;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {p1}, Lcom/evie/models/config/ExperimentData;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evie/common/AbTestConfiguration;->setActualExperiment(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 92
    iget-object p1, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    return-object v0
.end method

.method public getObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->mBehaviorSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
