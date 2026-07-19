.class public Lcom/evie/models/topics/TopicsModel;
.super Ljava/lang/Object;
.source "TopicsModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/topics/TopicsAPI;

.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field private final mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;


# direct methods
.method public constructor <init>(Lcom/evie/models/topics/TopicsAPI;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    iput-object p2, p0, Lcom/evie/models/topics/TopicsModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iput-object p3, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    iput-object p4, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    iput-object p5, p0, Lcom/evie/models/topics/TopicsModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    return-void
.end method

.method private followTopic(Ljava/lang/String;)Lio/reactivex/Observable;
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

    if-nez p1, :cond_0

    .line 129
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->addTopicFollows(Ljava/util/Set;)V

    .line 133
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicBlocks(Ljava/util/Set;)V

    .line 135
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/evie/models/topics/TopicsAPI;->followTopic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getUserId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getFollows$0(Lcom/evie/models/topics/TopicsModel;Lcom/evie/common/data/Lce;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/topics/data/GetFollowsResult;

    .line 120
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/evie/models/topics/data/GetFollowsResult;->getFollows()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->setTopicFollows(Ljava/util/Set;)V

    .line 121
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/evie/models/topics/data/GetFollowsResult;->getBlocks()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->setTopicBlocks(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private unfollowTopic(Ljava/lang/String;)Lio/reactivex/Observable;
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

    if-nez p1, :cond_0

    .line 175
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicFollows(Ljava/util/Set;)V

    .line 179
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicBlocks(Ljava/util/Set;)V

    .line 180
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/evie/models/topics/TopicsAPI;->unfollowTopic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 181
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blockTopic(Ljava/lang/String;)Lio/reactivex/Observable;
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

    if-nez p1, :cond_0

    .line 193
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicFollows(Ljava/util/Set;)V

    .line 197
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->addTopicBlocks(Ljava/util/Set;)V

    .line 198
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/evie/models/topics/TopicsAPI;->blockTopic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 199
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 200
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public blockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/evie/topics/Topic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evie/models/topics/TopicsModel;->blockTopic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public followTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/evie/topics/Topic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/models/topics/TopicsModel;->followTopic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public followTopics(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schema/evie/topics/Topic;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/evie/topics/Topic;

    .line 152
    invoke-virtual {v2}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 153
    new-instance v3, Lcom/evie/models/topics/data/TopicId;

    invoke-virtual {v2}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v1, v0}, Lcom/evie/models/topics/TopicPersonalizationStore;->addTopicFollows(Ljava/util/Set;)V

    .line 157
    iget-object v1, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v1, v0}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicBlocks(Ljava/util/Set;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 160
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/evie/topics/Topic;

    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 161
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/16 v2, 0x2c

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/evie/topics/Topic;

    invoke-virtual {v2}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/evie/models/topics/TopicsAPI;->followTopics(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 168
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getFollows()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/topics/data/GetFollowsResult;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/evie/models/topics/TopicsAPI;->getFollows(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object v0

    .line 114
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/models/topics/-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto;

    invoke-direct {v1, p0}, Lcom/evie/models/topics/-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto;-><init>(Lcom/evie/models/topics/TopicsModel;)V

    .line 116
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalize()Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/topics/data/PersonalizeResult;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v4

    .line 48
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v1 .. v6}, Lcom/evie/models/topics/TopicsAPI;->getPersonalize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getTopicDetails(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/topics/data/TopicDetailsResult;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v4

    .line 87
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v5

    .line 91
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v1

    move-object v7, v6

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/evie/models/topics/TopicsAPI;->getTopicDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public listTopics(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/topics/data/ListTopicsRequestOptions;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/topics/data/ListTopicsResult;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v5

    .line 66
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v7, v6

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->getOptions()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface/range {v1 .. v7}, Lcom/evie/models/topics/TopicsAPI;->listTopics(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public unblockTopic(Ljava/lang/String;)Lio/reactivex/Observable;
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

    if-nez p1, :cond_0

    .line 211
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1}, Lcom/evie/common/data/Lce;->error(Ljava/lang/Throwable;)Lcom/evie/common/data/Lce;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicFollows(Ljava/util/Set;)V

    .line 215
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v1, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->removeTopicBlocks(Ljava/util/Set;)V

    .line 216
    iget-object v0, p0, Lcom/evie/models/topics/TopicsModel;->mAPI:Lcom/evie/models/topics/TopicsAPI;

    invoke-direct {p0}, Lcom/evie/models/topics/TopicsModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/evie/models/topics/TopicsAPI;->unblockTopic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 217
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 218
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public unblockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/evie/topics/Topic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evie/models/topics/TopicsModel;->unblockTopic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public unfollowTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/evie/topics/Topic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/models/topics/TopicsModel;->unfollowTopic(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
