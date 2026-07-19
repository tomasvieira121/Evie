.class Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;
.super Ljava/lang/Object;
.source "SpringRecyclerView.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

.field final synthetic this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;


# direct methods
.method public constructor <init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 78
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 81
    new-instance p1, Lcom/voxel/recyclerview/widget/SpringOverScroller;

    invoke-direct {p1}, Lcom/voxel/recyclerview/widget/SpringOverScroller;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    return-void
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 187
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 203
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$500(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    .line 204
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$600(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    .line 206
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$700(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$800(Lcom/voxel/recyclerview/widget/SpringRecyclerView;I)F

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$100(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$800(Lcom/voxel/recyclerview/widget/SpringRecyclerView;I)F

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    iget v3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    iget v4, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->fling(IIFF)V

    .line 209
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public postOnAnimation()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->disableRunOnAnimationRequests()V

    .line 87
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->consumePendingUpdateOperations()V

    .line 90
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    .line 91
    iget-object v2, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v2, v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 92
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->getCurrX()I

    move-result v3

    .line 93
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->getCurrY()I

    move-result v4

    .line 94
    iget v5, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    sub-int v5, v3, v5

    .line 95
    iget v6, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    sub-int v6, v4, v6

    .line 98
    iput v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    .line 99
    iput v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    .line 101
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 102
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->eatRequestLayout()V

    .line 103
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    iget-object v8, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v9, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v9, v9, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, v5, v8, v9}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    sub-int v8, v5, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 109
    iget-object v9, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v9}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    iget-object v10, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v10, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v11, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v11, v11, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9, v6, v10, v11}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v9

    sub-int v10, v6, v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 113
    :goto_1
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v11}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->supportsChangeAnimations()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 115
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v11, v11, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v11}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 117
    iget-object v13, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v13, v13, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v13, v12}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 118
    iget-object v14, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v14, v13}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 119
    iget-object v15, v14, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v15, :cond_3

    .line 120
    iget-object v14, v14, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v14, v14, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 122
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    .line 123
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ne v15, v4, :cond_2

    .line 124
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v13, v4, :cond_3

    .line 126
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v15

    .line 127
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v7, v13, v16

    .line 125
    invoke-virtual {v14, v15, v13, v4, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_7

    .line 133
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_7

    .line 134
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 135
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 137
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_3

    .line 138
    :cond_5
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v7

    if-lt v7, v4, :cond_6

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    .line 139
    invoke-virtual {v2, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int/2addr v5, v8

    sub-int/2addr v6, v10

    .line 140
    invoke-virtual {v2, v5, v6}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_3

    :cond_6
    sub-int/2addr v5, v8

    sub-int/2addr v6, v10

    .line 142
    invoke-virtual {v2, v5, v6}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 145
    :cond_7
    :goto_3
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRunningLayoutOrScroll:Z

    .line 146
    invoke-virtual {v4, v5}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resumeRequestLayout(Z)V

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 148
    :goto_4
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 149
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->invalidate()V

    :cond_9
    if-nez v8, :cond_a

    if-eqz v10, :cond_b

    .line 153
    :cond_a
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    neg-int v5, v10

    invoke-virtual {v4, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 155
    :cond_b
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isCoastingY()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$100(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v4

    if-eqz v4, :cond_c

    .line 156
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    const/16 v17, 0x0

    iget-object v5, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getCurrentScrollPositionY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v5, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$200(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v21

    iget-object v5, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$300(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result v22

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->springBack(IIIIII)Z

    :cond_c
    if-nez v3, :cond_d

    if-nez v9, :cond_d

    if-nez v8, :cond_d

    if-eqz v10, :cond_e

    .line 160
    :cond_d
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    add-int/2addr v3, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v3, v9}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->notifyOnScrolled(II)V

    .line 163
    :cond_e
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$400(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 164
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->invalidate()V

    .line 167
    :cond_f
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 168
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->postOnAnimation()V

    :goto_5
    if-eqz v2, :cond_11

    .line 174
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 175
    invoke-virtual {v2, v3, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 177
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 217
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 225
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 226
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {p3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$500(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result p3

    iput p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    .line 227
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-static {p3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->access$600(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I

    move-result p3

    iput p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    .line 228
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    iget p4, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingX:I

    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mLastFlingY:I

    add-int/2addr p1, p4

    add-int/2addr p2, v0

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->startScroll(IIII)V

    .line 229
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;->mScroller:Lcom/voxel/recyclerview/widget/SpringOverScroller;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/SpringOverScroller;->abortAnimation()V

    return-void
.end method
