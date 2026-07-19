.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.source "ArticleTileRowPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;",
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

    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;->bindTitle(Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;)V

    return-void
.end method

.method protected bindTitle(Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->showTitle(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->hideSubtitle()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;
    .locals 1

    .line 41
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getImageAspectRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 36
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->ID:I

    return v0
.end method
