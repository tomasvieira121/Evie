.class public Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;
.super Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 804
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 795
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 797
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 795
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 797
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 795
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 797
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 795
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 797
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I
    .locals 0

    .line 788
    iget p0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 788
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I
    .locals 0

    .line 788
    iget p0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p0
.end method

.method static synthetic access$102(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 788
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .line 843
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
