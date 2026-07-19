.class Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 3146
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3137
    invoke-static {}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3141
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3144
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3147
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    .line 3315
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3316
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int p3, p3, p3

    mul-int p4, p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 3318
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 3319
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz v2, :cond_1

    .line 3320
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p2

    .line 3321
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 3322
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 3324
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p1

    mul-float p1, p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 3328
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    .line 3333
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 3272
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    .line 3273
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 3310
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 3311
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 3277
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3278
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 3279
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    .line 3293
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 3294
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3295
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 3297
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public postOnAnimation()V
    .locals 1

    .line 3284
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3285
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 3287
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3288
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 3152
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 3153
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 3156
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    .line 3157
    iget-object v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v2, v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 3158
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3159
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 3160
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    .line 3161
    iget v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 3162
    iget v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 3165
    iput v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3166
    iput v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 3168
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_b

    .line 3169
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 3170
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iput-boolean v9, v8, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz v6, :cond_0

    .line 3172
    invoke-static {v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    iget-object v10, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v8, v6, v10, v11}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    sub-int v10, v6, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 3176
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v11}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v11

    iget-object v12, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v12, v12, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v13, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v13, v13, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v11, v7, v12, v13}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3179
    :goto_1
    iget-object v13, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v13}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3181
    iget-object v13, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v13, v13, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v13}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    .line 3183
    iget-object v15, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v15, v15, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v15, v14}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3184
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v15}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3185
    iget-object v9, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_4

    .line 3186
    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3187
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 3188
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v8

    .line 3189
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ne v9, v8, :cond_3

    .line 3190
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    if-eq v15, v8, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v18, v11

    goto :goto_4

    .line 3192
    :cond_3
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 3193
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v18, v11

    add-int v11, v15, v17

    .line 3191
    invoke-virtual {v4, v9, v15, v8, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    move/from16 v16, v8

    move/from16 v18, v11

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move/from16 v11, v18

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move/from16 v16, v8

    move/from16 v18, v11

    goto :goto_5

    :cond_6
    move/from16 v16, v8

    move/from16 v18, v11

    :goto_5
    if-eqz v2, :cond_a

    .line 3199
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3200
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3201
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 3203
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    const/4 v8, 0x1

    goto :goto_6

    .line 3204
    :cond_7
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v8

    if-lt v8, v4, :cond_8

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    .line 3205
    invoke-virtual {v2, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    .line 3206
    invoke-virtual {v2, v4, v9}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_6

    :cond_8
    const/4 v8, 0x1

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    .line 3208
    invoke-virtual {v2, v4, v9}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_6

    :cond_9
    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x1

    .line 3211
    :goto_6
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 3212
    invoke-virtual {v4, v9}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    move/from16 v4, v16

    move/from16 v9, v18

    goto :goto_7

    :cond_b
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 3214
    :goto_7
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 3215
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidate()V

    .line 3217
    :cond_c
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_d

    .line 3219
    iget-object v11, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v6, v7}, Lcom/voxel/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_d
    if-nez v10, :cond_e

    if-eqz v12, :cond_18

    .line 3222
    :cond_e
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v11

    float-to-int v11, v11

    if-eq v10, v3, :cond_11

    if-gez v10, :cond_f

    neg-int v14, v11

    goto :goto_8

    :cond_f
    if-lez v10, :cond_10

    move v14, v11

    goto :goto_8

    :cond_10
    const/4 v14, 0x0

    goto :goto_8

    :cond_11
    const/4 v14, 0x0

    :goto_8
    if-eq v12, v5, :cond_14

    if-gez v12, :cond_12

    neg-int v11, v11

    goto :goto_9

    :cond_12
    if-lez v12, :cond_13

    goto :goto_9

    :cond_13
    const/4 v11, 0x0

    goto :goto_9

    :cond_14
    const/4 v11, 0x0

    .line 3234
    :goto_9
    iget-object v15, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v15

    if-eq v15, v13, :cond_15

    .line 3236
    iget-object v13, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v14, v11}, Lcom/voxel/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    :cond_15
    if-nez v14, :cond_16

    if-eq v10, v3, :cond_16

    .line 3238
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    if-nez v11, :cond_17

    if-eq v12, v5, :cond_17

    .line 3239
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-nez v3, :cond_18

    .line 3240
    :cond_17
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    :cond_18
    if-nez v4, :cond_19

    if-eqz v9, :cond_1a

    .line 3244
    :cond_19
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4, v9}, Lcom/voxel/recyclerview/widget/RecyclerView;->notifyOnScrolled(II)V

    .line 3247
    :cond_1a
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2200(Lcom/voxel/recyclerview/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3248
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_1b
    if-eqz v7, :cond_1c

    .line 3251
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-ne v9, v7, :cond_1c

    const/4 v3, 0x1

    goto :goto_a

    :cond_1c
    const/4 v3, 0x0

    :goto_a
    if-eqz v6, :cond_1d

    .line 3253
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-ne v4, v6, :cond_1d

    const/4 v4, 0x1

    goto :goto_b

    :cond_1d
    const/4 v4, 0x0

    :goto_b
    if-nez v6, :cond_1e

    if-eqz v7, :cond_20

    :cond_1e
    if-nez v4, :cond_20

    if-eqz v3, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v8, 0x0

    .line 3258
    :cond_20
    :goto_c
    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_22

    if-nez v8, :cond_21

    goto :goto_d

    .line 3261
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    const/4 v3, 0x0

    goto :goto_e

    .line 3259
    :cond_22
    :goto_d
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_e

    :cond_23
    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_24

    .line 3265
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3266
    invoke-virtual {v2, v3, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 3268
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3301
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    .line 3337
    invoke-static {}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 3341
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 3342
    iput-object p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3343
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p4

    iput-object p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    .line 3345
    :cond_0
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 3346
    iput p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3347
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 3348
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 3352
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3353
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method
