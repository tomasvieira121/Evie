.class public Lcom/voxel/simplesearchlauncher/notification/handlers/OldLGHandler;
.super Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
.source "OldLGHandler.java"


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

    .line 16
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/OldLGHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/OldLGHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "number"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->setCount(I)V

    return-object v0
.end method
