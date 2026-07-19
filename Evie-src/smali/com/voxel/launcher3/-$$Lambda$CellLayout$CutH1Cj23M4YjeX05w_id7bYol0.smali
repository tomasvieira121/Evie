.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/CellLayout;

.field private final synthetic f$1:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$0:Lcom/voxel/launcher3/CellLayout;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$1:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$0:Lcom/voxel/launcher3/CellLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$1:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/voxel/launcher3/CellLayout;->lambda$new$0(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
