.class public Lcom/evie/sidescreen/tiles/TilesSection;
.super Ljava/lang/Object;
.source "TilesSection.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;
    }
.end annotation


# instance fields
.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

.field private final mContentModelInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentReplacer:Lcom/evie/sidescreen/mvp/Replacer;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mDisposed:Z

.field private final mFooterPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

.field private final mHeaderPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

.field private mIdleRefreshTimeLimit:J

.field private final mIdleRefreshTimeLimitObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIntervalRefreshSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLeaveTime:J

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private mShouldRefresh:Z

.field private mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTilesErrorPresenter:Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

.field private final mTilesLoadingPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

.field private final mUnactivatedOverridePresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ConnectivityModel;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Ljavax/inject/Provider;Lio/reactivex/Observable;Ljava/util/List;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/mvp/ItemPresenter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Lcom/evie/sidescreen/ActivationModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/ConnectivityModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Lio/reactivex/Observable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p10    # Lio/reactivex/disposables/CompositeDisposable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evie/sidescreen/ActivationModel;",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            "Lcom/evie/models/sidescreen/SideScreenContentModelInterface;",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/evie/sidescreen/tiles/footer/TilesFooterPresenter;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/footer/TilesFooterPresenter;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mFooterPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mShouldRefresh:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 66
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposed:Z

    .line 75
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 77
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 78
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIntervalRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mCurrentReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    .line 97
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 99
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 100
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    .line 101
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 102
    iput-object p11, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTilesErrorPresenter:Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    .line 103
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTilesLoadingPresenterProvider:Ljavax/inject/Provider;

    .line 104
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIdleRefreshTimeLimitObservable:Lio/reactivex/Observable;

    .line 105
    iput-object p9, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mUnactivatedOverridePresenters:Ljava/util/List;

    .line 106
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mContentModelInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    .line 107
    iput-object p12, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 108
    iput-object p13, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mHeaderPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 110
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$lnCvBz7qEjBr0TXKXKFYbeME6eo;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$lnCvBz7qEjBr0TXKXKFYbeME6eo;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p10, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$KUhjovzRN8cZwiW55hLHfBJPDsc;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$KUhjovzRN8cZwiW55hLHfBJPDsc;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p10, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 118
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$tEIvu-zh_X-TqAv-oF6PM0efYls;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$tEIvu-zh_X-TqAv-oF6PM0efYls;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p10, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 124
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p10, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 130
    invoke-virtual {p10, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 133
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 134
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    const-class p2, Ljava/lang/Object;

    .line 135
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object p3, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 138
    invoke-virtual {p2, p3}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p2

    const-class p3, Ljava/lang/Object;

    .line 139
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p2

    .line 141
    iget-object p3, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    .line 142
    invoke-virtual {p3}, Lcom/evie/sidescreen/ConnectivityModel;->getObservable()Lio/reactivex/Observable;

    move-result-object p3

    const-class p4, Ljava/lang/Object;

    .line 143
    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p3

    .line 145
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p5, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIdleRefreshTimeLimitObservable:Lio/reactivex/Observable;

    new-instance p6, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$mkeQ3KqH6VAey9zD2U_dBgr1zAY;

    invoke-direct {p6, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$mkeQ3KqH6VAey9zD2U_dBgr1zAY;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 146
    invoke-virtual {p5, p6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p5

    .line 145
    invoke-virtual {p4, p5}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 148
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p5, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {p5}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p5

    new-instance p6, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$RgKcbShH6JIUtClIniCQjqilIyc;

    invoke-direct {p6, p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$RgKcbShH6JIUtClIniCQjqilIyc;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 150
    invoke-virtual {p5, p6}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$ZOPgn1AtwQIustjw8p4DiLQ4aOU;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$ZOPgn1AtwQIustjw8p4DiLQ4aOU;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 158
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 148
    invoke-virtual {p4, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 165
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mContentModelInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    .line 166
    invoke-interface {p2}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->getObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 167
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    sget-object p3, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;->INSTANCE:Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WjGw9PXwziFz_iCNgrwQPkxlUlc;

    .line 168
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/tiles/-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 169
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 170
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->getStarterPresenters()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 171
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$s1cud0FcbrpT94Y7v7uz6opzUls;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$s1cud0FcbrpT94Y7v7uz6opzUls;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 172
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/TilesSection;)Lcom/evie/sidescreen/mvp/Replacer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mCurrentReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/tiles/TilesSection;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method private getContentTilesForLce(Landroid/content/Context;Lcom/evie/common/data/Lce;Lio/reactivex/Observer;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/sidescreen/data/SideScreenContent;",
            ">;",
            "Lio/reactivex/Observer<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "TilesSection encountered an error:"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTilesErrorPresenter:Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getLoadingSource()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeout"

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "error"

    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTilesLoadingPresenterProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {p2}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/sidescreen/data/SideScreenContent;

    if-nez p2, :cond_4

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 261
    :cond_4
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v1

    if-nez v1, :cond_5

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 267
    :cond_5
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 268
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    move-object v1, v2

    move-object v2, p1

    .line 267
    invoke-virtual/range {v1 .. v7}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->processTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    :goto_1
    new-instance p1, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;

    invoke-direct {p1, p0, p3}, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;Lio/reactivex/Observer;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mCurrentReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 274
    instance-of p3, p2, Lcom/evie/sidescreen/mvp/Unreliable;

    if-eqz p3, :cond_6

    .line 275
    check-cast p2, Lcom/evie/sidescreen/mvp/Unreliable;

    iget-object p3, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mCurrentReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    invoke-interface {p2, p3}, Lcom/evie/sidescreen/mvp/Unreliable;->setReplacer(Lcom/evie/sidescreen/mvp/Replacer;)V

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method private getStarterPresenters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mUnactivatedOverridePresenters:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mHeaderPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mTilesLoadingPresenterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/evie/sidescreen/tiles/footer/TilesFooterPresenter;

    invoke-direct {v1}, Lcom/evie/sidescreen/tiles/footer/TilesFooterPresenter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->markRefreshTimerStartIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->markRefreshTimerEnd()V

    return-void
.end method

.method public static synthetic lambda$new$10(Lcom/evie/sidescreen/tiles/TilesSection;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 177
    instance-of v2, v1, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->dispose()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->markRefreshTimerStartIfNeeded()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->markRefreshTimerEnd()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/evie/sidescreen/tiles/TilesSection;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIdleRefreshTimeLimit:J

    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/evie/sidescreen/tiles/TilesSection;Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {p1, p2, p3}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WPlpX6qFjmxxqMUbCM2F21fj7pU;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$WPlpX6qFjmxxqMUbCM2F21fj7pU;-><init>(Lcom/evie/sidescreen/tiles/TilesSection;)V

    .line 153
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$7(Lcom/evie/sidescreen/tiles/TilesSection;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIntervalRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mShouldRefresh:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mShouldRefresh:Z

    .line 161
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mContentModelInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    const-string v1, "timeout"

    invoke-interface {v0, v1}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->refreshContent(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$new$8(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/common/data/Lce;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {p0, v0, p1, v1}, Lcom/evie/sidescreen/tiles/TilesSection;->getContentTilesForLce(Landroid/content/Context;Lcom/evie/common/data/Lce;Lio/reactivex/Observer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$new$9(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$null$5(Lcom/evie/sidescreen/tiles/TilesSection;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/TilesSection;->shouldRefresh()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 155
    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 156
    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    .line 157
    invoke-virtual {p1}, Lcom/evie/sidescreen/ConnectivityModel;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private markRefreshTimerEnd()V
    .locals 7

    .line 219
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 221
    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIdleRefreshTimeLimit:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mShouldRefresh:Z

    .line 226
    :cond_0
    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    return-void
.end method

.method private markRefreshTimerStartIfNeeded()V
    .locals 5

    .line 213
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mLeaveTime:J

    :cond_0
    return-void
.end method

.method private shouldRefresh()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mShouldRefresh:Z

    return v0
.end method


# virtual methods
.method protected assembleSectionWithContent(Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 284
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mHeaderPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mFooterPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposed:Z

    return-void
.end method

.method public getPresenters()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mDisposed:Z

    return v0
.end method

.method public isRefreshedAfterInterval()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection;->mIntervalRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method
