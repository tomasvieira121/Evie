.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;
.super Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;
.source "DeepShortcutManagerCompatV.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/MultiHashMap<",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDeepShortcutsLoaded:Z

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;-><init>()V

    .line 62
    new-instance v0, Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/voxel/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;

    .line 67
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV$1;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;)V

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method private canAccessActivityInfo(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    .line 340
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$Jz8p5NXdNAqZlP2_ooTZuzrcMw4(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->loadDeepShortcuts()V

    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 12

    .line 250
    iget-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutsLoaded:Z

    if-nez v0, :cond_b

    .line 251
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    sget-boolean v2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 255
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :goto_0
    new-instance v2, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;

    invoke-direct {v2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;-><init>()V

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 265
    :try_start_0
    invoke-virtual {v5}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 266
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "android.app.shortcuts"

    .line 270
    invoke-virtual {v6, v1, v7}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 273
    invoke-virtual {v5}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 275
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v8, v7}, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->parseShortcutsFile(Landroid/content/res/Resources;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    .line 277
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->getConversionsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 279
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 280
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 281
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    .line 282
    iget-object v9, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    if-nez v9, :cond_4

    .line 283
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_6

    .line 290
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;

    .line 291
    iget-object v11, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->matches(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 292
    iget-object v9, v10, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mConvertToIntent:Landroid/content/Intent;

    iput-object v9, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    .line 299
    :cond_6
    iget-object v9, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    .line 301
    :try_start_1
    iget-object v8, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v1, v8, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 302
    invoke-direct {p0, v8}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->canAccessActivityInfo(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 303
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 308
    :catch_0
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 312
    :cond_7
    iget-object v8, v8, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v8, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_8

    .line 314
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 317
    :cond_8
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 319
    invoke-direct {p0, v8}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->canAccessActivityInfo(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 320
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 327
    :cond_9
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    nop

    goto/16 :goto_1

    .line 334
    :cond_a
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutsLoaded:Z

    :cond_b
    return-void
.end method

.method private query(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/util/ComponentKey;

    if-eqz p1, :cond_1

    .line 176
    iget-object v3, v2, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 177
    iget-object v3, v2, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addPermissionListener(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V
    .locals 0

    return-void
.end method

.method public finishStartup()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutsLoaded:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/shortcuts/-$$Lambda$DeepShortcutManagerCompatV$Jz8p5NXdNAqZlP2_ooTZuzrcMw4;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/shortcuts/-$$Lambda$DeepShortcutManagerCompatV$Jz8p5NXdNAqZlP2_ooTZuzrcMw4;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getShortcutIconDrawable(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 202
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p2

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    iget p1, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIconResId:I

    invoke-virtual {p2, v0, p1}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public pinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
    .locals 0

    return-void
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 0
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

    const/4 p2, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->query(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 0
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

    const/4 p2, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->query(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 0
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

    .line 151
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->query(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public refreshShortcutsIfRequired()V
    .locals 0

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1

    const/4 p5, 0x0

    .line 187
    invoke-direct {p0, p1, p5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->query(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 190
    invoke-virtual {p5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    check-cast p5, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    invoke-virtual {p5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const/high16 p2, 0x10000000

    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    iget-object p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public unpinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
    .locals 0

    return-void
.end method

.method protected updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    .line 121
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/voxel/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/util/ComponentKey;

    if-eqz p1, :cond_1

    .line 125
    iget-object v2, v1, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v1, v1, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 126
    invoke-virtual {v1, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 133
    new-instance p3, Lcom/voxel/launcher3/util/ComponentKey;

    .line 134
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 135
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;->mDeepShortcutMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v0, p3, p2}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public wasLastCallSuccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
