.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field private final synthetic f$1:Landroid/animation/TimeInterpolator;

.field private final synthetic f$2:F

.field private final synthetic f$3:F

.field private final synthetic f$4:F

.field private final synthetic f$5:F

.field private final synthetic f$6:F

.field private final synthetic f$7:F

.field private final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/TimeInterpolator;FFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$1:Landroid/animation/TimeInterpolator;

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$2:F

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$3:F

    iput p5, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$4:F

    iput p6, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$5:F

    iput p7, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$6:F

    iput p8, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$7:F

    iput p9, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$8:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$0:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$1:Landroid/animation/TimeInterpolator;

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$2:F

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$3:F

    iget v4, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$4:F

    iget v5, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$5:F

    iget v6, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$6:F

    iget v7, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$7:F

    iget v8, p0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;->f$8:F

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/voxel/launcher3/RemoveDropTarget;->lambda$createFlingToTrashAnimatorListener$2(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/TimeInterpolator;FFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
