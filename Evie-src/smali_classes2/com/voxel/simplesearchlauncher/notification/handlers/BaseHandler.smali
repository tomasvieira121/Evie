.class public abstract Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
.super Ljava/lang/Object;
.source "BaseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseHandler"


# instance fields
.field protected mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHandler(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "lge.intent.action.UNREAD_EMAILS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "com.htc.launcher.action.SET_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    .line 35
    :pswitch_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/handlers/XiaomiHandler;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/handlers/XiaomiHandler;-><init>()V

    goto :goto_2

    .line 32
    :pswitch_1
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/handlers/SonyHandler;-><init>()V

    goto :goto_2

    .line 29
    :pswitch_2
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/handlers/OldLGHandler;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/handlers/OldLGHandler;-><init>()V

    goto :goto_2

    .line 26
    :pswitch_3
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/handlers/HTCHandler;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/handlers/HTCHandler;-><init>()V

    goto :goto_2

    .line 23
    :pswitch_4
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/handlers/DefaultHandler;-><init>()V

    :goto_2
    if-eqz v0, :cond_1

    .line 40
    iput-object p0, v0, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->mIntent:Landroid/content/Intent;

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x73fe886b -> :sswitch_4
        -0x54ecb526 -> :sswitch_3
        -0x469f0f96 -> :sswitch_2
        0x4115c0b6 -> :sswitch_1
        0x440e839d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract getNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
.end method

.method public handleNotification(Landroid/content/Context;)V
    .locals 4

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->getNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->HANDLER:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    .line 57
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unread count update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 62
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not handle notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not handle notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/handlers/BaseHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
