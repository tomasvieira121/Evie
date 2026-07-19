.class public abstract Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "AbstractHeroPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;",
        ">",
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mTopHeroMode:Z


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->mTopHeroMode:Z

    return-void
.end method


# virtual methods
.method public onArticleClick(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onTapped()V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->mTopHeroMode:Z

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->setTopHeroMode(Z)V

    return-void
.end method

.method public onMediaClick(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onTapped()V

    return-void
.end method

.method public onMediaClick(Landroid/view/View;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onTapped()V

    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->mTopHeroMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/TilePresenter;->shouldShowBottomTileDivider()Z

    move-result v0

    return v0
.end method
