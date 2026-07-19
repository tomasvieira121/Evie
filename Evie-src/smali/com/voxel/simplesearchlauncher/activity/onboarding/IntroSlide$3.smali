.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;
.super Ljava/lang/Object;
.source "IntroSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
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

    .line 428
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x7f110000

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 434
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    move-result-object p1

    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->CENTER_CROP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setScaleType(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;)V

    .line 435
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->play()V

    .line 436
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->access$1100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    move-result-object p1

    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;)V

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->setListener(Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;)V

    return-void
.end method
