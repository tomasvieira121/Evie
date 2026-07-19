.class public Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;
.super Ljava/lang/Object;
.source "LaunchAppAction.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p1, p1, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;

    invoke-virtual {p1, p0}, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAction(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLaunchIntent(Landroid/content/Intent;Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 19
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LaunchAppAction()"

    return-object v0
.end method
