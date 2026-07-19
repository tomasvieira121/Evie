.class Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BreakingNewsViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding;Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;->onDismiss(Landroid/view/View;)V

    return-void
.end method
