.class public Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;
.super Ljava/lang/Object;
.source "DragOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/dragndrop/DragOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferDragCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredDragStart()V
    .locals 0

    return-void
.end method

.method public onDragStart()V
    .locals 0

    return-void
.end method

.method public onDropBeforeDeferredDrag()V
    .locals 0

    return-void
.end method

.method public shouldStartDeferredDrag(D)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
