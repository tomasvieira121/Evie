.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "BreakingNewsFooterPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundReliesOnAlpha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public backgroundReliesOnPrevAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;
    .locals 1

    .line 17
    new-instance v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 12
    sget v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;->onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;)V
    .locals 0

    return-void
.end method

.method public shouldFillInBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundBottomCorners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundTopCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
