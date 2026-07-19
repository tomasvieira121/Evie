.class Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;
.super Ljava/lang/Object;
.source "SlideLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

.field final synthetic val$currentSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

.field final synthetic val$enterAnimation:Landroid/animation/AnimatorSet;

.field final synthetic val$targetChild:I

.field final synthetic val$targetSlide:Lcom/voxel/simplesearchlauncher/view/Slide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/view/Slide;Lcom/voxel/simplesearchlauncher/view/Slide;ILandroid/animation/AnimatorSet;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$currentSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$targetSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    iput p4, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$targetChild:I

    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$enterAnimation:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$currentSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/Slide;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$currentSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/Slide;->onExitingSlide()V

    .line 107
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$targetSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/Slide;->onEnteringSlide()V

    .line 108
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$targetSlide:Lcom/voxel/simplesearchlauncher/view/Slide;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/Slide;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$targetChild:I

    iput v0, p1, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->mCurrentChild:I

    .line 110
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$2;->val$enterAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
