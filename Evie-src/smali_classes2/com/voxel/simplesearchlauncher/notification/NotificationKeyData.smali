.class public Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;
.super Ljava/lang/Object;
.source "NotificationKeyData.java"


# instance fields
.field public count:I

.field public final notificationKey:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->count:I

    return-void
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v0, v0, Landroid/app/Notification;->number:I

    invoke-direct {v1, p0, v2, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
