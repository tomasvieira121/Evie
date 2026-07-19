.class public Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TilesLoadingPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private mCustomHeight:I

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->showProgress()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->hideProgress()V

    return-void
.end method


# virtual methods
.method public backgroundReliesOnAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public backgroundReliesOnPrevAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;
    .locals 1

    .line 30
    new-instance v0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 25
    sget v0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->ID:I

    return v0
.end method

.method public hasCustomHeight()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->showProgress()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->hideProgress()V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 44
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws;

    invoke-direct {v2, p1}, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws;-><init>(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;)V

    .line 45
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 49
    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$PbcnheJcXNPKK9h7rGdNg37QTlc;

    invoke-direct {v2, p1}, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$PbcnheJcXNPKK9h7rGdNg37QTlc;-><init>(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;)V

    .line 50
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 53
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->hasCustomHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->setHeight(I)V

    :cond_1
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    if-eq p1, v0, :cond_0

    .line 71
    iput p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    .line 72
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    iget v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->mCustomHeight:I

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public shouldFillInBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundBottomCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldRoundTopCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
