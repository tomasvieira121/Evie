.class public Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;
.super Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;
.source "PiecewiseLinearIndentationFunctor.java"


# instance fields
.field private final mBaseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLinearPart:F


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;-><init>(III)V

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->initBaseValues()V

    .line 62
    iput p4, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mLinearPart:F

    return-void
.end method

.method private getSumOfSquares(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    mul-int v0, v0, p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    mul-int v0, v0, p1

    .line 82
    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private initBaseValues()V
    .locals 6

    .line 66
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->getSumOfSquares(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_0
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 70
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    .line 71
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
