.class Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;
.super Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;
.source "PopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->createDeferDragCondition(Ljava/lang/Runnable;)Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

.field final synthetic val$onDragStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->val$onDragStart:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredDragStart()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$100(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$100(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->val$onDragStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onDropBeforeDeferredDrag()V
    .locals 0

    return-void
.end method

.method public shouldStartDeferredDrag(D)Z
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$000(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
