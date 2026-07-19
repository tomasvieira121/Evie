.class Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "PopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 594
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$400(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$400(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$400(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$400(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 598
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getNotificationKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    .line 601
    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->access$500(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    .line 605
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;)I

    move-result p2

    .line 603
    invoke-virtual {p1, v1, v0, p2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->trimNotifications(Landroid/os/Handler;Ljava/util/List;I)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
