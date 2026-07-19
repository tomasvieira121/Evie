.class public interface abstract Lcom/voxel/launcher3/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/DropTarget$DragObject;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
.end method
