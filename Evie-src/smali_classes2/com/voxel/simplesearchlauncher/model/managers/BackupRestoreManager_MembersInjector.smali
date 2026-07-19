.class public final Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager_MembersInjector;
.super Ljava/lang/Object;
.source "BackupRestoreManager_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMIconPackManager(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    return-void
.end method

.method public static injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    return-void
.end method

.method public static injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method

.method public static injectMSettingsStorage(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method
