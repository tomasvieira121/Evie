.class public final Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ConfirmShortcutActivity_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMDeepShortcutManager(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    return-void
.end method

.method public static injectMSettingsStorage(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method
