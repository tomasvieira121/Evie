.class public Lcom/voxel/launcher3/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;,
        Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;,
        Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;,
        Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;

.field private final mIconCache:Lcom/voxel/launcher3/IconCache;

.field private final mMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;

.field private final mPackageVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private final mProfileBadgeMargin:I

.field final mUnusedBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

.field private final mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/voxel/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/voxel/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;

    .line 77
    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 79
    invoke-static {p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 80
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    .line 81
    new-instance p2, Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mDb:Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;

    .line 82
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701cd

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    return-void
.end method

.method private generateShortcutPreview(Lcom/voxel/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 440
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    if-nez p5, :cond_0

    .line 442
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 443
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p4, :cond_1

    .line 448
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 449
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/voxel/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 457
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 458
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    const/16 v1, 0xff

    .line 460
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sub-int/2addr p3, v0

    .line 462
    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v0

    .line 463
    div-int/lit8 p4, p4, 0x2

    add-int v2, p3, v0

    add-int/2addr v0, p4

    .line 464
    invoke-virtual {p2, p3, p4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p5

    .line 445
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Improperly sized bitmap passed as argument"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;
    .locals 3

    .line 141
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 143
    new-instance v0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v0

    .line 145
    :cond_0
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 146
    new-instance v0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$mutateOnMainThread$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$xaUKz3V1-G_T7NEjkHcuzVVOtYo;

    invoke-direct {v1, p1}, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$xaUKz3V1-G_T7NEjkHcuzVVOtYo;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 478
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 475
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method generatePreview(Lcom/voxel/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 303
    instance-of v0, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 304
    move-object v3, p2

    check-cast v3, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    move-object v2, p2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/WidgetPreviewLoader;->generateShortcutPreview(Lcom/voxel/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public generateWidgetPreview(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-gez p3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    .line 329
    :goto_0
    iget v4, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_2

    .line 330
    iget-object v4, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v4, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 332
    invoke-direct {v0, v4}, Lcom/voxel/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v6, "WidgetPreviewLoader"

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 335
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 340
    :goto_2
    iget v9, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 341
    iget v10, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    if-eqz v8, :cond_4

    .line 349
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 350
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    const/4 v13, 0x0

    goto :goto_3

    .line 353
    :cond_4
    iget-object v11, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0801ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 354
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 355
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    mul-int v12, v12, v9

    .line 356
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v13, v13, v10

    move/from16 v18, v13

    move-object v13, v11

    move v11, v12

    move/from16 v12, v18

    :goto_3
    if-eqz p5, :cond_5

    .line 363
    aput v11, p5, v7

    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    if-le v11, v3, :cond_6

    .line 366
    iget v15, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v3, v15

    int-to-float v3, v3

    int-to-float v15, v11

    div-float/2addr v3, v15

    goto :goto_4

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    cmpl-float v14, v3, v14

    if-eqz v14, :cond_7

    int-to-float v11, v11

    mul-float v11, v11, v3

    float-to-int v11, v11

    int-to-float v12, v12

    mul-float v12, v12, v3

    float-to-int v12, v12

    .line 374
    :cond_7
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    if-nez v2, :cond_8

    .line 376
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 377
    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 380
    :cond_8
    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x2

    .line 386
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v16, v16, v12

    div-int/lit8 v5, v16, 0x2

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v8, :cond_9

    add-int v3, v15, v11

    add-int v6, v5, v12

    .line 388
    invoke-virtual {v4, v15, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v4, v0

    move-object v7, v1

    move-object/from16 p3, v2

    goto/16 :goto_9

    .line 391
    :cond_9
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 392
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 393
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v6

    sget-object v8, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 394
    invoke-virtual {v6, v8}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v6

    iget v6, v6, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 397
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 p3, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v7, v7, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 399
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    .line 400
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    .line 401
    new-instance v7, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v15

    move/from16 p4, v15

    move v15, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_b

    move/from16 v17, v9

    int-to-float v9, v5

    move/from16 p5, v5

    move v5, v9

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v10, :cond_a

    .line 407
    invoke-virtual {v7, v15, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 408
    invoke-virtual {v14, v13, v8, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    add-float/2addr v5, v2

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v15, v1

    move/from16 v5, p5

    move/from16 v9, v17

    goto :goto_6

    :cond_b
    move/from16 p5, v5

    int-to-float v0, v6

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v4, v4, v0

    float-to-int v4, v4

    .line 415
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v5, v4

    .line 416
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v4, p0

    .line 419
    :try_start_0
    iget-object v5, v4, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object v6, v4, Lcom/voxel/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/voxel/launcher3/IconCache;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual {v5, v7, v6}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->loadIcon(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Lcom/voxel/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 421
    invoke-direct {v4, v5}, Lcom/voxel/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int v1, v1, p4

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v2, p5

    float-to-int v0, v0

    add-int v3, v1, v0

    add-int/2addr v0, v2

    .line 424
    invoke-virtual {v5, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 427
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :catch_0
    move-object/from16 v7, p2

    :catch_1
    const/4 v0, 0x0

    .line 431
    :goto_8
    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, v4, Lcom/voxel/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    add-int/2addr v11, v1

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v4, Lcom/voxel/launcher3/WidgetPreviewLoader;->mProfileBadgeMargin:I

    add-int/2addr v12, v2

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 435
    iget-object v2, v4, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-object/from16 v3, p3

    invoke-virtual {v2, v7, v3, v0, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getPackageVersion(Ljava/lang/String;)[J
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 490
    new-array v1, v1, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 493
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x1

    .line 494
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v4, v1, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WidgetPreviewLoader"

    const-string v4, "PackageInfo not found"

    .line 496
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 501
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getPreview(Ljava/lang/Object;IILcom/voxel/simplesearchlauncher/widget/WidgetCell;)Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;
    .locals 8

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/WidgetPreviewLoader;->getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    move-result-object v3

    .line 99
    new-instance v0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/voxel/simplesearchlauncher/widget/WidgetCell;)V

    .line 100
    sget-object p1, Lcom/voxel/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    new-instance p1, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-direct {p1, p0, v0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;-><init>(Lcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V

    return-object p1
.end method

.method readFromDb(Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mDb:Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;

    const-string v2, "preview_bitmap"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    .line 270
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object v8, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 271
    invoke-virtual {v7, v8}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-object p1, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    aput-object p1, v4, v5

    .line 265
    invoke-virtual {v1, v2, v3, v4}, Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    invoke-virtual {p3}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 294
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 278
    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 280
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 281
    iput-object p2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    :try_start_3
    invoke-virtual {p3}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 284
    array-length p2, v1

    invoke-static {v1, v6, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    .line 294
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catch_0
    nop

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_4
    const-string p3, "WidgetPreviewLoader"

    const-string v1, "Error loading preview from DB"

    .line 291
    invoke-static {p3, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_5

    .line 294
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_6
    throw p2
.end method

.method writeToDb(Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 4

    .line 154
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "componentName"

    .line 155
    iget-object v2, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "profileId"

    .line 156
    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "size"

    .line 157
    iget-object v2, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 158
    iget-object p1, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    const/4 v1, 0x0

    .line 159
    aget-wide v1, p2, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "lastUpdated"

    const/4 v1, 0x1

    .line 160
    aget-wide v1, p2, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "preview_bitmap"

    .line 161
    invoke-static {p3}, Lcom/voxel/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 162
    iget-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mDb:Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WidgetPreviewLoader$CacheDb;->insertOrReplace(Landroid/content/ContentValues;)V

    return-void
.end method
