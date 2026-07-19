.class Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SpringCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;-><init>()V
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

    .line 78
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 5

    const-string v0, "SpringCardFragment onSpringUpdate"

    .line 81
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$200(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->invalidateBackgroundWashAlpha()V

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentDisplacementDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 95
    :cond_2
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/TraceUtil;->endSection()V

    return-void
.end method
