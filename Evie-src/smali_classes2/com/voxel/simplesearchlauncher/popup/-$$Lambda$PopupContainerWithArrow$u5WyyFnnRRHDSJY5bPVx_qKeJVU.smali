.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->lambda$null$1(Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
