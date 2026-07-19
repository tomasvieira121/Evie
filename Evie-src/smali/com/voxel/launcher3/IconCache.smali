.class public Lcom/voxel/launcher3/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/IconCache$CacheKey;,
        Lcom/voxel/launcher3/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private mAppsInfoIconFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/IconCache$CacheKey;",
            "Lcom/voxel/launcher3/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalendarCachedDay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private mLastDayOfMonth:I

.field private final mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCalendarCachedDay:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 125
    iget-object p1, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 128
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 129
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    .line 130
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    .line 131
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/IconCache;->mIconDpi:I

    .line 134
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/IconCache;->makeDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addIconToDBAndMemCache(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/IconCache;->updateCacheAndGetContentValues(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Z)V

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Z)",
            "Lcom/voxel/launcher3/IconCache$CacheEntry;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 426
    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;ZZ)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    return-object p1
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;ZZ)Lcom/voxel/launcher3/IconCache$CacheEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "ZZ)",
            "Lcom/voxel/launcher3/IconCache$CacheEntry;"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/voxel/launcher3/IconCache$CacheKey;

    invoke-direct {v0, p1, p4}, Lcom/voxel/launcher3/IconCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 437
    iget-object v1, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/IconCache$CacheEntry;

    .line 439
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/IconCache;->shouldRefreshIcon(Landroid/content/ComponentName;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    :cond_0
    if-nez v1, :cond_8

    .line 444
    new-instance v1, Lcom/voxel/launcher3/IconCache$CacheEntry;

    invoke-direct {v1, v3}, Lcom/voxel/launcher3/IconCache$CacheEntry;-><init>(Lcom/voxel/launcher3/IconCache$1;)V

    if-nez p6, :cond_1

    .line 447
    iget-object p6, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p6, v0}, Lcom/voxel/launcher3/IconCache;->isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 449
    iget-object p6, p0, Lcom/voxel/launcher3/IconCache;->mCalendarCachedDay:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_4

    .line 454
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object p5

    if-eqz p3, :cond_2

    .line 456
    invoke-virtual {p3, p5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    .line 457
    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-eqz p3, :cond_3

    .line 461
    iget-object p6, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/voxel/launcher3/IconCache;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object p5, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p5, p4}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 466
    iget p3, p0, Lcom/voxel/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    const-string p2, ""

    .line 468
    iput-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 470
    invoke-direct {p0, p1, p4}, Lcom/voxel/launcher3/IconCache;->getPreloadedIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 474
    iput-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    .line 477
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Lcom/voxel/launcher3/IconCache;->getEntryForPackage(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 481
    iget-object p3, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object p3, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 482
    iget-object p2, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 486
    :cond_6
    iget-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez p2, :cond_7

    .line 488
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 493
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lcom/voxel/launcher3/IconCache;->handleIconPack(Lcom/voxel/launcher3/IconCache$CacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method private getEntryForPackage(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/IconCache$CacheEntry;
    .locals 4

    .line 553
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v1, Lcom/voxel/launcher3/IconCache$CacheKey;

    invoke-direct {v1, v0, p2}, Lcom/voxel/launcher3/IconCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 555
    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/IconCache$CacheEntry;

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Lcom/voxel/launcher3/IconCache$CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/voxel/launcher3/IconCache$CacheEntry;-><init>(Lcom/voxel/launcher3/IconCache$1;)V

    const-string v2, ""

    .line 558
    iput-object v2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 562
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 563
    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 564
    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :catch_0
    iget-object p1, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 570
    invoke-direct {p0, v0, p2}, Lcom/voxel/launcher3/IconCache;->getPreloadedIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    :cond_0
    return-object v1
.end method

.method private getPreloadedIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 6

    .line 643
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 654
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/voxel/launcher3/IconCache;->getResourceFilename(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    .line 655
    :try_start_1
    new-array p2, p2, [B

    .line 656
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v4, :cond_1

    .line 659
    invoke-virtual {v2, p2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 660
    array-length v4, p2

    invoke-virtual {p1, p2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {p2, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p2, "Launcher.IconCache"

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to decode pre-load icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p1, :cond_5

    .line 674
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    const-string p2, "Launcher.IconCache"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v3, "failed to manage pre-load icon file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :catch_2
    nop

    goto :goto_6

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_4

    :catch_3
    move-exception p2

    move-object p1, v1

    :goto_2
    :try_start_3
    const-string v2, "Launcher.IconCache"

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to read pre-load icon for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 674
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    const-string v1, "Launcher.IconCache"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to manage pre-load icon file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    move-object v1, p1

    goto :goto_7

    :goto_4
    if-eqz p1, :cond_4

    .line 674
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to manage pre-load icon file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.IconCache"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    :cond_4
    :goto_5
    throw p2

    :catch_6
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_5

    .line 674
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    const-string p2, "Launcher.IconCache"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :cond_5
    :goto_7
    return-object v1
.end method

.method private static getResourceFilename(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 700
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    .line 701
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleIconPack(Lcom/voxel/launcher3/IconCache$CacheEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mAppsInfoIconFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p2, p3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->getForcedCustomIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 509
    :goto_0
    invoke-static {}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 512
    iget-object v0, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 520
    invoke-static {v2}, Lcom/voxel/launcher3/Utilities;->getIconSize(Landroid/content/Context;)I

    move-result v2

    .line 516
    invoke-virtual {v1, p2, p3, v0, v2}, Lcom/evie/common/iconpack/IconPackFilter;->getIconForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 523
    iput-object p2, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 525
    :cond_2
    iput-object v0, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    return-void
.end method

.method private makeDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/voxel/launcher3/IconCache;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, v0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 194
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 193
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 199
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static preloadIcon(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 600
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 601
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 608
    :catch_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 611
    :try_start_1
    invoke-static {p1}, Lcom/voxel/launcher3/IconCache;->getResourceFilename(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 613
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 614
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p2, p1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 616
    array-length p1, p0

    invoke-virtual {v0, p0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 628
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p0

    const-string p1, "Launcher.IconCache"

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :cond_0
    :try_start_3
    const-string p0, "Launcher.IconCache"

    .line 618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to encode cache for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 628
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "Launcher.IconCache"

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to save restored icon for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :try_start_5
    const-string p1, "Launcher.IconCache"

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to pre-load cache for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_2

    .line 628
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    const-string p1, "Launcher.IconCache"

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_5
    move-exception p0

    :try_start_7
    const-string p1, "Launcher.IconCache"

    .line 622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to pre-load cache for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_2

    .line 628
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    :catch_6
    move-exception p0

    const-string p1, "Launcher.IconCache"

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v0, "failed to save restored icon for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 628
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    move-exception p1

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to save restored icon for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Launcher.IconCache"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    :cond_3
    :goto_4
    throw p0
.end method

.method private updateCacheAndGetContentValues(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Z)V
    .locals 3

    .line 249
    new-instance v0, Lcom/voxel/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 252
    iget-object p2, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/IconCache$CacheEntry;

    if-eqz p2, :cond_0

    .line 254
    iget-object v0, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    move-object p2, v1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :cond_2
    :goto_0
    if-nez p2, :cond_4

    .line 260
    new-instance p2, Lcom/voxel/launcher3/IconCache$CacheEntry;

    invoke-direct {p2, v1}, Lcom/voxel/launcher3/IconCache$CacheEntry;-><init>(Lcom/voxel/launcher3/IconCache$1;)V

    .line 261
    iget v0, p0, Lcom/voxel/launcher3/IconCache;->mIconDpi:I

    .line 262
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 261
    invoke-static {v0, v1}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 263
    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 267
    :cond_3
    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/voxel/launcher3/IconCache;->handleIconPack(Lcom/voxel/launcher3/IconCache$CacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_4
    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object v1, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 271
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/voxel/launcher3/IconCache$CacheKey;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/voxel/launcher3/IconCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 0

    monitor-enter p0

    .line 536
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/IconCache;->remove(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/IconCache;->getEntryForPackage(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 539
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 540
    iput-object p4, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p3, :cond_1

    .line 543
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p4, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 543
    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deletePreloadedIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1

    .line 691
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 695
    iget-object p2, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/voxel/launcher3/IconCache;->getResourceFilename(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 279
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCalendarCachedDay:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flushInvalidIcons(Lcom/voxel/launcher3/DeviceProfile;)V
    .locals 4

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/IconCache$CacheEntry;

    .line 289
    iget-object v2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    if-lt v2, v3, :cond_1

    iget-object v1, v1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 290
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    if-ge v1, v2, :cond_0

    .line 291
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/IconCache;->makeDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 145
    :try_start_0
    iget v0, p0, Lcom/voxel/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFullResIconDpi()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/voxel/launcher3/IconCache;->mIconDpi:I

    return v0
.end method

.method public declared-synchronized getIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 389
    iget-object p1, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 385
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 310
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 317
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 319
    iget-object v0, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 320
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 322
    :cond_1
    :try_start_2
    iget-object p1, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIconNoCache(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 334
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p2

    .line 335
    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;ZZ)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 336
    iget-object p1, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;
    .locals 1

    monitor-enter p0

    .line 711
    :try_start_0
    invoke-static {}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 6

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-object p1

    .line 346
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    .line 347
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p1

    .line 348
    iget-object p1, p1, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/AppInfo;",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v1, p1, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 302
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 301
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p2

    .line 304
    iget-object p3, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p3, p1, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 305
    iget-object p3, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object p3, p1, Lcom/voxel/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 306
    iget-object p2, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/voxel/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/voxel/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 6

    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const-string p2, ""

    .line 361
    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 362
    iput-boolean p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    .line 365
    invoke-virtual {v0, p2, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p4

    .line 366
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)Lcom/voxel/launcher3/IconCache$CacheEntry;

    move-result-object p2

    .line 368
    iget-object p4, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p4}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 369
    iget-object p4, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p4, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 370
    iget-object p2, p2, Lcom/voxel/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p2, p3}, Lcom/voxel/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isCalendarApp(Landroid/content/Intent;)Z
    .locals 1

    .line 398
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/IconCache;->isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 405
    invoke-static {}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 409
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/evie/common/iconpack/IconPackFilter;->isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onResume()V
    .locals 2

    .line 721
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 723
    iget v1, p0, Lcom/voxel/launcher3/IconCache;->mLastDayOfMonth:I

    if-nez v1, :cond_0

    .line 724
    iput v0, p0, Lcom/voxel/launcher3/IconCache;->mLastDayOfMonth:I

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 726
    iput v0, p0, Lcom/voxel/launcher3/IconCache;->mLastDayOfMonth:I

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.evie.day_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/voxel/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/voxel/launcher3/IconCache$CacheKey;

    invoke-direct {v1, p1, p2}, Lcom/voxel/launcher3/IconCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 4

    monitor-enter p0

    .line 214
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/IconCache$CacheKey;

    .line 216
    iget-object v3, v2, Lcom/voxel/launcher3/IconCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/voxel/launcher3/IconCache$CacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 217
    invoke-virtual {v3, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/IconCache$CacheKey;

    .line 222
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 224
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public setAppsInfoIconFilter(Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/voxel/launcher3/IconCache;->mAppsInfoIconFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;

    .line 716
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->flush()V

    return-void
.end method

.method public declared-synchronized setIconPackFilter(Lcom/evie/common/iconpack/IconPackFilter;)V
    .locals 1

    monitor-enter p0

    .line 706
    :try_start_0
    invoke-static {}, Lcom/evie/common/iconpack/IconPackFilterHolder;->getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/common/iconpack/IconPackFilterHolder;->setIconPackFilter(Lcom/evie/common/iconpack/IconPackFilter;)V

    .line 707
    invoke-virtual {p0}, Lcom/voxel/launcher3/IconCache;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shouldRefreshIcon(Landroid/content/ComponentName;)Z
    .locals 3

    .line 413
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/IconCache;->isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mCalendarCachedDay:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    monitor-enter p0

    .line 230
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/IconCache;->remove(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 234
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    .line 235
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 236
    invoke-direct {p0, p2}, Lcom/voxel/launcher3/IconCache;->addIconToDBAndMemCache(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Launcher.IconCache"

    const-string v0, "Package not found"

    .line 239
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
