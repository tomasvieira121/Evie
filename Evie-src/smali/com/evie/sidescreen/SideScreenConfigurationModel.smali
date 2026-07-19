.class public Lcom/evie/sidescreen/SideScreenConfigurationModel;
.super Ljava/lang/Object;
.source "SideScreenConfigurationModel.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private final mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final mConfigModel:Lcom/evie/models/config/ConfigModel;

.field private final mPackageName:Ljava/lang/String;

.field private final mPhoneModel:Ljava/lang/String;

.field private final mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private final mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

.field private final mSideScreenConfigurationSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:I


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;ILjava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfigurationSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 34
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 37
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    .line 38
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    .line 39
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mConfigModel:Lcom/evie/models/config/ConfigModel;

    .line 40
    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 41
    iput p7, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mVersion:I

    .line 42
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPhoneModel:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 47
    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfigurationSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p3, p4}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 50
    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 51
    invoke-virtual {p1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p4, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU;

    invoke-direct {p4, p2}, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    .line 52
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q;-><init>(Lcom/evie/sidescreen/SideScreenConfigurationModel;)V

    .line 55
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    sget-object p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 53
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 54
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->forceUpdate(Z)V

    return-void
.end method

.method public static synthetic lambda$update$2(Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/common/data/Lce;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/config/ConfigData;

    .line 88
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenConfiguration;->setFromConfigData(Lcom/evie/models/config/ConfigData;)V

    .line 90
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfigurationSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private update(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mConfigModel:Lcom/evie/models/config/ConfigModel;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 72
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mVersion:I

    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPhoneModel:Ljava/lang/String;

    iget-object v5, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 79
    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getFirebaseCloudMessagingRegistrationToken()Ljava/lang/String;

    move-result-object v9

    move-object v7, p2

    move-object v8, p3

    .line 71
    invoke-virtual/range {v1 .. v9}, Lcom/evie/models/config/ConfigModel;->getSidescreenConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM;-><init>(Lcom/evie/sidescreen/SideScreenConfigurationModel;)V

    .line 82
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public forceUpdate(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->getAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    invoke-virtual {v1}, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->getAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {p0, p1, v0, v1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->update(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSideScreenConfiguration()Lcom/evie/sidescreen/SideScreenConfiguration;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public observeSideScreenConfiguration()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;->mSideScreenConfigurationSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
