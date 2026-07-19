.class public Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.source "RelatedArticlePresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter<",
        "Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;",
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

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindImage(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;IF)V
    .locals 0

    .line 23
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->bindImage(Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;IF)V

    return-void
.end method

.method protected bindImage(Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;IF)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schema/VideoObject;

    invoke-virtual {p2}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindImage(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;IF)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->bindTitle(Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;)V

    return-void
.end method

.method protected bindTitle(Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->showTitle(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->hideSubtitle()V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->showPlayButton()V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->hidePlayButton()V

    :goto_1
    return-void
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;
    .locals 1

    .line 48
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;-><init>(Landroid/view/View;)V

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

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 77
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 78
    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "trending_video"

    goto :goto_0

    :cond_0
    const-string v2, "trending_article"

    .line 77
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 79
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getImageAspectRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getType()I
    .locals 1

    .line 43
    sget v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->ID:I

    return v0
.end method

.method public onArticleClick(Landroid/view/View;)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->trackTap()V

    .line 97
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setArticle(Lorg/schema/NewsArticle;Z)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->handleArticleClick(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->launchWebViewer(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected trackTap()V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 117
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 118
    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "trending_video"

    goto :goto_0

    :cond_0
    const-string v2, "trending_article"

    .line 117
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 119
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_content_tile"

    .line 120
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 121
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
