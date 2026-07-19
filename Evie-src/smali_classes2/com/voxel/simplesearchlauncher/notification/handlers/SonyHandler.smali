.class public Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;
.super Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
.source "SonyHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
    .locals 4

    .line 17
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;->mIntent:Landroid/content/Intent;

    const-string v3, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->setCount(Ljava/lang/String;)V

    return-object v0
.end method
