.class public Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;
.super Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;
.source "AllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;
    }
.end annotation


# instance fields
.field private mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    .line 36
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    .line 37
    invoke-virtual {p0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 38
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setDetachThumbOnFastScroll()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    return-object v0
.end method

.method protected getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V
    .locals 3

    const/4 v0, -0x1

    .line 45
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 46
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 47
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->itemPos:I

    .line 49
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getCurrentRecyclerViewPosition()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getRowIndex(I)I

    move-result v2

    iput v2, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 57
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 58
    iput v1, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->itemPos:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentRecyclerViewPosition()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 67
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getTop(I)I
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getRowHeight(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public onUpdateScrollbar(I)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getRowCount()I

    move-result p1

    .line 130
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V

    .line 131
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1, v0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    .line 138
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight(I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1, v0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;I)V

    return-void

    .line 124
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1, v0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getRowCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 92
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V

    .line 93
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getItemCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 94
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight(I)I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    int-to-float v0, v0

    mul-float v0, v0, p1

    neg-float v0, v0

    float-to-int v0, v0

    .line 96
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    sub-float/2addr v1, v0

    :cond_2
    float-to-int p1, v1

    .line 99
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getAdapter()Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method
