.class public abstract Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation


# instance fields
.field mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

.field mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4919
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method static synthetic access$1700(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 0

    .line 4912
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Z)Z
    .locals 0

    .line 4912
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    .line 4912
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 4

    .line 5348
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez p3, :cond_1

    .line 5349
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5358
    :cond_0
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_1

    .line 5351
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3600(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 5360
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5361
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 5371
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 5373
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 5375
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 5383
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_4

    .line 5378
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 5380
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5386
    :cond_5
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1, p2, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 5387
    iput-boolean p2, p3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5388
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 5389
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 5362
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5363
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    .line 5365
    :cond_7
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5367
    :goto_3
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5392
    :cond_8
    :goto_4
    iget-boolean p1, p3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz p1, :cond_9

    .line 5396
    iget-object p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5397
    iput-boolean v2, p3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_9
    return-void
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 0

    .line 5535
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 1

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 6001
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    move p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    move p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_3
    const/4 p3, -0x2

    if-ne p2, p3, :cond_4

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 6027
    :goto_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private onSmoothScrollerStopped(Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .line 6612
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 6613
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    .line 5885
    invoke-static {p3}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5886
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5892
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 5893
    invoke-static {v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5894
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 5895
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 5897
    :cond_1
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 5898
    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 5303
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5321
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 5332
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 5344
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 4962
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4963
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    .line 5569
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 2

    .line 5548
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5549
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5550
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3600(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0

    .line 5552
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 5554
    :goto_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 6157
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 6158
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 6161
    :cond_0
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 6162
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeHorizontalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public detachAndScrapAttachedViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 5877
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5879
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5880
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    .line 5528
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    .line 5475
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5477
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5478
    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5482
    :cond_0
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    .line 5483
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 5160
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 5136
    instance-of v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 5137
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 5138
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5139
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 5141
    :cond_1
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 0

    .line 6192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 5676
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 5667
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColumnCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 6831
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6834
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p2
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 6136
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 6100
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    .line 6054
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6055
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 6040
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6041
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 6124
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 6112
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .line 5777
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5780
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5781
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 5694
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 5274
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 0

    .line 6207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 5730
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 5703
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 5721
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 5712
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 0

    .line 5448
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    return p1
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 0

    .line 6222
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public getRowCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 6812
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6815
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p2
.end method

.method public getSelectionModeForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 0

    .line 6177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 5685
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutHierarchical(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .line 5261
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 2

    .line 6086
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6087
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 4

    .line 5971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5973
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 5974
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 5975
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 5977
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    .line 5978
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget p2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 5980
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 5977
    invoke-static {v1, v2, p2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p2

    .line 5981
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    .line 5982
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iget p3, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 5984
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    .line 5981
    invoke-static {v1, v2, p3, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p3

    .line 5985
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public moveView(II)V
    .locals 2

    .line 5600
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5605
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 5606
    invoke-virtual {p0, v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void

    .line 5602
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 5809
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5810
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 5821
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5822
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Lcom/voxel/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 5024
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 6701
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6718
    invoke-static {p3}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 6719
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x1

    .line 6722
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 6723
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 6724
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 6725
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 6722
    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 6727
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6728
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 6648
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 6679
    const-class v0, Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 6680
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 6681
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 6682
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6683
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 6685
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 6686
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 6687
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6688
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 6692
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 6693
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 6694
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    .line 6695
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 6692
    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    .line 6696
    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 6734
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6736
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6737
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 6758
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6759
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6761
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    .line 6763
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemsAdded(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Lcom/voxel/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 5088
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMeasure(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;II)V
    .locals 0

    .line 6559
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p1, p3, p4}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3800(Lcom/voxel/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onRequestChildFocus(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6327
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onRequestChildFocus(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 6349
    invoke-virtual {p0, p1, p3, p4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 6853
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 1

    .line 6869
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_4

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x0

    goto :goto_2

    :cond_1
    const/4 p3, -0x1

    .line 6875
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6876
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6878
    :goto_0
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p4, p3}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6879
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    goto :goto_2

    .line 6883
    :cond_4
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6884
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 6886
    :goto_1
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 6887
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    if-nez p1, :cond_7

    if-nez p3, :cond_7

    return p2

    .line 6894
    :cond_7
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 6900
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityActionForItem(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeAndRecycleAllViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 6638
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6639
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6640
    invoke-static {v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6641
    invoke-virtual {p0, v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    .line 5912
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5914
    invoke-virtual {p1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 5915
    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 5916
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5919
    :cond_0
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5920
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5922
    :cond_1
    invoke-virtual {p1, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5924
    :cond_2
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clearScrap()V

    if-lez v0, :cond_3

    .line 5926
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_3
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 5644
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 5645
    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 5655
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5656
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 5657
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 5410
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 5422
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5424
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 6284
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    .line 6285
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    .line 6286
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6287
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 6288
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 6289
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    .line 6290
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    .line 6291
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    .line 6293
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p2, v1

    .line 6294
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v5, v2

    .line 6295
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p3, v3

    .line 6296
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 6301
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, p3

    :goto_1
    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 6312
    invoke-virtual {p1, v1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    .line 6314
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_3
    return v3
.end method

.method public requestLayout()V
    .locals 1

    .line 4936
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4937
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method setRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4923
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 4924
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    goto :goto_0

    .line 4926
    :cond_0
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 4927
    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    :goto_0
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .line 6606
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 6607
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
