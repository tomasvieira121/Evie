.class Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "OverscrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1781
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 v0, 0x0

    .line 1822
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mExtra:I

    .line 1829
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    const/4 v0, 0x0

    .line 1840
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextFromLimitedList()Landroid/view/View;
    .locals 8

    .line 1872
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1876
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1877
    iget-boolean v6, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1880
    :cond_0
    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    iget v7, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v6, v6, v7

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    if-ge v6, v2, :cond_3

    if-nez v6, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, v5

    move v2, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 1897
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1898
    iget-object v0, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_5
    return-object v1
.end method


# virtual methods
.method hasMore(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 1

    .line 1846
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method next(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 2

    .line 1856
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1857
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->nextFromLimitedList()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1859
    :cond_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1860
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutState;->mCurrentPosition:I

    return-object p1
.end method
