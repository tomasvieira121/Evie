.class public abstract Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HeaderElevationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;
    }
.end annotation


# instance fields
.field private mCurrentY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->mCurrentY:I

    return-void
.end method


# virtual methods
.method abstract onScroll(I)V
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->mCurrentY:I

    .line 28
    iget p1, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->mCurrentY:I

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->onScroll(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->mCurrentY:I

    .line 22
    iget v0, p0, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->mCurrentY:I

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->onScroll(I)V

    return-void
.end method
