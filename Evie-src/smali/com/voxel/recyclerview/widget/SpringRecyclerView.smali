.class public Lcom/voxel/recyclerview/widget/SpringRecyclerView;
.super Lcom/voxel/recyclerview/widget/RecyclerView;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;,
        Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;,
        Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;
    }
.end annotation


# instance fields
.field private mBottom:I

.field private mCurrentPositionX:I

.field private mCurrentPositionY:I

.field private mObserver:Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;

.field private mOffsetYRemainder:F

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    .line 15
    iput p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mOffsetYRemainder:F

    const/high16 p1, -0x80000000

    .line 18
    iput p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mTop:I

    const p1, 0x7fffffff

    .line 19
    iput p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    .line 22
    new-instance p1, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;-><init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;Lcom/voxel/recyclerview/widget/SpringRecyclerView$1;)V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateOverscrollY()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mTop:I

    return p0
.end method

.method static synthetic access$300(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    return p0
.end method

.method static synthetic access$400(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    return p0
.end method

.method static synthetic access$600(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    return p0
.end method

.method static synthetic access$700(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateOverscrollX()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/voxel/recyclerview/widget/SpringRecyclerView;I)F
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateDragOverscrollFactor(I)F

    move-result p0

    return p0
.end method

.method private calculateDragOverscrollFactor(I)F
    .locals 1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 455
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42a00000    # 80.0f

    add-float/2addr p1, v0

    div-float/2addr v0, p1

    return v0
.end method

.method private calculateOverscrollX()I
    .locals 2

    .line 425
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    if-gez v0, :cond_0

    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    sub-int/2addr v0, v1

    .line 430
    iget v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    if-le v1, v0, :cond_1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private calculateOverscrollY()I
    .locals 2

    .line 438
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    iget v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mTop:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 442
    :cond_0
    iget v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleOffsetYRemainder(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float v0, p1, v0

    float-to-int p1, p1

    .line 392
    iget v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mOffsetYRemainder:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mOffsetYRemainder:F

    .line 395
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mOffsetYRemainder:F

    float-to-int v1, v0

    add-int/2addr p1, v1

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 396
    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mOffsetYRemainder:F

    return p1
.end method


# virtual methods
.method protected createViewFlinger()Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;
    .locals 1

    .line 65
    new-instance v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringViewFlinger;-><init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)V

    return-object v0
.end method

.method dispatchLayout()V
    .locals 7

    .line 503
    invoke-super {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 505
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resetOverscrollPositions()V

    .line 507
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;

    .line 510
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 511
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 512
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 519
    invoke-interface {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->hasUniformViewHeight()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 520
    invoke-interface {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->getItemViewHeightForPosition(I)I

    move-result v0

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 525
    invoke-interface {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->getItemViewHeightForPosition(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 529
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 531
    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    goto :goto_3

    .line 534
    :cond_4
    iput v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    :goto_3
    return-void
.end method

.method public getCurrentScrollPositionX()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    return v0
.end method

.method public getCurrentScrollPositionY()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    return v0
.end method

.method public getScrollBottom()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    return v0
.end method

.method public getScrollTop()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mTop:I

    return v0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 414
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    .line 415
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 420
    iget v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    .line 421
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    return-void
.end method

.method public onIdleTouchUp()Z
    .locals 2

    .line 403
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateOverscrollY()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    neg-int v0, v0

    .line 406
    invoke-virtual {p0, v1, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->smoothScrollBy(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 561
    invoke-super {p0, p1, p2, p3, p4}, Lcom/voxel/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resetOverscrollPositions()V

    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeHorizontalScrollRange()I

    move-result p9

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeHorizontalScrollExtent()I

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeVerticalScrollRange()I

    move-result p9

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    neg-int p1, p7

    const/4 p9, 0x0

    sub-int/2addr p1, p9

    add-int/2addr p7, p5

    add-int/2addr p7, p9

    neg-int p5, p8

    sub-int/2addr p5, p9

    add-int/2addr p8, p6

    add-int/2addr p8, p9

    const/4 p6, 0x1

    if-le p3, p7, :cond_0

    sub-int p1, p3, p7

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    if-ge p3, p1, :cond_1

    sub-int p1, p3, p1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-le p4, p8, :cond_2

    sub-int/2addr p4, p8

    const/4 p5, 0x1

    goto :goto_1

    :cond_2
    if-ge p4, p5, :cond_3

    sub-int/2addr p4, p5

    const/4 p5, 0x1

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_1
    const/high16 p7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 371
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateDragOverscrollFactor(I)F

    :cond_4
    if-eqz p4, :cond_5

    .line 375
    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateDragOverscrollFactor(I)F

    move-result p1

    sub-int/2addr p4, p2

    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateDragOverscrollFactor(I)F

    move-result p4

    add-float/2addr p1, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float p7, p1, p4

    .line 377
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getScrollState()I

    move-result p1

    .line 380
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, p6, :cond_6

    if-eqz p5, :cond_6

    int-to-float p1, p2

    mul-float p1, p1, p7

    neg-float p1, p1

    .line 382
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->handleOffsetYRemainder(F)I

    move-result p1

    .line 383
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->offsetChildrenVertical(I)V

    :cond_6
    if-nez p3, :cond_8

    if-eqz p5, :cond_7

    goto :goto_2

    :cond_7
    const/4 p6, 0x0

    :cond_8
    :goto_2
    return p6
.end method

.method public resetOverscrollPositions()V
    .locals 5

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mTop:I

    .line 479
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;

    .line 483
    invoke-interface {v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->hasUniformViewHeight()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v1, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->getItemViewHeightForPosition(I)I

    move-result v1

    .line 486
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    mul-int v1, v1, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 489
    invoke-interface {v1, v2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;->getItemViewHeightForPosition(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 493
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    .line 494
    iget v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    goto :goto_2

    .line 497
    :cond_2
    iput v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    :goto_2
    return-void
.end method

.method protected scrollByInternal(II)Z
    .locals 18

    move-object/from16 v10, p0

    move/from16 v0, p1

    move/from16 v11, p2

    .line 247
    iget v12, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->consumePendingUpdateOperations()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_7

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->eatRequestLayout()V

    .line 251
    iput-boolean v13, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iget-object v2, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v0, v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    sub-int/2addr v0, v1

    move v15, v0

    move/from16 v16, v1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-eqz v11, :cond_2

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->calculateOverscrollY()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    iget v4, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    const/4 v5, 0x0

    iget v6, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v11, v1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    sub-int v1, v11, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->supportsChangeAnimations()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    iget-object v2, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    .line 273
    iget-object v4, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 274
    invoke-virtual {v10, v4}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 275
    iget-object v6, v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_5

    .line 276
    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_3

    .line 277
    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    .line 279
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 281
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v4, v7, :cond_5

    .line 283
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 284
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 282
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move/from16 v17, v0

    move v11, v1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 291
    :goto_5
    iput-boolean v14, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mRunningLayoutOrScroll:Z

    .line 292
    invoke-virtual {v10, v14}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resumeRequestLayout(Z)V

    .line 293
    iget-object v0, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->invalidate()V

    .line 296
    :cond_8
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    if-nez v15, :cond_9

    if-eqz v11, :cond_a

    .line 300
    :cond_9
    iget v3, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionX:I

    iget v4, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    const/4 v5, 0x0

    iget v6, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mBottom:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    invoke-virtual/range {v0 .. v9}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    :cond_a
    if-nez v16, :cond_b

    if-nez v15, :cond_b

    .line 303
    iget v0, v10, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mCurrentPositionY:I

    if-eq v0, v12, :cond_c

    :cond_b
    add-int v15, v16, v15

    add-int v11, v17, v11

    .line 304
    invoke-virtual {v10, v15, v11}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->notifyOnScrolled(II)V

    .line 306
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_d

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->invalidate()V

    :cond_d
    if-nez v16, :cond_f

    if-eqz v17, :cond_e

    goto :goto_6

    :cond_e
    const/4 v13, 0x0

    :cond_f
    :goto_6
    return v13
.end method

.method protected setAdapterInternal(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 544
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView;->setAdapterInternal(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 546
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resetOverscrollPositions()V

    return-void
.end method
