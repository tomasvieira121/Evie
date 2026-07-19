.class public Lcom/voxel/simplesearchlauncher/gestures/action/EvieSearchAction;
.super Ljava/lang/Object;
.source "EvieSearchAction.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/voxel/launcher3/Launcher;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Launcher;->activateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    return-void
.end method
