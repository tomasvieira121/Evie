.class Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;
.super Ljava/lang/Object;
.source "AlphaSetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 38
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->access$000(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    move-result-object p1

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;->this$0:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->access$000(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    move-result-object p1

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
