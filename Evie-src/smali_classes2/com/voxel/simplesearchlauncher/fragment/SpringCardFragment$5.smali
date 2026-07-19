.class Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;
.super Ljava/lang/Object;
.source "SpringCardFragment.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->lambda$runExitAnimation$4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->notifyFragmentRequestClose()V

    .line 326
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->animationEnded()V

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 316
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentDisplacementDistance()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    .line 319
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$600(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 320
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
