.class public Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TilesErrorPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->mModel:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

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

    .line 10
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;
    .locals 1

    .line 24
    new-instance v0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 19
    sget v0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;)V
    .locals 0

    return-void
.end method

.method onRetryClick(Landroid/view/View;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->mModel:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->refreshContent(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

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
