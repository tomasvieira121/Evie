.class public Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
.super Ljava/lang/Object;
.source "SideScreenRelatedContentModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/sidescreen/SideScreenContentAPI;

.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mApiVersion:I

.field private final mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field private final mPackage:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/SideScreenContentAPI;ILcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAPI:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    iput p2, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mApiVersion:I

    iput-object p3, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    iput-object p4, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iput-object p5, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    iput-object p6, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mPackage:Ljava/lang/String;

    iput p7, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mVersion:I

    return-void
.end method

.method static synthetic lambda$getShortLink$0(Lcom/evie/common/data/Lce;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getShortLink$1(Ljava/lang/String;Lcom/evie/common/data/Lce;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/sidescreen/data/ShortLink;

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/ShortLink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/sidescreen/data/ShortLink;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/ShortLink;->getLink()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$registerFirebaseToken$2(Lcom/evie/common/data/Lce;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getRelatedContent(Ljava/lang/String;ZLjava/lang/String;)Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v4

    .line 31
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v9

    .line 32
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v10

    .line 34
    iget-object v1, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAPI:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    iget-object v5, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mPackage:Ljava/lang/String;

    iget v6, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mVersion:I

    iget v7, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mApiVersion:I

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v10}, Lcom/evie/models/sidescreen/SideScreenContentAPI;->getRelatedContent(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    invoke-static {p3}, Lcom/evie/common/data/Lce;->transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getShortLink(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAPI:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    invoke-interface {v1, p1, v0}, Lcom/evie/models/sidescreen/SideScreenContentAPI;->getShortLink(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Lcom/evie/common/data/Lce;->transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$AyJZ6dKL71SeZtmLlE9P0XPo1Iw;->INSTANCE:Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$AyJZ6dKL71SeZtmLlE9P0XPo1Iw;

    .line 45
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$hsn2hW8NKGcFHZ-11UpZz2zxKLI;

    invoke-direct {v1, p1}, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$hsn2hW8NKGcFHZ-11UpZz2zxKLI;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public registerFirebaseToken(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->mAPI:Lcom/evie/models/sidescreen/SideScreenContentAPI;

    invoke-interface {v1, v0, p1}, Lcom/evie/models/sidescreen/SideScreenContentAPI;->registerToken(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/evie/common/data/Lce;->transformRequestToLce(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;->INSTANCE:Lcom/evie/models/sidescreen/-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ;

    .line 64
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
