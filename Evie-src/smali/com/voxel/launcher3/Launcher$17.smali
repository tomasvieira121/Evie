.class Lcom/voxel/launcher3/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 3014
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFactorBeginChanging()V
    .locals 1

    .line 3018
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3300(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method

.method public onFactorChanged(F)V
    .locals 4

    .line 3024
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3028
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$3500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getFactorDistance()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 3029
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3600(Lcom/voxel/launcher3/Launcher;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    .line 3031
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result p1

    .line 3032
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/Launcher;->access$3700(Lcom/voxel/launcher3/Launcher;F)V

    .line 3034
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$3500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object p1

    .line 3035
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3800(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    .line 3036
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->launchGoogleNowActivity(Z)V

    .line 3037
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher;->access$3802(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 3040
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onFactorEndChanging()V
    .locals 3

    .line 3045
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->access$3402(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 3048
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->access$3802(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 3050
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getCurrentFactor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 3051
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->access$3900(Lcom/voxel/launcher3/Launcher;J)V

    goto :goto_0

    .line 3053
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$17;->this$0:Lcom/voxel/launcher3/Launcher;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->access$3900(Lcom/voxel/launcher3/Launcher;J)V

    :goto_0
    return-void
.end method
