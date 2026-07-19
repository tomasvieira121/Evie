.class public Lcom/voxel/launcher3/dragndrop/DragOptions;
.super Ljava/lang/Object;
.source "DragOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;
    }
.end annotation


# instance fields
.field public deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

.field public isAccessibleDrag:Z

.field public isDesktopLocked:Z

.field public systemDndStartPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    .line 33
    new-instance v1, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    invoke-direct {v1}, Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    .line 36
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    return-void
.end method
