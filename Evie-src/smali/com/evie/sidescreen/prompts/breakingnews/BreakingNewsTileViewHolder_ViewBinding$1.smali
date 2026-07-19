.class Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BreakingNewsTileViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTileViewHolder;->onTileClick()V

    return-void
.end method
