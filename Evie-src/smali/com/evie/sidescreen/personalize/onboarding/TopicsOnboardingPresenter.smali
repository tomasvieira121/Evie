.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;
.super Lcom/evie/sidescreen/personalize/TopicsListPresenter;
.source "TopicsOnboardingPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# instance fields
.field private mLoadedSuggested:Z

.field private final mOnboardingItemPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private final mSuggestedItemPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;)V
    .locals 7
    .param p5    # Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p7

    move-object v5, p8

    move-object v6, p3

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;-><init>(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mOnboardingItemPresenters:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mLoadedSuggested:Z

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    .line 63
    iput-object p5, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mOnboardingItemPresenters:Ljava/util/ArrayList;

    new-instance p2, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;

    invoke-direct {p2, p6}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;-><init>(Lcom/evie/sidescreen/ActivityStarter;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIds(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->getId(Ljava/lang/Object;)Lorg/schema/Id;

    move-result-object p1

    .line 199
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->getId(Ljava/lang/Object;)Lorg/schema/Id;

    move-result-object p2

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->checkIds(Lorg/schema/Id;Lorg/schema/Id;)Z

    move-result p1

    return p1
.end method

.method private checkIds(Lorg/schema/Id;Lorg/schema/Id;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getId(Ljava/lang/Object;)Lorg/schema/Id;
    .locals 1

    .line 206
    instance-of v0, p1, Lorg/schema/Id;

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Lorg/schema/Id;

    return-object p1

    .line 209
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    if-eqz v0, :cond_1

    .line 210
    check-cast p1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getTopic()Lorg/schema/evie/topics/Topic;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$1BE9TnQsdOA8UixGhyfit1eyE2k(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$onLoad$0(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;Lio/reactivex/subjects/SingleSubject;Lcom/evie/common/data/Lce;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/SingleSubject;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/ListTopicsResult;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {p2}, Lcom/evie/models/topics/data/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/Thing;

    .line 94
    instance-of v2, v1, Lorg/schema/evie/topics/Topic;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    check-cast v1, Lorg/schema/evie/topics/Topic;

    invoke-virtual {v2, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->addToPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V

    .line 97
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    sget-object v3, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    iget-object v4, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v2, v1, v3, v4}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowStateChangedListener(Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_2
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/SingleSubject;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onSetItemPresenters$1(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    .line 145
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getTopic()Lorg/schema/evie/topics/Topic;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->removeFromPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V

    .line 146
    sget-object v2, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowState(Lcom/evie/sidescreen/personalize/FollowState;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLoad()Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lio/reactivex/subjects/SingleSubject;->create()Lio/reactivex/subjects/SingleSubject;

    move-result-object v0

    .line 71
    iget-boolean v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mLoadedSuggested:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mLoadedSuggested:Z

    .line 73
    new-instance v1, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {v1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>()V

    .line 74
    invoke-virtual {v1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setSuggested()V

    const/4 v2, 0x5

    .line 75
    invoke-virtual {v1, v2}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setLimit(I)V

    .line 78
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 79
    invoke-virtual {v3, v1}, Lcom/evie/models/topics/TopicsModel;->listTopics(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)Lio/reactivex/Observable;

    move-result-object v1

    .line 80
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$1BE9TnQsdOA8UixGhyfit1eyE2k;

    invoke-direct {v3, p0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$1BE9TnQsdOA8UixGhyfit1eyE2k;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;)V

    .line 81
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;

    invoke-direct {v3, p0, v0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;Lio/reactivex/subjects/SingleSubject;)V

    .line 82
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/SingleSubject;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method protected onSetItemPresenters(Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    if-nez p1, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mOnboardingItemPresenters:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 130
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 133
    invoke-direct {p0, v2, v4}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->checkIds(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->processDividers(Ljava/util/List;)V

    .line 143
    new-instance v1, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$jo-3HyjxYgl6q8iJ8fcCdjfehCc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$jo-3HyjxYgl6q8iJ8fcCdjfehCc;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;)V

    .line 150
    iget-object v4, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mSuggestedItemPresenters:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 151
    new-instance v4, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;

    sget v5, Lcom/evie/sidescreen/R$string;->ss_topics_section_suggested:I

    invoke-direct {v4, v5, v2, v1}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;-><init>(IZLjava/lang/Runnable;)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPersonalizeOnboardingList()Ljava/util/List;

    move-result-object v1

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schema/evie/topics/Topic;

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 161
    invoke-direct {p0, v5, v7}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->checkIds(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 162
    check-cast v7, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    sget-object v6, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v7, v6}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowState(Lcom/evie/sidescreen/personalize/FollowState;)V

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_5

    .line 169
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 174
    new-instance v1, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;

    sget v5, Lcom/evie/sidescreen/R$string;->ss_topics_section_other:I

    invoke-direct {v1, v5, v2}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;-><init>(IZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/evie/topics/Topic;

    .line 177
    iget-object v4, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    sget-object v5, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    iget-object v6, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v4, v2, v5, v6}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v2

    .line 178
    iget-object v4, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    invoke-virtual {v2, v4}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowStateChangedListener(Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 183
    instance-of v4, v2, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;

    if-eqz v4, :cond_b

    .line 184
    move-object v4, v2

    check-cast v4, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;

    invoke-virtual {v4, v3}, Lcom/evie/sidescreen/personalize/onboarding/TopicSuggestedHeaderItemPresenter;->setIsFirstSection(Z)V

    .line 186
    :cond_b
    instance-of v4, v2, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;

    if-eqz v4, :cond_a

    .line 187
    check-cast v2, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;

    invoke-virtual {v2, v3}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;->setIsFirstSection(Z)V

    goto :goto_4

    .line 193
    :cond_c
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
