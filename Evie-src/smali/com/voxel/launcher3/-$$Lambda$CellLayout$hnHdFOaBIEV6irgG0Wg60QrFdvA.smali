.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/CellLayout$LayoutParams;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$0:Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$1:I

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$2:I

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$3:I

    iput p5, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$4:I

    iput-object p6, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$5:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$0:Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$1:I

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$2:I

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$3:I

    iget v4, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$4:I

    iget-object v5, p0, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;->f$5:Landroid/view/View;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->lambda$animateChildToPosition$1(Lcom/voxel/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
