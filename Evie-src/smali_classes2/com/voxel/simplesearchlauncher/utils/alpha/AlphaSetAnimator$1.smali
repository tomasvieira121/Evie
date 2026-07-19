.class Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$1;
.super Ljava/lang/Object;
.source "AlphaSetAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->access$000(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->setAlpha(F)V

    return-void
.end method
