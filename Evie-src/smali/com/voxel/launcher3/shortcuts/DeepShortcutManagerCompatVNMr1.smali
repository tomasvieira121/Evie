.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;
.super Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;
.source "DeepShortcutManagerCompatVNMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeepShortcutsLoaded:Z

.field private mHasShortcutHostPermission:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mMainHandler:Landroid/os/Handler;

.field private mPermissionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

.field private mWasLastCallSuccess:Z

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mMainHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mPermissionListeners:Ljava/util/Set;

    .line 70
    new-instance v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 108
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$2;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$2;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 150
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutsLoaded:Z

    return p0
.end method

.method static synthetic access$002(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mHasShortcutHostPermission:Z

    return p0
.end method

.method static synthetic access$102(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mHasShortcutHostPermission:Z

    return p1
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Ljava/util/Set;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mPermissionListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private extractIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 270
    invoke-virtual {v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$XdcESJzcrYTaLI5b8pnY7nY-UL8(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->loadDeepShortcuts()V

    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 10

    .line 346
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutsLoaded:Z

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->clear()V

    .line 350
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->hasHostPermission()Z

    move-result v1

    iput-boolean v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mHasShortcutHostPermission:Z

    .line 351
    iget-boolean v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mHasShortcutHostPermission:Z

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 354
    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/compat/UserManagerCompat;->isUserUnlocked(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, v3

    .line 355
    invoke-direct/range {v4 .. v9}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 356
    invoke-virtual {p0, v5, v3, v4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 360
    iput-boolean v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutsLoaded:Z

    .line 362
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 286
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 289
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 290
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    const/4 p1, 0x0

    .line 294
    :try_start_0
    iget-object p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p5}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    .line 295
    iput-boolean p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "DeepShortcutManager"

    const-string p4, "Failed to query for shortcuts"

    .line 297
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    .line 298
    iput-boolean p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    :goto_0
    if-nez p1, :cond_1

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 303
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 305
    new-instance p4, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;

    invoke-direct {p4, p3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2

    .line 309
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addPermissionListener(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mPermissionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finishStartup()V
    .locals 2

    .line 327
    iget-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutsLoaded:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/shortcuts/-$$Lambda$DeepShortcutManagerCompatVNMr1$XdcESJzcrYTaLI5b8pnY7nY-UL8;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/shortcuts/-$$Lambda$DeepShortcutManagerCompatVNMr1$XdcESJzcrYTaLI5b8pnY7nY-UL8;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getShortcutIconDrawable(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 239
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    check-cast p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;

    .line 242
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 241
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    .line 243
    iput-boolean p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "DeepShortcutManager"

    const-string v0, "Failed to get shortcut icon"

    .line 246
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasHostPermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 315
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DeepShortcutManager"

    const-string v2, "Failed to make shortcut manager call"

    .line 319
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 206
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p1, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object p1, p1, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 211
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to pin shortcut"

    .line 216
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 260
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x9

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public refreshShortcutsIfRequired()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 225
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 228
    invoke-virtual {p5}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 227
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DeepShortcutManager"

    const-string p3, "Failed to start shortcut"

    .line 231
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 232
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public unpinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 184
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object p1, p1, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to unpin shortcut"

    .line 194
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public wasLastCallSuccess()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mWasLastCallSuccess:Z

    return v0
.end method
