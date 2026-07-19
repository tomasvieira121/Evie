.class Lcom/voxel/launcher3/Launcher$19;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->startDrag(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 0

    .line 3177
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$19;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$19;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    .line 3203
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$19;->val$dragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3204
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$19;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$4100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .line 3182
    iget p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionLeft()I

    move-result v0

    iget-object v1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_1

    iget p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 3183
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionLeft()I

    move-result v0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 3184
    :cond_1
    :goto_0
    iget p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    neg-int p2, p2

    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 3187
    :goto_1
    iget v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionTop()I

    move-result v2

    iget-object v3, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    iget v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 3188
    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionTop()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3189
    :cond_2
    iget v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    neg-int v0, v0

    iget-object v1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 3192
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$19;->val$dragView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    if-eqz v1, :cond_5

    .line 3194
    :cond_4
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p2, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->animateShiftTo(II)V

    .line 3195
    iget v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    .line 3196
    iget p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    :cond_5
    return-void
.end method
