.class public Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
.super Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;
.source "OverscrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;,
        Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;,
        Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;,
        Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;
    }
.end annotation


# instance fields
.field final mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mReverseLayout:Z

    .line 98
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    .line 105
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 123
    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    .line 151
    new-instance p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-direct {p1, p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;-><init>(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;)V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    .line 152
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->setOrientation(I)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 999
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 1003
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1004
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1005
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1003
    invoke-static/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 988
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 992
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 993
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 994
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 992
    invoke-static/range {v0 .. v6}, Lcom/voxel/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1010
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 1014
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1015
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1016
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1014
    invoke-static/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    .line 1397
    :cond_0
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1403
    :cond_2
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 1394
    :cond_4
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 1400
    :cond_6
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findFirstReferenceChild(I)Landroid/view/View;
    .locals 2

    .line 1504
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1461
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1462
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1443
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    .line 1508
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findReferenceChild(III)Landroid/view/View;
    .locals 7

    .line 1512
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 1515
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1516
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_5

    .line 1519
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1520
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_4

    if-ge v6, p3, :cond_4

    .line 1522
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    .line 1526
    :cond_1
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_3

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1527
    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_2

    goto :goto_2

    :cond_2
    return-object v5

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    move-object v3, v5

    :cond_4
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method private findReferenceChildClosestToEnd(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1483
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1499
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1500
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1431
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1421
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 592
    invoke-virtual/range {p2 .. p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_9

    .line 593
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 599
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 600
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 601
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ge v7, v4, :cond_4

    .line 603
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 604
    invoke-virtual {v12}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v13

    if-ge v13, v6, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 605
    :goto_1
    iget-boolean v14, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v13, v14, :cond_2

    const/4 v11, -0x1

    :cond_2
    if-ne v11, v10, :cond_3

    .line 608
    iget-object v10, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-object v11, v12, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 610
    :cond_3
    iget-object v10, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-object v11, v12, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 618
    :cond_4
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput-object v3, v4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_6

    .line 620
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 621
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 622
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v8, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 623
    iput v5, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 624
    iget v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean v6, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_3
    add-int/2addr v4, v6

    iput v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 625
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    :cond_6
    if-lez v9, :cond_8

    .line 629
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 630
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 631
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v9, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 632
    iput v5, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 633
    iget v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean v6, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_7

    const/4 v11, -0x1

    :cond_7
    add-int/2addr v4, v11

    iput v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 634
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 636
    :cond_8
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void

    :cond_9
    :goto_4
    return-void
.end method

.method private recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1232
    iget-boolean v0, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    return-void

    .line 1235
    :cond_0
    iget v0, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1236
    iget p2, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleViewsFromEnd(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1238
    :cond_1
    iget p2, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleViewsFromStart(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V

    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1133
    invoke-virtual {p0, p3, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1137
    invoke-virtual {p0, p2, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1191
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1200
    iget-boolean p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1202
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1203
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1204
    invoke-direct {p0, p1, p2, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_1
    if-ltz p2, :cond_4

    .line 1210
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1211
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 1212
    invoke-direct {p0, p1, v0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private recycleViewsFromStart(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1162
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 1164
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1165
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    .line 1166
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1172
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1173
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    .line 1174
    invoke-direct {p0, p1, v1, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 322
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 667
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 671
    invoke-static {p2, v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->access$000(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    return v2

    .line 675
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 678
    :cond_2
    iget-boolean v0, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_3
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 681
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 684
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 686
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 687
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 688
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 689
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 690
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 692
    iget-boolean p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 693
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 694
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 707
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    .line 711
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    .line 722
    :cond_1
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 723
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 726
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 727
    iget-boolean p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_2

    .line 728
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    return v0

    .line 737
    :cond_3
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_c

    .line 738
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 740
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 741
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 743
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    .line 746
    :cond_4
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 747
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 749
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 750
    iput-boolean v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 754
    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 756
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 757
    iput-boolean v0, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 760
    :cond_6
    iget-boolean v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 761
    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 762
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 763
    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    .line 765
    :cond_8
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    .line 767
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 768
    iget v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 771
    :cond_b
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v0

    .line 776
    :cond_c
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_d

    .line 778
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 781
    :cond_d
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4
    return v0

    .line 712
    :cond_e
    :goto_5
    iput v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    .line 713
    iput v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateAnchorFromPendingData(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateAnchorFromChildren(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 656
    :cond_1
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 657
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1052
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getExtraLayoutSpace(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 1053
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p1, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1056
    iget p1, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 1058
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1060
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1062
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1063
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1065
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1066
    invoke-virtual {p4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 1069
    :cond_1
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1070
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 1071
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1073
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1074
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1075
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1076
    invoke-virtual {p4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1078
    :goto_1
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    .line 1080
    iget p2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p2, p1

    iput p2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1082
    :cond_3
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 843
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 845
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 846
    iput v2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 847
    iput p2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 848
    iput p1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 838
    iget v0, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 857
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 858
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 860
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 861
    iput p2, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p2, -0x80000000

    .line 862
    iput p2, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 852
    iget v0, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1114
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 258
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 266
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 959
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 979
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 974
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 964
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method ensureLayoutState()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 875
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->createOrientationHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;I)Lcom/voxel/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    :cond_1
    return-void
.end method

.method fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I
    .locals 7

    .line 1256
    iget v0, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1257
    iget v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1259
    iget v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1260
    iget v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1262
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;)V

    .line 1264
    :cond_1
    iget v1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1265
    new-instance v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;-><init>()V

    :cond_2
    if-lez v1, :cond_8

    .line 1266
    invoke-virtual {p2, p3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->hasMore(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1267
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1268
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->layoutChunk(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;)V

    .line 1269
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1272
    :cond_3
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1279
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1280
    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1281
    :cond_4
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1283
    iget v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1286
    :cond_5
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_7

    .line 1287
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1288
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6

    .line 1289
    iget v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1291
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;)V

    :cond_7
    if-eqz p4, :cond_2

    .line 1293
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1300
    :cond_8
    :goto_0
    iget p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1558
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1598
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1599
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 7

    .line 1621
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 1622
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1623
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_4

    .line 1627
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1628
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1629
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v5, v1, :cond_3

    if-le v6, v0, :cond_3

    if-eqz p3, :cond_2

    if-lt v5, v0, :cond_1

    if-gt v6, v1, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    return-object v4

    :cond_3
    :goto_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 3

    .line 367
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 374
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public generateDefaultLayoutParams()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 161
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 392
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method layoutChunk(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;)V
    .locals 8

    .line 1305
    invoke-virtual {p3, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->next(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1312
    iput-boolean p2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1315
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1316
    iget-object v0, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1317
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1319
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1321
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1324
    :cond_3
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1326
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1328
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1331
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1332
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1334
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    .line 1335
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1336
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1337
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1339
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1340
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1342
    :goto_3
    iget v3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1343
    iget v1, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1344
    iget p3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v7, v0

    move v0, p3

    move p3, v7

    goto :goto_4

    .line 1346
    :cond_7
    iget v1, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1347
    iget p3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v7, v1

    move v1, p3

    move p3, v0

    move v0, v7

    goto :goto_4

    .line 1350
    :cond_8
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1351
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1353
    iget v3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    .line 1354
    iget v1, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1355
    iget p3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v7, v2

    move v2, p3

    move p3, v1

    move v1, v7

    goto :goto_4

    .line 1357
    :cond_9
    iget v1, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 1358
    iget p3, p3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v7, v2

    move v2, v1

    move v1, v7

    .line 1363
    :goto_4
    iget v3, v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v0, v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, p3, v0

    iget p3, v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v1, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1371
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1372
    :cond_a
    iput-boolean p2, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1374
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 196
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->removeAndRecycleAllViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 198
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 5

    .line 1648
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1649
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1653
    :cond_0
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 1657
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1660
    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1662
    :cond_2
    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    return-object v0

    .line 1671
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    const v3, 0x3ea8f5c3    # 0.33f

    .line 1672
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    .line 1673
    invoke-direct {p0, p1, v3, v4, p4}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 1674
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p2, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1675
    iput-boolean v4, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 p2, 0x1

    .line 1676
    invoke-virtual {p0, p3, v3, p4, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    if-ne p1, v1, :cond_4

    .line 1679
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 1681
    :cond_4
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eq p1, v2, :cond_6

    .line 1683
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 209
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 442
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 447
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 449
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 451
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->reset()V

    .line 452
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 454
    invoke-direct {p0, p2, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateAnchorInfoForLayout(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 463
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getExtraLayoutSpace(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 466
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v2, :cond_1

    move v2, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 473
    :goto_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v0, v3

    .line 474
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v3

    add-int/2addr v2, v3

    .line 475
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    if-eq v3, v5, :cond_4

    iget v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v4, :cond_4

    .line 480
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 484
    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 485
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 486
    invoke-virtual {v7, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v6, v3

    .line 487
    iget v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v3

    goto :goto_1

    .line 489
    :cond_2
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 490
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v3, v6

    .line 491
    iget v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v3

    :goto_1
    if-lez v6, :cond_3

    add-int/2addr v0, v6

    goto :goto_2

    :cond_3
    sub-int/2addr v2, v6

    .line 502
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p2, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->detachAndScrapAttachedViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 504
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    iput-boolean v6, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 505
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_6

    .line 507
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 508
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v0, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 509
    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 510
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 511
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_5

    .line 512
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v2, v3

    .line 515
    :cond_5
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 516
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v2, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 517
    iget v2, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v2, v6

    iput v2, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 518
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 519
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_3

    .line 522
    :cond_6
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 523
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v2, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 524
    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 525
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    .line 526
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_7

    .line 527
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v0, v3

    .line 530
    :cond_7
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;)V

    .line 531
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput v0, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 532
    iget v0, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v6

    iput v0, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 533
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 534
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mOffset:I

    move v1, v2

    .line 560
    :goto_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->layoutForPredictiveAnimations(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;II)V

    .line 561
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_8

    .line 562
    iput v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    .line 563
    iput v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 564
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    .line 566
    :cond_8
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLastStackFromEnd:Z

    const/4 p1, 0x0

    .line 567
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 242
    instance-of v0, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    .line 244
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;-><init>(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;)V

    return-object v1

    .line 218
    :cond_0
    new-instance v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    .line 221
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 222
    iput-boolean v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 226
    invoke-virtual {v3, v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 227
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 231
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 232
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 1086
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1090
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1092
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1093
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 1094
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1095
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1103
    :cond_3
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1107
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 939
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 942
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 895
    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 896
    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 897
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 898
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 951
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 954
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 307
    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    .line 310
    :cond_2
    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientation:I

    .line 311
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 312
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 358
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mReverseLayout:Z

    .line 359
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 1755
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
