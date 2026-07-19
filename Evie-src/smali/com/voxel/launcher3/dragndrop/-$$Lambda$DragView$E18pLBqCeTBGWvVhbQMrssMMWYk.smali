.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$1:F

    iput p3, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$1:F

    iget v2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->lambda$new$0(Lcom/voxel/launcher3/dragndrop/DragView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
