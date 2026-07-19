.class public Lcom/voxel/simplesearchlauncher/gestures/action/GoogleNowAction;
.super Ljava/lang/Object;
.source "GoogleNowAction.java"

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
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->launchGoogleNowActivity(Z)V

    return-void
.end method
