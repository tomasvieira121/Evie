.class public Lcom/voxel/recyclerview/widget/LinearLayoutManager;
.super Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;,
        Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;,
        Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;,
        Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# instance fields
.field final mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

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
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 98
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 105
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 123
    iput p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 151
    new-instance p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p1, p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/voxel/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 152
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 999
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1003
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1004
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1005
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

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
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 992
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 993
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 994
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

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
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1014
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1015
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1016
    invoke-direct {p0, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

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

    .line 1399
    :cond_0
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1405
    :cond_2
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 1396
    :cond_4
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 1402
    :cond_6
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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

    .line 1505
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1463
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1464
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1445
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1449
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    .line 1509
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findReferenceChild(III)Landroid/view/View;
    .locals 7

    .line 1513
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1516
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1517
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

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

    .line 1520
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1521
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_4

    if-ge v6, p3, :cond_4

    .line 1523
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    .line 1527
    :cond_1
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_3

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1528
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

    .line 1484
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1485
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1500
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1501
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private fixLayoutEndGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 795
    invoke-virtual {p0, v0, p2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 803
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 805
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 821
    invoke-virtual {p0, v0, p2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 828
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 830
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1433
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1423
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_9

    .line 593
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

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
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

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
    iget-boolean v14, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v13, v14, :cond_2

    const/4 v11, -0x1

    :cond_2
    if-ne v11, v10, :cond_3

    .line 608
    iget-object v10, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-object v11, v12, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 610
    :cond_3
    iget-object v10, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    iget-object v11, v12, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 618
    :cond_4
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput-object v3, v4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_6

    .line 620
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 621
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 622
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v8, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 623
    iput v5, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 624
    iget v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean v6, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_3
    add-int/2addr v4, v6

    iput v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 625
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    :cond_6
    if-lez v9, :cond_8

    .line 629
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 630
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 631
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v9, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 632
    iput v5, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 633
    iget v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-boolean v6, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_7

    const/4 v11, -0x1

    :cond_7
    add-int/2addr v4, v11

    iput v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 634
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 636
    :cond_8
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void

    :cond_9
    :goto_4
    return-void
.end method

.method private recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1234
    iget-boolean v0, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v0, :cond_0

    return-void

    .line 1237
    :cond_0
    iget v0, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1238
    iget p2, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1240
    :cond_1
    iget p2, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V

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

    .line 1135
    invoke-virtual {p0, p3, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1139
    invoke-virtual {p0, p2, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1193
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1202
    iget-boolean p2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1204
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1205
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1206
    invoke-direct {p0, p1, p2, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_1
    if-ltz p2, :cond_4

    .line 1212
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1213
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 1214
    invoke-direct {p0, p1, v0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

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

    .line 1163
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1164
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 1166
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    .line 1168
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1174
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1175
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    .line 1176
    invoke-direct {p0, p1, v1, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)V

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
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 667
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 671
    invoke-static {p2, v0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->access$000(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    return v2

    .line 675
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 678
    :cond_2
    iget-boolean v0, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_3
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 681
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 684
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 686
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 687
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 688
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 689
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 690
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 692
    iget-boolean p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 693
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 694
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 707
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

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
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 723
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 726
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 727
    iget-boolean p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_2

    .line 728
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    return v0

    .line 737
    :cond_3
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_c

    .line 738
    iget p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 740
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 741
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 743
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    .line 746
    :cond_4
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 747
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 749
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 750
    iput-boolean v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 754
    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 756
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 757
    iput-boolean v0, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 760
    :cond_6
    iget-boolean v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 761
    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 762
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 763
    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    .line 765
    :cond_8
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    .line 767
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 768
    iget v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 771
    :cond_b
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v0

    .line 776
    :cond_c
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_d

    .line 778
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 781
    :cond_d
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4
    return v0

    .line 712
    :cond_e
    :goto_5
    iput v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 713
    iput v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 656
    :cond_1
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 657
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1054
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1055
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1058
    iget p1, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1060
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1062
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1064
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1065
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1067
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1068
    invoke-virtual {p4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 1071
    :cond_1
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1072
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1073
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1075
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1076
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1077
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1078
    invoke-virtual {p4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1080
    :goto_1
    iget-object p4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    .line 1082
    iget p2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p2, p1

    iput p2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1084
    :cond_3
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 843
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 845
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 846
    iput v2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 847
    iput p2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 848
    iput p1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 838
    iget v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 857
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 858
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 860
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 861
    iput p2, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p2, -0x80000000

    .line 862
    iput p2, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 852
    iget v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1116
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 258
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 959
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 979
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 974
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 964
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method ensureLayoutState()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 875
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->createOrientationHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;I)Lcom/voxel/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    :cond_1
    return-void
.end method

.method fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I
    .locals 7

    .line 1258
    iget v0, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1259
    iget v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1261
    iget v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1262
    iget v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1264
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1266
    :cond_1
    iget v1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1267
    new-instance v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    :cond_2
    if-lez v1, :cond_8

    .line 1268
    invoke-virtual {p2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1269
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1270
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->layoutChunk(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1271
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1274
    :cond_3
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1281
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1282
    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1283
    :cond_4
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1285
    iget v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1288
    :cond_5
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_7

    .line 1289
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1290
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6

    .line 1291
    iget v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1293
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    :cond_7
    if-eqz p4, :cond_2

    .line 1295
    iget-boolean v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1302
    :cond_8
    :goto_0
    iget p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1559
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1560
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1599
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1600
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 7

    .line 1622
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1623
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1624
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

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

    .line 1628
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1629
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1630
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

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
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 374
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

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
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method layoutChunk(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 8

    .line 1307
    invoke-virtual {p3, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1314
    iput-boolean p2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1318
    iget-object v0, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1319
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1321
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1323
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1326
    :cond_3
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1328
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1330
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1333
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1334
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1336
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    .line 1337
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1338
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1339
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1341
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1342
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1344
    :goto_3
    iget v3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1345
    iget v1, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1346
    iget p3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v7, v0

    move v0, p3

    move p3, v7

    goto :goto_4

    .line 1348
    :cond_7
    iget v1, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1349
    iget p3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v7, v1

    move v1, p3

    move p3, v0

    move v0, v7

    goto :goto_4

    .line 1352
    :cond_8
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1353
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1355
    iget v3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    .line 1356
    iget v1, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1357
    iget p3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v7, v2

    move v2, p3

    move p3, v1

    move v1, v7

    goto :goto_4

    .line 1359
    :cond_9
    iget v1, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1360
    iget p3, p3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v7, v2

    move v2, v1

    move v1, v7

    .line 1365
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

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1373
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1374
    :cond_a
    iput-boolean p2, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1376
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 196
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 198
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 5

    .line 1649
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1650
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1654
    :cond_0
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 1658
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1661
    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1663
    :cond_2
    invoke-direct {p0, p4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    return-object v0

    .line 1672
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    const v3, 0x3ea8f5c3    # 0.33f

    .line 1673
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    .line 1674
    invoke-direct {p0, p1, v3, v4, p4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 1675
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p2, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1676
    iput-boolean v4, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 p2, 0x1

    .line 1677
    invoke-virtual {p0, p3, v3, p4, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    if-ne p1, v1, :cond_4

    .line 1680
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 1682
    :cond_4
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eq p1, v2, :cond_6

    .line 1684
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
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 209
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 442
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 447
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 449
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 451
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 452
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 454
    invoke-direct {p0, p2, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 463
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 466
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v2, :cond_1

    move v2, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 473
    :goto_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v0, v3

    .line 474
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v3

    add-int/2addr v2, v3

    .line 475
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v3, v5, :cond_4

    iget v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v4, :cond_4

    .line 480
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 484
    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 485
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 486
    invoke-virtual {v7, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v6, v3

    .line 487
    iget v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v3

    goto :goto_1

    .line 489
    :cond_2
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 490
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v3, v6

    .line 491
    iget v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

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
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p2, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 504
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    iput-boolean v6, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 505
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_6

    .line 507
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 508
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v0, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 509
    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 510
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 511
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_5

    .line 512
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v2, v3

    .line 515
    :cond_5
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 516
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 517
    iget v2, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v2, v6

    iput v2, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 518
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 519
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_3

    .line 522
    :cond_6
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 523
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 524
    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 525
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 526
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v3, :cond_7

    .line 527
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v0, v3

    .line 530
    :cond_7
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 531
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v0, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 532
    iget v0, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v6

    iput v0, v3, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 533
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    .line 534
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 540
    :goto_3
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 544
    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v6

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    .line 545
    invoke-direct {p0, v2, p1, p2, v6}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v3

    .line 548
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v2, v1

    goto :goto_4

    .line 552
    :cond_8
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v3

    .line 555
    invoke-direct {p0, v2, p1, p2, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v2, v1

    .line 560
    :cond_9
    :goto_4
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;II)V

    .line 561
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_a

    .line 562
    iput v5, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 563
    iput v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 564
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    .line 566
    :cond_a
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    const/4 p1, 0x0

    .line 567
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 242
    instance-of v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 244
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;)V

    return-object v1

    .line 218
    :cond_0
    new-instance v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 221
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 222
    iput-boolean v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 226
    invoke-virtual {v3, v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 227
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 231
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 232
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 1088
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1092
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1094
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1095
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 1096
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1097
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->fill(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1105
    :cond_3
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1109
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLayoutState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 939
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 942
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 895
    iput p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 896
    iput p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 897
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 898
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 951
    iget v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 954
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->scrollBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

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
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 307
    iget v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    .line 310
    :cond_2
    iput p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 311
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 312
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 358
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 359
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
