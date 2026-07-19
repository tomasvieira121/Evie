.class public Lcom/voxel/simplesearchlauncher/gestures/action/ScreenLockWriteSettingsAction;
.super Ljava/lang/Object;
.source "ScreenLockWriteSettingsAction.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/voxel/launcher3/Launcher;)V
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f1202a9

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
