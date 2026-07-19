.class Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;
.super Ljava/lang/Object;
.source "GenericNoFeedbackSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->access$100(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)Lcom/evie/search/SearchPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 37
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;->access$000(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericNoFeedbackSlide$1$aEImSSIUtore6GGjWhVnNyuSO5s;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericNoFeedbackSlide$1$aEImSSIUtore6GGjWhVnNyuSO5s;-><init>(Lcom/voxel/simplesearchlauncher/search/view/GenericNoFeedbackSlide$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

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
