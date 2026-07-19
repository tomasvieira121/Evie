.class public Lcom/evie/models/announcement/AnnouncementModel;
.super Ljava/lang/Object;
.source "AnnouncementModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/announcement/AnnouncementAPI;

.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mBuildModel:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final promptStoreModel:Lcom/evie/models/PromptStoreModel;

.field private final versionCode:I


# direct methods
.method public constructor <init>(Lcom/evie/models/announcement/AnnouncementAPI;Ljava/lang/String;Ljava/lang/String;Lcom/evie/models/PromptStoreModel;ILjava/lang/String;Lcom/evie/common/AbTestConfiguration;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/announcement/AnnouncementModel;->mAPI:Lcom/evie/models/announcement/AnnouncementAPI;

    iput-object p2, p0, Lcom/evie/models/announcement/AnnouncementModel;->mUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/models/announcement/AnnouncementModel;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/models/announcement/AnnouncementModel;->promptStoreModel:Lcom/evie/models/PromptStoreModel;

    iput p5, p0, Lcom/evie/models/announcement/AnnouncementModel;->versionCode:I

    iput-object p6, p0, Lcom/evie/models/announcement/AnnouncementModel;->mBuildModel:Ljava/lang/String;

    iput-object p7, p0, Lcom/evie/models/announcement/AnnouncementModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    return-void
.end method

.method public static synthetic lambda$cacheAnnouncement$0(Lcom/evie/models/announcement/AnnouncementModel;Lcom/evie/common/data/Lce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/evie/models/announcement/AnnouncementModel;->promptStoreModel:Lcom/evie/models/PromptStoreModel;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/announcement/data/Announcement;

    invoke-virtual {v0, p1}, Lcom/evie/models/PromptStoreModel;->setAnnouncement(Lcom/evie/models/announcement/data/Announcement;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cacheAnnouncement()Lio/reactivex/disposables/Disposable;
    .locals 8

    .line 26
    iget-object v0, p0, Lcom/evie/models/announcement/AnnouncementModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v6

    .line 27
    iget-object v0, p0, Lcom/evie/models/announcement/AnnouncementModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v7

    .line 29
    iget-object v1, p0, Lcom/evie/models/announcement/AnnouncementModel;->mAPI:Lcom/evie/models/announcement/AnnouncementAPI;

    iget-object v2, p0, Lcom/evie/models/announcement/AnnouncementModel;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/evie/models/announcement/AnnouncementModel;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/evie/models/announcement/AnnouncementModel;->versionCode:I

    iget-object v5, p0, Lcom/evie/models/announcement/AnnouncementModel;->mBuildModel:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/evie/models/announcement/AnnouncementAPI;->getAnnouncement(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 30
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/models/announcement/-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo;

    invoke-direct {v1, p0}, Lcom/evie/models/announcement/-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo;-><init>(Lcom/evie/models/announcement/AnnouncementModel;)V

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method
