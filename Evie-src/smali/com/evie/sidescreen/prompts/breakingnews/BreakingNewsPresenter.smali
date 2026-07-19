.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "BreakingNewsPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mPromptStoreModel:Lcom/evie/models/PromptStoreModel;


# direct methods
.method public constructor <init>(Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 24
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

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

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;
    .locals 1

    .line 34
    new-instance v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 29
    sget v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;)V
    .locals 0

    return-void
.end method

.method public onDismissClick(Landroid/view/View;)V
    .locals 2

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_type"

    const-string v1, "dismiss"

    .line 45
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_type"

    const-string v1, "side_screen"

    .line 46
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_subtype"

    const-string v1, "attribute_breakingnews"

    .line 47
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {p1}, Lcom/evie/models/PromptStoreModel;->removeAllBreakingNews()V

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

    const/4 v0, 0x1

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
