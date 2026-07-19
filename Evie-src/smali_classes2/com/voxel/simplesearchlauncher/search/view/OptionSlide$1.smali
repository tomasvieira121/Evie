.class Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;
.super Ljava/lang/Object;
.source "OptionSlide.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->access$200(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->access$100(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide$1;->this$0:Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;->access$000(Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
