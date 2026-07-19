.class Lcom/voxel/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$100(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$200(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 203
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 204
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$300(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->rebindUpdatedViewHolders()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_3
    :goto_0
    return-void
.end method
