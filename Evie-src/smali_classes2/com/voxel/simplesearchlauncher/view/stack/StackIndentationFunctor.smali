.class public abstract Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;
.super Ljava/lang/Object;
.source "StackIndentationFunctor.java"


# instance fields
.field protected mDistanceToPeekStart:I

.field protected mMaxItemsInStack:I

.field protected mPeekSize:I

.field protected mStackStartsAtPeek:Z

.field protected mTotalTransitionDistance:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p3, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    .line 54
    iget p3, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mStackStartsAtPeek:Z

    .line 55
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mMaxItemsInStack:I

    .line 56
    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mPeekSize:I

    .line 57
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    return-void
.end method

.method private updateTotalTransitionDistance()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;->mTotalTransitionDistance:I

    return-void
.end method
