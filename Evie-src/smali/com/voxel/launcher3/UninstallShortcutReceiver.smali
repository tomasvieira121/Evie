.class public Lcom/voxel/launcher3/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    }
.end annotation


# static fields
.field private static mUninstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseUninstallQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static disableAndFlushUninstallQueue(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    .line 74
    sget-object v0, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-static {p0, v1}, Lcom/voxel/launcher3/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static enableUninstallQueue()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    return-void
.end method

.method private static processUninstallShortcut(Landroid/content/Context;Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->init(Landroid/content/Context;Ldagger/Lazy;)V

    .line 85
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p1, Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->data:Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 93
    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {p0, p1}, Lcom/voxel/launcher3/UninstallShortcutReceiver;->removeShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    .line 95
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static removeShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate"

    const/4 v3, 0x1

    .line 101
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    sget-object v5, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v6, "intent"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "title=?"

    new-array v8, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "intent"

    .line 109
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_id"

    .line 110
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 115
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 117
    :try_start_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v8, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 121
    invoke-static {v11, v12, v10}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    .line 122
    invoke-virtual {v2, v8, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 133
    :cond_3
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v7, :cond_4

    .line 137
    sget-object p1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const p1, 0x7f12024c

    .line 138
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v10

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 133
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 134
    throw p0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    invoke-direct {v0, p2}, Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;-><init>(Landroid/content/Intent;)V

    .line 61
    sget-boolean p2, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUseUninstallQueue:Z

    if-eqz p2, :cond_1

    .line 62
    sget-object p1, Lcom/voxel/launcher3/UninstallShortcutReceiver;->mUninstallQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1, v0}, Lcom/voxel/launcher3/UninstallShortcutReceiver;->processUninstallShortcut(Landroid/content/Context;Lcom/voxel/launcher3/UninstallShortcutReceiver$PendingUninstallShortcutInfo;)V

    :goto_0
    return-void
.end method
