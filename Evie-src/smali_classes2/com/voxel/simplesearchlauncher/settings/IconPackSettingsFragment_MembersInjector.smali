.class public final Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment_MembersInjector;
.super Ljava/lang/Object;
.source "IconPackSettingsFragment_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMIconPackManager(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    return-void
.end method

.method public static injectMLocalAppsManager(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method
