.class Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;
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

    .line 103
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    :cond_0
    return-void
.end method
