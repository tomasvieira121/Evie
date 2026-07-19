.class public Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ConfirmShortcutActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

.field mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f010016

    .line 41
    invoke-virtual {p0, p1, p1}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 46
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const-string v0, "launcherapps"

    .line 48
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 50
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    return-void

    .line 57
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    return-void

    .line 61
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    return-void

    .line 67
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;

    invoke-direct {v3, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    new-instance v4, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-direct {v4, v3, v5, p0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/voxel/launcher3/LauncherModel;->addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 72
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "ConfirmShortcutActivity"

    const-string v2, "Could not create shortcut"

    .line 75
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->finish()V

    .line 78
    throw v0
.end method
