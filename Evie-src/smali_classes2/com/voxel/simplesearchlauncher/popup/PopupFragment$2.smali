.class Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;
.super Ljava/lang/Object;
.source "PopupFragment.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$100(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$100(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$102(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)Landroid/view/View;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$200(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 487
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->runExitAnimation()V

    return-void
.end method
