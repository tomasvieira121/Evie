.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;
.super Ljava/lang/Object;
.source "IntroSlide.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onVideoEnd$0(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$500(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->stopAnimation()V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$800(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1002(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;J)J

    .line 453
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$IntroSlide$3$1$DXPsvFqoPa9mrd5GBeHu4LBPruA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$IntroSlide$3$1$DXPsvFqoPa9mrd5GBeHu4LBPruA;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method
