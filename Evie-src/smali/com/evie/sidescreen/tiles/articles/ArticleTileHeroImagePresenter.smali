.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;
.source "ArticleTileHeroImagePresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

.field private final mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1, p3, p5}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 72
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 73
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 74
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 75
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;
    .locals 1

    .line 99
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;-><init>(Landroid/view/View;)V

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

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_image"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 83
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 89
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->ID:I

    return v0
.end method

.method public launchWebViewer(Landroid/view/View;)V
    .locals 11

    .line 149
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Lorg/schema/Organization;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v1

    .line 155
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 156
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schema/Thing;

    .line 159
    instance-of v6, v5, Lorg/schema/evie/topics/Topic;

    if-eqz v6, :cond_3

    .line 160
    check-cast v5, Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAnalytics()Ljava/util/Map;

    move-result-object v1

    const-string v5, "analytics_proto"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    sget-object v5, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onArticleClick(Landroid/view/View;Landroid/content/Context;)V
    .locals 8

    .line 118
    invoke-super {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onArticleClick(Landroid/view/View;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->trackTap()V

    const-string v0, "image"

    .line 121
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x44c

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    .line 127
    instance-of v4, p1, Landroid/widget/ImageView;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 128
    :goto_0
    iget-object v6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v6, v3, v0, v7, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->create(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Landroid/widget/ImageView;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p2, v5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    .line 130
    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 133
    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->showPopup()V

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    .line 137
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 139
    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {v0, p1, p2, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    const/4 p2, 0x1

    :cond_2
    if-nez p2, :cond_3

    .line 144
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->launchWebViewer(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V

    .line 106
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/ImageObject;

    invoke-virtual {v0}, Lorg/schema/ImageObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3fe38e39

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->showImage(Ljava/lang/String;F)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->hideImage()V

    :goto_1
    return-void
.end method

.method public onCaptionClick(Landroid/content/Context;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->getImage()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->onArticleClick(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trackTap()V
    .locals 3

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_article"

    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 177
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_content_tile"

    .line 178
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 179
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
