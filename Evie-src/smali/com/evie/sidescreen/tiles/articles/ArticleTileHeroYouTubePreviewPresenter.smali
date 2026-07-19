.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;
.source "ArticleTileHeroYouTubePreviewPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

.field private mContext:Landroid/content/Context;

.field private mVideo:Lorg/schema/VideoObject;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Landroid/content/Context;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0, p1, p3, p6}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 65
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 67
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;
    .locals 1

    .line 120
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;-><init>(Landroid/view/View;)V

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

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 75
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 76
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 110
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V

    .line 126
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    const v2, 0x3fe38e39

    invoke-static {v1, v0, v2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v1}, Lorg/schema/VideoObject;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    const/16 v1, 0x9

    .line 135
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->setVideoFrameAspectRatio(II)V

    .line 137
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {p1}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->hideImage()V

    .line 143
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {p1}, Lorg/schema/VideoObject;->getDuration()I

    move-result p1

    if-lez p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->showVideoProgressText(J)V

    goto :goto_2

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->hideVideoProgressText()V

    .line 149
    :goto_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mVideo:Lorg/schema/VideoObject;

    invoke-virtual {p1}, Lorg/schema/VideoObject;->isYouTube()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 150
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/evie/sidescreen/youtube/YouTubeWarmerIntentService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    return-void
.end method

.method public onMediaClick(Landroid/view/View;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onMediaClick(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->trackTap()V

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setArticleResult(Lorg/schema/NewsArticle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trackTap()V
    .locals 3

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 102
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_content_tile"

    .line 103
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 104
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
