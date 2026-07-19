.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;
.super Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;
.source "WidgetsRecyclerView.java"


# instance fields
.field private mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

.field private mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    return-void
.end method


# virtual methods
.method protected getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V
    .locals 3

    const/4 v0, -0x1

    .line 107
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 108
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 109
    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->itemPos:I

    .line 112
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageSize()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 124
    iput v1, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    .line 125
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    .line 126
    iput v1, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->itemPos:I

    return-void
.end method

.method protected getTop(I)I
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int v0, v0, p1

    return v0
.end method

.method public onUpdateScrollbar(I)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageSize()I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1, v0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V

    .line 95
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1, v0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;I)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageSize()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->stopScroll()V

    .line 65
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mScrollPosState:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V

    int-to-float v1, v0

    mul-float v1, v1, p1

    .line 67
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getAvailableScrollHeight(I)I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    int-to-float v0, v0

    mul-float v0, v0, p1

    neg-float v0, v0

    float-to-int v0, v0

    .line 69
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    sub-float/2addr v1, v0

    :cond_2
    float-to-int p1, v1

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->getPackageItemInfo(I)Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;

    move-result-object p1

    .line 73
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    return-object p1
.end method

.method public setWidgets(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->mWidgets:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    return-void
.end method
