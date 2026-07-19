.class public Lcom/voxel/simplesearchlauncher/notification/NotificationContent;
.super Ljava/lang/Object;
.source "NotificationContent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final autoCancel:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field private mBadgeIcon:I

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIconLarge:Z

.field public final notificationKey:Ljava/lang/String;

.field public final packageUserKey:Lcom/voxel/launcher3/util/PackageUserKey;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p2}, Lcom/voxel/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/voxel/launcher3/util/PackageUserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->packageUserKey:Lcom/voxel/launcher3/util/PackageUserKey;

    .line 41
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 43
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->title:Ljava/lang/CharSequence;

    .line 44
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->text:Ljava/lang/CharSequence;

    .line 46
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mBadgeIcon:I

    .line 49
    :cond_0
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 50
    iget v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mBadgeIcon:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 53
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->color:I

    iput p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconColor:I

    .line 56
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIsIconLarge:Z

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIsIconLarge:Z

    .line 64
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_4

    .line 65
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 66
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v1

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->packageUserKey:Lcom/voxel/launcher3/util/PackageUserKey;

    iget-object v4, v4, Lcom/voxel/launcher3/util/PackageUserKey;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 67
    invoke-virtual {v1, v4}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iput v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mBadgeIcon:I

    .line 70
    :cond_4
    iget-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->intent:Landroid/app/PendingIntent;

    .line 71
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->autoCancel:Z

    .line 72
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->dismissable:Z

    return-void
.end method


# virtual methods
.method public getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIsIconLarge:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 80
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconColor:I

    invoke-static {p1, v0, p2}, Lcom/voxel/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconColor:I

    .line 81
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    iget p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->mIconColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method
