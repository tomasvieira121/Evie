.class public Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.source "ArticleSeedPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mArticleBody:Ljava/lang/String;


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

    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;
    .locals 1

    .line 56
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_article"

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 107
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getImageAspectRatio()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 51
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->ID:I

    return v0
.end method

.method public onArticleClick(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->trackTap()V

    .line 99
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->launchWebViewer(Landroid/view/View;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 68
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->hideHeader()V

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticleBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticleBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->showArticleBody(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->hideSubtitle()V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/ImageObject;

    invoke-virtual {v0}, Lorg/schema/ImageObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3fe38e39

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->showImage(Ljava/lang/String;F)V

    goto :goto_2

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->hideImage()V

    :goto_2
    return-void
.end method

.method public setArticleBody(Ljava/lang/String;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mArticleBody:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->showArticleBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
