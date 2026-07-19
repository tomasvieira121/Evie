.class final Lcom/voxel/recyclerview/widget/OrientationHelper$1;
.super Lcom/voxel/recyclerview/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Lcom/voxel/recyclerview/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 235
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 219
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 2

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 227
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 2

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 242
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getEnd()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    .line 248
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChildren(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    return-void
.end method
