.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;
.super Lcom/evie/sidescreen/prompts/PromptsPresenter;
.source "BreakingNewsTilePresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/prompts/PromptsPresenter<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private mIndex:I

.field private mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

.field private mPromptStore:Lcom/evie/models/PromptStoreModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/models/breakingnews/data/BreakingNews;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/prompts/PromptsPresenter;-><init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 36
    iput-object p3, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 37
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mPromptStore:Lcom/evie/models/PromptStoreModel;

    .line 38
    iput-object p4, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    .line 39
    iput p5, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mIndex:I

    return-void
.end method

.method private bindView()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->hideImage()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->showImage(Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private launchWebViewer(Lcom/evie/models/breakingnews/data/BreakingNews;)V
    .locals 11

    .line 75
    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubFavicon()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 81
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 82
    invoke-virtual/range {v1 .. v10}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public backgroundReliesOnAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public backgroundReliesOnPrevAlpha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;
    .locals 2

    .line 49
    new-instance v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-direct {v0, p1, v1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;-><init>(Landroid/view/View;Lcom/evie/models/breakingnews/data/BreakingNews;)V

    return-object v0
.end method

.method public getTrackableAttributes()Ljava/util/Map;
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

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_article"

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_subtype"

    const-string v2, "breaking_news"

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_breakingnews"

    .line 123
    iget-object v2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_position"

    .line 124
    iget v2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 44
    sget v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->ID:I

    return v0
.end method

.method public isSameItem(Ljava/lang/Object;)Z
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/evie/sidescreen/prompts/PromptsPresenter;->isSameItem(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    check-cast p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;

    .line 103
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    iget-object p1, p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v0, p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->bindView()V

    return-void
.end method

.method public onTileClick()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mPromptStore:Lcom/evie/models/PromptStoreModel;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {v0, v1}, Lcom/evie/models/PromptStoreModel;->removeSingleBreakingNews(Lcom/evie/models/breakingnews/data/BreakingNews;)V

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mNews:Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->launchWebViewer(Lcom/evie/models/breakingnews/data/BreakingNews;)V

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;->getTrackableAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public shouldFillInBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundBottomCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldRoundTopCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
