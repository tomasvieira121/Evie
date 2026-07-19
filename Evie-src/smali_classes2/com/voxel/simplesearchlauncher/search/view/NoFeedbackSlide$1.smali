.class Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;
.super Ljava/lang/Object;
.source "NoFeedbackSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->access$100(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)Lcom/evie/search/SearchPresenter;

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

    .line 35
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;->access$000(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$NoFeedbackSlide$1$cZcm3YW0Wdauu2OuIqYuOph9RK0;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$NoFeedbackSlide$1$cZcm3YW0Wdauu2OuIqYuOph9RK0;-><init>(Lcom/voxel/simplesearchlauncher/search/view/NoFeedbackSlide$1;)V

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
