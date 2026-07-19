.class public final Lcom/voxel/launcher3/LauncherModel_MembersInjector;
.super Ljava/lang/Object;
.source "LauncherModel_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMAppsInfoLabelOverrideFilter(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

    return-void
.end method

.method public static injectMDeepShortcutManager(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    return-void
.end method
