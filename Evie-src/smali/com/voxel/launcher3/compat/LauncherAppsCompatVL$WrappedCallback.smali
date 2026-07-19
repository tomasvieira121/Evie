.class Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 158
    new-instance v2, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;

    invoke-direct {v2, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 162
    invoke-static {p3}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p3

    .line 161
    invoke-interface {p2, p1, v0, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method
