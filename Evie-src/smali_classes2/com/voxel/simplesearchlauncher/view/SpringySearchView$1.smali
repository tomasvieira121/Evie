.class Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;
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

    .line 206
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 213
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$100(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 242
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$400(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 10

    .line 218
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v4, v0, v1

    if-gtz v4, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 220
    :goto_1
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$200(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;D)V

    .line 223
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v5

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v7}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$300(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 227
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v7}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$300(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F

    move-result v7

    sub-float/2addr v1, v7

    float-to-double v7, v1

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 229
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$300(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F

    move-result v1

    float-to-double v7, v1

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 232
    :goto_3
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getVelocity()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {v5, v0, v2, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method
