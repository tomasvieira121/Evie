.class Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "TopicDetailViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;-><init>(Landroid/view/View;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 53
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->updateVisibility()V

    return-void
.end method
