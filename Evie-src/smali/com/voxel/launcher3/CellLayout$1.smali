.class Lcom/voxel/launcher3/CellLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;

.field final synthetic val$anim:Lcom/voxel/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$1;->this$0:Lcom/voxel/launcher3/CellLayout;

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout$1;->val$anim:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 286
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$1;->val$anim:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
