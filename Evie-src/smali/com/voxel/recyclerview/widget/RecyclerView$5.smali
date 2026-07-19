.class Lcom/voxel/recyclerview/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;->initAdapterManager()V
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

    .line 459
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .line 502
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/voxel/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/voxel/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/voxel/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    .line 504
    :pswitch_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/voxel/recyclerview/widget/RecyclerView;II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findViewHolder(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    iget-object v2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public markViewHoldersUpdated(II)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->viewRangeUpdate(II)V

    .line 493
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 526
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 533
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 480
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iput-boolean v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 481
    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1000(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1002(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 487
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$5;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$5;->dispatchUpdate(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$5;->dispatchUpdate(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
