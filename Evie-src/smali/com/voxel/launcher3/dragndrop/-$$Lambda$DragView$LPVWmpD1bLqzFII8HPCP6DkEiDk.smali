.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/dragndrop/DragView;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/dragndrop/DragView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$1:I

    iput p3, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$0:Lcom/voxel/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$1:I

    iget v2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->lambda$animateShiftFrom$4(Lcom/voxel/launcher3/dragndrop/DragView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
