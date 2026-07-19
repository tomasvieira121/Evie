.class public Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "RecommendedPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNumItems:I

.field private mPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1
    .param p3    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2, p5}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    const/4 p5, 0x3

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "num_items"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p5, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    .line 64
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 65
    iput p5, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mNumItems:I

    .line 66
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 67
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    return-void
.end method

.method public static synthetic lambda$g5xYhE0K0jWQIuCCPSOtpoDkV5Q(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->showLoading()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->showError()V

    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->hideLoading()V

    .line 123
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/ListTopicsResult;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schema/Thing;

    .line 130
    instance-of v5, v4, Lorg/schema/evie/topics/Topic;

    if-eqz v5, :cond_2

    .line 131
    check-cast v4, Lorg/schema/evie/topics/Topic;

    .line 132
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getFollows()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getBlocks()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(Lorg/schema/evie/topics/Topic;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v5

    .line 135
    iget-object v6, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v6, v4, v5, v7}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 136
    invoke-virtual {v4, v3}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setRecommendedSubPosition(I)V

    .line 137
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-virtual {v4, v3}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setTile(Lcom/evie/models/sidescreen/data/SideScreenContentTile;)V

    .line 138
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 143
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    if-ge v1, p2, :cond_4

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    add-int/lit8 v1, v1, 0x1

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 147
    instance-of v4, p2, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    if-eqz v4, :cond_3

    instance-of v3, v3, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    if-eqz v3, :cond_3

    .line 148
    check-cast p2, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {p2, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setShowDivider(Z)V

    goto :goto_1

    .line 152
    :cond_4
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mPresenters:Ljava/util/List;

    .line 153
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->setItemPresenters(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;
    .locals 1

    .line 93
    new-instance v0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mPresenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    const-string v3, "item_type"

    const-string v4, "topic"

    .line 78
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attribute_screen_info"

    .line 79
    iget-object v4, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attribute_topic"

    .line 80
    invoke-virtual {v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getTopic()Lorg/schema/evie/topics/Topic;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sub_position"

    .line 81
    invoke-virtual {v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getRecommendedSubPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 88
    sget v0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mPresenters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->setItemPresenters(Ljava/util/List;)V

    .line 101
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->hideLoading()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->showLoading()V

    .line 105
    new-instance v0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>()V

    .line 106
    invoke-virtual {v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setPersonalized()V

    .line 107
    invoke-virtual {v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setFilterFollow()V

    .line 108
    iget v1, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mNumItems:I

    invoke-virtual {v0, v1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setLimit(I)V

    .line 109
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v2, v0}, Lcom/evie/models/topics/TopicsModel;->listTopics(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)Lio/reactivex/Observable;

    move-result-object v0

    .line 110
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$g5xYhE0K0jWQIuCCPSOtpoDkV5Q;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$g5xYhE0K0jWQIuCCPSOtpoDkV5Q;-><init>(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;)V

    .line 111
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;

    invoke-direct {v2, p0, p1}, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;-><init>(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;)V

    .line 112
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
    return-void
.end method
