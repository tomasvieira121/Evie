.class Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SpringyMotionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$000(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)Z

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$000(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$100(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;ZZZZ)V

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$200(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;F)V

    .line 112
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$000(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)Z

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$000(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$300(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;ZZZZ)V

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;->this$0:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->access$200(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;F)V

    return-void
.end method
