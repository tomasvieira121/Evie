.class public Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;
.super Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
.source "DefaultHandler.java"


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

    .line 14
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "badge_count_package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;->mIntent:Landroid/content/Intent;

    const-string v3, "badge_count_class_name"

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "badge_count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    return-object v0
.end method
