.class public Lcom/voxel/launcher3/SearchItemShortcutHandler;
.super Ljava/lang/Object;
.source "SearchItemShortcutHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchItemShortcutHandler"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/voxel/launcher3/SearchItemShortcutHandler;->mActivity:Landroid/app/Activity;

    .line 31
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

    iget-object v0, p0, Lcom/voxel/launcher3/SearchItemShortcutHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    iput-object p1, p0, Lcom/voxel/launcher3/SearchItemShortcutHandler;->mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

    return-void
.end method

.method private createShortcutDragInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/ItemInfo;
    .locals 6

    .line 65
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->createShortcutDragInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method private createShortcutDragInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/ItemInfo;
    .locals 6

    .line 70
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p3, p5}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 72
    new-instance p1, Lcom/voxel/launcher3/ShortcutInfo;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object p1
.end method


# virtual methods
.method public createAppDragInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/voxel/launcher3/ItemInfo;
    .locals 7

    .line 46
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 47
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p2, v3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    new-instance v6, Lcom/voxel/launcher3/AppInfo;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/IconCache;Ljava/util/HashMap;)V

    .line 55
    iget-object p1, p0, Lcom/voxel/launcher3/SearchItemShortcutHandler;->mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->getLabelOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iput-object p1, v6, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    :cond_1
    return-object v6
.end method

.method public fromItemInfoCommon(Landroid/content/Context;Lcom/evie/common/dragndrop/ItemInfoCommon;)Lcom/voxel/launcher3/ItemInfo;
    .locals 4

    .line 96
    instance-of v0, p2, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 97
    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    return-object p2

    .line 99
    :cond_0
    iget-object v0, p2, Lcom/evie/common/dragndrop/ItemInfoCommon;->itemInfoType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x146a23ba

    if-eq v2, v3, :cond_2

    const v3, 0x17a21

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "shortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :pswitch_0
    iget-object v0, p2, Lcom/evie/common/dragndrop/ItemInfoCommon;->intent:Landroid/content/Intent;

    iget-object v1, p2, Lcom/evie/common/dragndrop/ItemInfoCommon;->title:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/evie/common/dragndrop/ItemInfoCommon;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->createShortcutDragInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_1
    iget-object p2, p2, Lcom/evie/common/dragndrop/ItemInfoCommon;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->createAppDragInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.evie.jigsaw.HANDLE_PLACES"

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/SearchItemShortcutHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method
