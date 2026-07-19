.class Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4f7457ec

    if-eq v0, v1, :cond_1

    const v1, -0x47232690

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.evie.refresh_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "com.evie.dismiss_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "com.evie.notification.key"

    .line 52
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 53
    sget-boolean p2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz p2, :cond_3

    .line 55
    :try_start_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->cancelNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    iget-boolean p1, p1, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mHasChanged:Z

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->refreshNotifications()V

    :catch_0
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
