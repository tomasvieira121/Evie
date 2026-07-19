.class public abstract Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# virtual methods
.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .line 7804
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getTargetPosition()I
    .locals 1

    .line 7775
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 7757
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 7765
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected onAnimation(II)V
    .locals 3

    .line 7779
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7780
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_1
    const/4 v0, 0x0

    .line 7782
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 7783
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 7785
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v0, v1, :cond_2

    .line 7786
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 7787
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->access$4400(Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 7788
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_2
    const-string v0, "RecyclerView"

    const-string v1, "Passed over target position while smooth scrolling."

    .line 7790
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7791
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 7794
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v0, :cond_4

    .line 7795
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 7796
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->access$4400(Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;Lcom/voxel/recyclerview/widget/RecyclerView;)V

    :cond_4
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 7829
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7830
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    .line 7716
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method protected final stop()V
    .locals 2

    .line 7733
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 7736
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 7737
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$4102(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    const/4 v0, 0x0

    .line 7738
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 7739
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, 0x0

    .line 7740
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 7741
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 7743
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->access$4300(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 7745
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7746
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    return-void
.end method
