.class Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;
.super Landroid/view/ViewOutlineProvider;
.source "SpringySearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;II)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->val$w:I

    iput p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->val$h:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 305
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->val$w:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->val$h:I

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->access$500(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
