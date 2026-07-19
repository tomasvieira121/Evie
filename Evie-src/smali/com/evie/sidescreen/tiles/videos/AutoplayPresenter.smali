.class public Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "AutoplayPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private mAutoplay:Z

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Z)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    .line 31
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 32
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 33
    iput-boolean p3, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mAutoplay:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;
    .locals 1

    .line 38
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 21
    sget v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mAutoplay:Z

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->setAutoplay(Z)V

    return-void
.end method

.method public onCheckedChanged(Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setAutoplay(Z)V

    :cond_0
    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
