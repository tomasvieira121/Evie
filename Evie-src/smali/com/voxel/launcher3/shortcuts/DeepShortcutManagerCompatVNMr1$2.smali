.class Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$2;
.super Ljava/lang/Object;
.source "DeepShortcutManagerCompatVNMr1.java"

# interfaces
.implements Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$2;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

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
    .locals 0

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
    .locals 1
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

    .line 146
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$2;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-virtual {v0, p1, p3, p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    return-void
.end method
