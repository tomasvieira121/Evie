.class public Lcom/voxel/simplesearchlauncher/receiver/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->createHandler(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->handleNotification(Landroid/content/Context;)V

    return-void
.end method
