.class Lcom/voxel/simplesearchlauncher/view/SlideLayout$1;
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


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

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

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SlideLayout$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating:Z

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
