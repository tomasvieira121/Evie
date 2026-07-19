.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.source "ArticleTileHeroCaptionPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContentPresenter:Lcom/evie/sidescreen/tiles/TilePresenter;


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

    .line 17
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;
    .locals 1

    .line 42
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;-><init>(Landroid/view/View;)V

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
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;->ID:I

    return v0
.end method

.method public onArticleClick(Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->mContentPresenter:Lcom/evie/sidescreen/tiles/TilePresenter;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 65
    instance-of v2, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/TilePresenter;->getViewHolder()Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {v2, p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->onMediaClick(Landroid/view/View;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    goto :goto_0

    .line 68
    :cond_0
    instance-of v2, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;

    if-eqz v2, :cond_1

    .line 69
    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->onMediaClick(Landroid/view/View;)V

    goto :goto_0

    .line 71
    :cond_1
    instance-of v2, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;

    if-eqz v2, :cond_2

    .line 72
    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->onMediaClick(Landroid/view/View;)V

    goto :goto_0

    .line 74
    :cond_2
    instance-of v2, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;

    if-eqz v2, :cond_3

    .line 75
    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->onCaptionClick(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 80
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onArticleClick(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroContentViewHolder;->hideSubtitle()V

    :goto_0
    return-void
.end method

.method public setContentPresenter(Lcom/evie/sidescreen/tiles/TilePresenter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->mContentPresenter:Lcom/evie/sidescreen/tiles/TilePresenter;

    return-void
.end method

.method public shouldReportImpressionEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
