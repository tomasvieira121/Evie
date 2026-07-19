.class Lcom/voxel/simplesearchlauncher/view/SpringySearchView$4;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SpringySearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->initializeAlternativeHintSpringIfNeeded()V
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

    .line 842
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$4;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3

    .line 845
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$4;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$600(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method
