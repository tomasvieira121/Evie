.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BreakingNewsTileViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

.field private view7f0b0057:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->breakingnews_row_description:I

    const-string v1, "field \'mDescription\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mDescription:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->breakingnews_row_image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->breakingnews_row_title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mTitle:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->breakingnews_image_padding:I

    const-string v1, "field \'mPadding\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mPadding:Landroid/view/View;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->breakingnews_row:I

    const-string v1, "method \'onTileClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->view7f0b0057:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mDescription:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mTitle:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->mPadding:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->view7f0b0057:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;->view7f0b0057:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
