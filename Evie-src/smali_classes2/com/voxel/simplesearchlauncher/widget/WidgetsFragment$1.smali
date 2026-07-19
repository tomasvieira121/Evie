.class Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;
.super Ljava/lang/Object;
.source "WidgetsFragment.java"

# interfaces
.implements Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field applicationContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

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
