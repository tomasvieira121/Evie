.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;
.super Ljava/lang/Object;
.source "IntroSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

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

    .line 320
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {p1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->stopAnimation()V

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$800(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

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
