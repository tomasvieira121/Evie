.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;
.super Ljava/lang/Object;
.source "IntroSlide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->waitForImporters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 310
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$500(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$600(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 312
    new-instance v2, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 337
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1000(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$600(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 341
    new-instance v2, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$2;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2$2;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 363
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
