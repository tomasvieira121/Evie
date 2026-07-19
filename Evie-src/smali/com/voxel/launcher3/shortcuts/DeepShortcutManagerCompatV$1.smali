.class Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV$1;
.super Ljava/lang/Object;
.source "DeepShortcutManagerCompatV.java"

# interfaces
.implements Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0
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

    return-void
.end method
