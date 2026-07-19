.class public interface abstract Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/LauncherAppsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppsChangedCallbackCompat"
.end annotation


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
.end method

.method public abstract onPackagesSuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
.end method

.method public abstract onPackagesUnsuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method
