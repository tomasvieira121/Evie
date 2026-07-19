.class public Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;
.super Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;
.source "PlainTilesHeaderPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter<",
        "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private mDebugDataUsage:Ljava/lang/Runnable;

.field private mDebugDataUsageEnabled:Z

.field private final mEnableDataDebug:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaderTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsageEnabled:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;-><init>(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebug:Lio/reactivex/Observable;

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mHeaderTitle:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebug:Lio/reactivex/Observable;

    new-instance v0, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PlainTilesHeaderPresenter$t21twb_ygB2oE9vfkzmn965baG4;

    invoke-direct {v0, p0, p2}, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PlainTilesHeaderPresenter$t21twb_ygB2oE9vfkzmn965baG4;-><init>(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsageEnabled:Z

    .line 30
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p2, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsageEnabled:Z

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mHeaderTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;
    .locals 1

    .line 40
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 67
    sget v0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebug:Lio/reactivex/Observable;

    new-instance v0, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PlainTilesHeaderPresenter$vUNbjFASiXQTLk-XKMKTeW23970;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PlainTilesHeaderPresenter$vUNbjFASiXQTLk-XKMKTeW23970;-><init>(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;->onUnbindViewHolder()V

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;->onVisibilityChanged(Z)V

    .line 88
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsageEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
