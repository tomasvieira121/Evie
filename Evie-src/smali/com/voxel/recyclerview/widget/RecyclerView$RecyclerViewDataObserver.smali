.class Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 3366
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$1;)V
    .locals 0

    .line 3366
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 3369
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 3375
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2300(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 3378
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2300(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 3380
    :goto_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3381
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 3387
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3388
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->onItemRangeChanged(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3389
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 3395
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3397
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 3403
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3404
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3405
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .line 3418
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2400(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2500(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2600(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2700(Lcom/voxel/recyclerview/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3421
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2802(Lcom/voxel/recyclerview/widget/RecyclerView;Z)Z

    .line 3422
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method
