.class Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaUpdateListener"
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2449
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    return-void
.end method

.method public static updateVisibility(Landroid/view/View;)V
    .locals 3

    .line 2460
    invoke-static {}, Lcom/voxel/launcher3/Workspace;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2461
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2462
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2463
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 2464
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2465
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2475
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2485
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2454
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method
