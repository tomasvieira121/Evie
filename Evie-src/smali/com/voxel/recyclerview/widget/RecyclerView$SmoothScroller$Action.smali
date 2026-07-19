.class public Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static synthetic access$4400(Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 7887
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 7936
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7937
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 7938
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 7939
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 7940
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4200(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    move-result-object p1

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-interface {p1, v0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 7942
    :cond_0
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4200(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    move-result-object p1

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-interface {p1, v0, v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 7945
    :cond_1
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4200(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    move-result-object p1

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 7947
    :goto_0
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 7948
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 7951
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7954
    :cond_2
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_1

    .line 7956
    :cond_3
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    :goto_1
    return-void
.end method

.method private validate()V
    .locals 2

    .line 7961
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 7962
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7964
    :cond_1
    :goto_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    return-void

    .line 7965
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
