.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iput p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$1:F

    iput p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    iget v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$1:F

    iget v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->lambda$animateWashAndOverlayAlpha$2(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
