.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1$1;
.super Ljava/lang/Object;
.source "IntroSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->lambda$onVideoEnd$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1$1;->this$2:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1$1;->this$2:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;->this$1:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

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
