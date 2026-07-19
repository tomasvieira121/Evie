.class public Lcom/voxel/simplesearchlauncher/notification/handlers/HTCHandler;
.super Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
.source "HTCHandler.java"


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

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/HTCHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/HTCHandler;->mIntent:Landroid/content/Intent;

    const-string v2, "com.htc.launcher.extra.COUNT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    return-object v0
.end method
