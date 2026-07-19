.class public Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicDetailPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

.field private final mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

.field private final mTopicDetailHeaderPresenterFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

.field private final mTopicId:Ljava/lang/String;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Landroid/content/Context;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;)V
    .locals 0
    .param p3    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    .line 48
    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p4, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 50
    iput-object p5, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicDetailHeaderPresenterFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

    .line 51
    iput-object p6, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    return-void
.end method

.method public static synthetic lambda$h2Ma9axneHz0WYvDE3FVIojesJ4(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->showLoading()V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->showError()V

    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->hideLoading()V

    .line 85
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/TopicDetailsResult;

    if-eqz p2, :cond_3

    .line 89
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 91
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getTopics()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/schema/evie/topics/Topic;

    if-nez v0, :cond_2

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/evie/topics/Topic;

    .line 96
    new-instance v1, Lcom/evie/models/topics/data/TopicId;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getFollows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 98
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    invoke-static {v2, v1}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(ZZ)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v9, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v3, "topic_view"

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v3, v4, v5}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicDetailHeaderPresenterFactory:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

    iget-object v4, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    invoke-virtual {v3, v0, v1, v4, v9}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    iget-object v4, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getObjects()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/evie/models/topics/data/TopicDetailsResult;->getTiles()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 105
    invoke-virtual/range {v3 .. v9}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->processTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->setItemPresenters(Ljava/util/List;)V

    return-void

    .line 92
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->showError()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;
    .locals 1

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not used"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getType()I
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->onBindViewHolder(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->showLoading()V

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mTopicId:Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v2}, Lcom/evie/models/topics/TopicsModel;->getTopicDetails(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 72
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$h2Ma9axneHz0WYvDE3FVIojesJ4;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$h2Ma9axneHz0WYvDE3FVIojesJ4;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;)V

    .line 73
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;

    invoke-direct {v2, p0, p1}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)V

    .line 74
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->setItemPresenters(Ljava/util/List;)V

    return-void
.end method
