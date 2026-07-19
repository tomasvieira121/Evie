.class Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "OverscrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field final synthetic this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;)V
    .locals 0

    .line 1970
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 1970
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result p0

    return p0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 1

    .line 2013
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2014
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2015
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .line 1986
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1987
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 1988
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2

    .line 2066
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 2068
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2073
    :goto_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 5

    .line 2019
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2021
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    return-void

    .line 2024
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2025
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2026
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2027
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 2029
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v1, :cond_2

    .line 2032
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    .line 2033
    iget v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v3, v0

    .line 2034
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 2035
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 2037
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v3, v0

    if-gez v3, :cond_2

    .line 2041
    iget p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 2045
    :cond_1
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 2046
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    .line 2047
    iput v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v3, :cond_2

    .line 2049
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 2050
    invoke-virtual {v4, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 2051
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    sub-int/2addr v4, v0

    .line 2053
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    .line 2054
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v4, p1

    .line 2055
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->this$0:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    .line 2056
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    if-gez p1, :cond_2

    .line 2059
    iget v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int p1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_2
    :goto_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1976
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    .line 1977
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    .line 1978
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
