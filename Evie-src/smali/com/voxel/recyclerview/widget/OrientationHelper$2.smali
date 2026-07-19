.class final Lcom/voxel/recyclerview/widget/OrientationHelper$2;
.super Lcom/voxel/recyclerview/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Lcom/voxel/recyclerview/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 2

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 311
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 2

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 295
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 2

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 303
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 318
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getEnd()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    .line 324
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChildren(I)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method
