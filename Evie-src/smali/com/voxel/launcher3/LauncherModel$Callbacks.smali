.class public interface abstract Lcom/voxel/launcher3/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Lcom/voxel/launcher3/util/LongArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;IIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;IIZZ)V"
        }
    .end annotation
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpLogsToLocalData()V
.end method

.method public abstract finishBindingItems(Z)V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract isAllAppsButtonRank(I)Z
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method

.method public abstract updatePackageBadge(Ljava/lang/String;)V
.end method

.method public abstract updatePackageState(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;",
            ">;)V"
        }
    .end annotation
.end method
