.class public Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;
.super Ljava/lang/Object;
.source "CustomGestureManager.java"


# instance fields
.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->onAction(Lcom/voxel/launcher3/Launcher;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;-><init>()V

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1, v1}, Lcom/voxel/simplesearchlauncher/gestures/action/LaunchAppAction;->onLaunchIntent(Landroid/content/Intent;Lcom/voxel/launcher3/Launcher;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
