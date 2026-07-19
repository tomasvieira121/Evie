.class Lcom/voxel/launcher3/Launcher$21;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 3430
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 3433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 3434
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3435
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/voxel/launcher3/Launcher;->access$4302(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 3436
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAllResizeFrames()Z

    .line 3437
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$4400(Lcom/voxel/launcher3/Launcher;)V

    .line 3441
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$4500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3442
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, p2, p2}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    .line 3443
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/Launcher;->showWorkspace(Z)V

    .line 3447
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$4600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setDesktopUnlockedTemporarily(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 3448
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3449
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/voxel/launcher3/Launcher;->access$4302(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 3450
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$4400(Lcom/voxel/launcher3/Launcher;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 3460
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 3461
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3462
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$21;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_4
    :goto_0
    return-void
.end method
