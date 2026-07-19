.class Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SpringySearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 254
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$100(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 271
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$400(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6

    .line 258
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 260
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getVelocity()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {v2, v0, v1, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method
