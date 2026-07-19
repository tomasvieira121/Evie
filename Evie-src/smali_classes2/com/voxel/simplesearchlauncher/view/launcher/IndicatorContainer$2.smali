.class Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;
.super Ljava/lang/Object;
.source "IndicatorContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;->this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;->this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;->this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

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
