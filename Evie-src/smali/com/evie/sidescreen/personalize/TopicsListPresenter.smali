.class public Lcom/evie/sidescreen/personalize/TopicsListPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicsListPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/TopicsListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

.field private mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

.field protected final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field protected final mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

.field protected final mTopicsModel:Lcom/evie/models/topics/TopicsModel;

.field private final mUseSections:Z


# direct methods
.method public constructor <init>(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V
    .locals 0
    .param p4    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    .line 80
    iput-boolean p2, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mUseSections:Z

    .line 81
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 82
    iput-object p4, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 83
    iput-object p5, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    .line 84
    iput-object p6, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    return-void
.end method

.method public static synthetic lambda$XuZRAm9UEajtHJicGzl5uWW9rX4(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$load$0(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-virtual {p1, v0}, Lcom/evie/models/topics/TopicsModel;->listTopics(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$load$1(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Lcom/evie/sidescreen/personalize/TopicsListViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->showLoading()V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->showError()V

    return-void

    .line 141
    :cond_1
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/ListTopicsResult;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->values()[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_b

    .line 150
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 151
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getFollows()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 152
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getFollows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/models/topics/data/TopicId;

    if-eqz v3, :cond_3

    .line 153
    invoke-virtual {v3}, Lcom/evie/models/topics/data/TopicId;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 154
    invoke-virtual {v3}, Lcom/evie/models/topics/data/TopicId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getBlocks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/topics/data/TopicId;

    if-eqz v4, :cond_5

    .line 162
    invoke-virtual {v4}, Lcom/evie/models/topics/data/TopicId;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 163
    invoke-virtual {v4}, Lcom/evie/models/topics/data/TopicId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schema/Thing;

    .line 171
    instance-of v4, v3, Lorg/schema/evie/topics/Topic;

    if-eqz v4, :cond_7

    .line 173
    sget-object v4, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_ENTITY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    .line 174
    iget-boolean v5, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mUseSections:Z

    if-eqz v5, :cond_8

    .line 175
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->forClass(Ljava/lang/Class;)Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object v4, v5

    .line 181
    :cond_8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 183
    check-cast v3, Lorg/schema/evie/topics/Topic;

    .line 184
    invoke-virtual {v3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 185
    invoke-virtual {v3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 187
    sget-object v7, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    if-eqz v5, :cond_9

    .line 189
    sget-object v7, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    .line 191
    sget-object v7, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    .line 194
    :cond_a
    :goto_4
    iget-object v5, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    iget-object v6, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v5, v3, v7, v6}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v3

    .line 195
    iget-object v5, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    invoke-virtual {v3, v5}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowStateChangedListener(Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    .line 196
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_b
    invoke-direct {p0, v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->processSections(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 204
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->hideLoading()V

    .line 205
    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->onSetItemPresenters(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->setItemPresenters(Ljava/util/List;)V

    return-void
.end method

.method private load(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 125
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->onLoad()Lio/reactivex/Single;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 128
    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$PbhN1KnINH932KkHUVMQvaL_ofg;-><init>(Lcom/evie/sidescreen/personalize/TopicsListPresenter;)V

    .line 129
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$XuZRAm9UEajtHJicGzl5uWW9rX4;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$XuZRAm9UEajtHJicGzl5uWW9rX4;-><init>(Lcom/evie/sidescreen/personalize/TopicsListPresenter;)V

    .line 131
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;

    invoke-direct {v2, p0, p1}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;-><init>(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V

    .line 132
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private processSections(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenter;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-boolean v1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mUseSections:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 228
    invoke-static {}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->values()[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v1, v4

    .line 229
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_0

    .line 230
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 231
    invoke-virtual {p0, v7}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->processDividers(Ljava/util/List;)V

    .line 232
    new-instance v8, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;

    iget v6, v6, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->mTitleResId:I

    invoke-direct {v8, v6, v5}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;-><init>(IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-static {}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->values()[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 241
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 242
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 243
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->processDividers(Ljava/util/List;)V

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->onSetItemPresenters(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->setItemPresenters(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->showLoading()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicsListViewHolder;
    .locals 1

    .line 95
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not used"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getType()I
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public load()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->load(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->showLoading()V

    return-void
.end method

.method protected onLoad()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method protected onSetItemPresenters(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected processDividers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    .line 258
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setShowDivider(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOptions(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->clear()V

    .line 119
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    .line 120
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->load()V

    return-void
.end method
