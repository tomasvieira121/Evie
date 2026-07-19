.class public final Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_MembersInjector;
.super Ljava/lang/Object;
.source "FolderSettingsFragment_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    return-void
.end method

.method public static injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method
