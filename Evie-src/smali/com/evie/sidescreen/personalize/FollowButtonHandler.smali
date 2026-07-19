.class public Lcom/evie/sidescreen/personalize/FollowButtonHandler;
.super Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;
.source "FollowButtonHandler.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# instance fields
.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .param p3    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2, p4}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;-><init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 20
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    return-void
.end method

.method public static synthetic lambda$onHandleFollow$0(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 30
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 31
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->showError()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onHandleUnblock$2(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 58
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 59
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->showError()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onHandleUnfollow$1(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lcom/evie/common/data/Lce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 44
    sget-object p2, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 45
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->showError()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v1, p2}, Lcom/evie/models/topics/TopicsModel;->followTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    .line 26
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$gWNLE-l9uWHtAocXokdf06LEtxE;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$gWNLE-l9uWHtAocXokdf06LEtxE;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    .line 27
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onHandleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v1, p2}, Lcom/evie/models/topics/TopicsModel;->unblockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    .line 54
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$ToXBkoEBt7JcnjsL7umuIi4oJpM;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$ToXBkoEBt7JcnjsL7umuIi4oJpM;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    .line 55
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onHandleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonHandler;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v1, p2}, Lcom/evie/models/topics/TopicsModel;->unfollowTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    .line 40
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/-$$Lambda$FollowButtonHandler$_YkJTOA6lDkEVzpJnFbl3pfTxWY;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonHandler;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V

    .line 41
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
