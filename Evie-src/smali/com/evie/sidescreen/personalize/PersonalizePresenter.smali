.class public Lcom/evie/sidescreen/personalize/PersonalizePresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "PersonalizePresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPersonalizePagePresenterFactory:Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;)V
    .locals 0
    .param p2    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 31
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 32
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mPersonalizePagePresenterFactory:Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;

    return-void
.end method

.method public static synthetic lambda$refresh$0(Lcom/evie/sidescreen/personalize/PersonalizePresenter;ZLcom/evie/common/data/Lce;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->showLoading()V

    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 68
    :cond_2
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/PersonalizeResult;

    if-eqz p1, :cond_4

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p2}, Lcom/evie/models/topics/data/PersonalizeResult;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/topics/data/PersonalizePage;

    .line 73
    new-instance v2, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v3}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mPersonalizePagePresenterFactory:Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;

    invoke-virtual {v1}, Lcom/evie/models/topics/data/PersonalizePage;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, p0, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;->create(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/PersonalizePresenter;Ljava/lang/String;)Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;

    move-result-object v1

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->setTabs(Ljava/util/List;)V

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p2}, Lcom/evie/models/topics/data/PersonalizeResult;->getFollowing()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->setFollows(Ljava/util/List;)V

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p2}, Lcom/evie/models/topics/data/PersonalizeResult;->getBlocked()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->setBlocks(Ljava/util/List;)V

    .line 82
    invoke-virtual {p2}, Lcom/evie/models/topics/data/PersonalizeResult;->getPages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/topics/data/PersonalizePage;

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {v0, p2}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->setPageData(Lcom/evie/models/topics/data/PersonalizePage;)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->dataSetChanged()V

    .line 86
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->hideLoading()V

    return-void

    .line 64
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->showError()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;
    .locals 1

    .line 42
    new-instance v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 37
    sget v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->refresh(Z)V

    return-void
.end method

.method public onFollowStateChanged(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeViewHolder;->invalidateOtherPages(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V

    return-void
.end method

.method public refresh(Z)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 53
    invoke-virtual {v1}, Lcom/evie/models/topics/TopicsModel;->getPersonalize()Lio/reactivex/Observable;

    move-result-object v1

    .line 54
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/personalize/-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE;->INSTANCE:Lcom/evie/sidescreen/personalize/-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE;

    .line 55
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;

    invoke-direct {v2, p0, p1}, Lcom/evie/sidescreen/personalize/-$$Lambda$PersonalizePresenter$5huMTIofhz-373QnLUxJQEqhBv4;-><init>(Lcom/evie/sidescreen/personalize/PersonalizePresenter;Z)V

    .line 56
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
