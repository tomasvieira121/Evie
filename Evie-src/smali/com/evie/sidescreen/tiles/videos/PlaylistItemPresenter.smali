.class public Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "PlaylistItemPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mArticle:Lorg/schema/NewsArticle;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p3, p5}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 42
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    return-void
.end method

.method private getViewsString(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const v0, 0xf4240

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    .line 80
    sget v3, Lcom/evie/sidescreen/R$string;->ss_million_views:I

    new-array v2, v2, [Ljava/lang/Object;

    div-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    .line 82
    sget v3, Lcom/evie/sidescreen/R$string;->ss_thousand_views:I

    new-array v2, v2, [Ljava/lang/Object;

    div-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :cond_1
    sget v0, Lcom/evie/sidescreen/R$string;->ss_views:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;
    .locals 1

    .line 56
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;-><init>(Landroid/view/View;)V

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

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 93
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getArticle()Lorg/schema/NewsArticle;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 47
    sget v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;)V
    .locals 6

    .line 61
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->showTitle(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/VideoObject;

    invoke-virtual {v1}, Lorg/schema/VideoObject;->getDuration()I

    move-result v1

    .line 66
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v3}, Lorg/schema/NewsArticle;->getViews()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->getViewsString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->showSubtitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "%d:%02d \u00b7 %s"

    const/4 v4, 0x3

    .line 70
    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->showSubtitle(Ljava/lang/String;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->hideSubtitle()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->onTapped()V

    .line 99
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->trackTap()V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    instance-of v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    :cond_0
    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trackTap()V
    .locals 3

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 111
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_content_tile"

    .line 112
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 113
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
