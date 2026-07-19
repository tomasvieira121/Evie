.class public abstract Lcom/voxel/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 42
    iput v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 45
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper;->mLayoutManager:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Lcom/voxel/recyclerview/widget/OrientationHelper$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/OrientationHelper;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 194
    new-instance v0, Lcom/voxel/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/OrientationHelper$1;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;I)Lcom/voxel/recyclerview/widget/OrientationHelper;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 183
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :pswitch_0
    invoke-static {p0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    .line 179
    :pswitch_1
    invoke-static {p0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createVerticalHelper(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/voxel/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 270
    new-instance v0, Lcom/voxel/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/OrientationHelper$2;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    .line 68
    iget v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/voxel/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
