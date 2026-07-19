.class public Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.source "VideoSeedPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter<",
        "Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;
    .locals 1

    .line 42
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getImageAspectRatio()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 37
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_video_related_seed:I

    return v0
.end method

.method public onArticleClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 53
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->hideHeader()V

    .line 54
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->hideHeaderContextButton()V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->setHeaderContextButtonClickability(Z)V

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->hideSubtitle()V

    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method
