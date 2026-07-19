.class public final synthetic Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

.field private final synthetic f$1:Lcom/evie/search/model/WebSearchItem;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;Lcom/evie/search/model/WebSearchItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;->f$0:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    iput-object p2, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;->f$1:Lcom/evie/search/model/WebSearchItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;->f$0:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    iget-object v1, p0, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;->f$1:Lcom/evie/search/model/WebSearchItem;

    invoke-static {v0, v1, p1}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->lambda$bindItem$0(Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;Lcom/evie/search/model/WebSearchItem;Landroid/view/View;)V

    return-void
.end method
