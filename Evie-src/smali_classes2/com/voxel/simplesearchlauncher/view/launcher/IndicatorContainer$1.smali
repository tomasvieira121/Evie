.class Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$1;
.super Ljava/lang/Object;
.source "IndicatorContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 35
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$1;->this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$1;->this$0:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
