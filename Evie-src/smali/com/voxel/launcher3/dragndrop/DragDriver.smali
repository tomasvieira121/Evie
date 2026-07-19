.class public abstract Lcom/voxel/launcher3/dragndrop/DragDriver;
.super Ljava/lang/Object;
.source "DragDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;
    }
.end annotation


# instance fields
.field protected final mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/voxel/launcher3/dragndrop/DragController;Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragDriver;
    .locals 1

    .line 95
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/voxel/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz p3, :cond_0

    .line 96
    new-instance p3, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;

    invoke-direct {p3, p1, p0, p2}, Lcom/voxel/launcher3/dragndrop/SystemDragDriver;-><init>(Lcom/voxel/launcher3/dragndrop/DragController;Landroid/content/Context;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-object p3

    .line 98
    :cond_0
    new-instance p0, Lcom/voxel/launcher3/dragndrop/InternalDragDriver;

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/InternalDragDriver;-><init>(Lcom/voxel/launcher3/dragndrop/DragController;)V

    return-object p0
.end method


# virtual methods
.method public onDragViewAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {p1}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FFLcom/voxel/launcher3/DropTarget;)V

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {p1}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 65
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/voxel/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FFLcom/voxel/launcher3/DropTarget;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
