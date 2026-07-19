.class public Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicDetailViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    .line 21
    sget v0, Lcom/evie/sidescreen/R$id;->recycler_view:I

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->loading:I

    const-string v1, "field \'mLoading\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLoading:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    .line 32
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->mLoading:Landroid/view/View;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
