.class public Lcom/evie/models/sidescreen/SideScreenContentTabModel;
.super Ljava/lang/Object;
.source "SideScreenContentTabModel.java"

# interfaces
.implements Lcom/evie/models/sidescreen/SideScreenContentModelInterface;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
    allowSubclasses = true
.end annotation


# instance fields
.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mApi:Lcom/evie/models/sidescreen/SideScreenContentAPI;

.field private final mApiVersion:I

.field private final mAppVersion:I

.field private final mContentSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/sidescreen/data/SideScreenContent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field private final mPackageName:Ljava/lang/String;

.field private final mTabPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;ILcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;ILjava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Lcom/evie/models/sidescreen/SideScreenContentAPI;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/common/AbTestConfiguration;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/voxel/simplesearchlauncher/api/LocationHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mContentSubject:Lio/reactivex/subjects/Subject;

    .line 50
    iput-object p2, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mApi:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    .line 51
    iput-object p4, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    .line 52
    iput-object p5, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 53
    iput-object p6, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    .line 54
    iput p7, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAppVersion:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mTabPath:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mApiVersion:I

    return-void
.end method


# virtual methods
.method public getObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/sidescreen/data/SideScreenContent;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mContentSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mTabPath:Ljava/lang/String;

    return-object v0
.end method

.method public refreshContent(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
    .locals 12

    .line 65
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v3

    .line 66
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v8

    .line 67
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v9

    .line 71
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v11, v0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v10, v1

    move-object v11, v10

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mApi:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    iget-object v2, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mTabPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mAppVersion:I

    iget v6, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mApiVersion:I

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface/range {v1 .. v11}, Lcom/evie/models/sidescreen/SideScreenContentAPI;->getTabContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/evie/common/data/Lce;->transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModel;->mContentSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/evie/models/sidescreen/-$$Lambda$soRhY3yobnQxHc8WoNYF5Z1a8_A;

    invoke-direct {v1, v0}, Lcom/evie/models/sidescreen/-$$Lambda$soRhY3yobnQxHc8WoNYF5Z1a8_A;-><init>(Lio/reactivex/subjects/Subject;)V

    .line 80
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
