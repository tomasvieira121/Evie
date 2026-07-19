.class public Lcom/voxel/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"

# interfaces
.implements Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;


# static fields
.field private static INSTANCE:Lcom/voxel/launcher3/LauncherAppState;

.field private static sContext:Landroid/content/Context;

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/voxel/launcher3/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProviderCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/voxel/launcher3/IconCache;

.field private mIsScreenLarge:Z

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mLongPressTimeout:I

.field private mModel:Lcom/voxel/launcher3/LauncherModel;

.field private mScreenDensity:F

.field private mWallpaperChangedSinceLastCheck:Z

.field private final mWidgetCache:Lcom/voxel/launcher3/WidgetPreviewLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProviderCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 59
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mLongPressTimeout:I

    .line 145
    new-instance v0, Lcom/voxel/launcher3/LauncherAppState$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/voxel/launcher3/LauncherAppState$1;-><init>(Lcom/voxel/launcher3/LauncherAppState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 96
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v0, "Launcher"

    const-string v1, "LauncherAppState inited"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/voxel/launcher3/MemoryTracker;->startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mIsScreenLarge:Z

    .line 107
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mScreenDensity:F

    .line 109
    new-instance v0, Lcom/voxel/launcher3/IconCache;

    sget-object v1, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 110
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherAppState;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/WidgetPreviewLoaderFactory;->createWidgetPreviewLoader(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mWidgetCache:Lcom/voxel/launcher3/WidgetPreviewLoader;

    .line 112
    new-instance v0, Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherAppState;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-direct {v0, p0, v1}, Lcom/voxel/launcher3/LauncherModel;-><init>(Lcom/voxel/launcher3/LauncherAppState;Lcom/voxel/launcher3/IconCache;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    .line 113
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1, v2, v0}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/voxel/launcher3/LauncherAppState;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LauncherAppState inited before app context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/LauncherAppState;)Lcom/voxel/launcher3/LauncherModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    return-object p0
.end method

.method public static getInstance()Lcom/voxel/launcher3/LauncherAppState;
    .locals 1

    .line 74
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->INSTANCE:Lcom/voxel/launcher3/LauncherAppState;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/voxel/launcher3/LauncherAppState;

    invoke-direct {v0}, Lcom/voxel/launcher3/LauncherAppState;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherAppState;->INSTANCE:Lcom/voxel/launcher3/LauncherAppState;

    .line 77
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->INSTANCE:Lcom/voxel/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;
    .locals 1

    .line 81
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->INSTANCE:Lcom/voxel/launcher3/LauncherAppState;

    return-object v0
.end method

.method static getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;
    .locals 1

    .line 177
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherProvider;

    return-object v0
.end method

.method static getLauncherProviderSafe()Lcom/voxel/launcher3/LauncherProvider;
    .locals 1

    .line 182
    :try_start_0
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProviderCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherProvider;

    return-object v0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.voxel.launcher3.prefs"

    return-object v0
.end method

.method public static isDisableAllApps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDogfoodBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x7f050012

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3

    .line 89
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApplicationContext called twice! old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-void
.end method

.method static setLauncherProvider(Lcom/voxel/launcher3/LauncherProvider;)V
    .locals 1

    .line 172
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProviderCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/voxel/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 85
    sget-object v0, Lcom/voxel/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

    return-object v0
.end method

.method public getIconCache()Lcom/voxel/launcher3/IconCache;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mIconCache:Lcom/voxel/launcher3/IconCache;

    return-object v0
.end method

.method public getLongPressTimeout()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mLongPressTimeout:I

    return v0
.end method

.method public getModel()Lcom/voxel/launcher3/LauncherModel;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    return-object v0
.end method

.method public getScreenDensity()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mScreenDensity:F

    return v0
.end method

.method public getWidgetCache()Lcom/voxel/launcher3/WidgetPreviewLoader;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mWidgetCache:Lcom/voxel/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method public hasWallpaperChangedSinceLastCheck()Z
    .locals 2

    .line 267
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    const/4 v1, 0x0

    .line 268
    iput-boolean v1, p0, Lcom/voxel/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    return v0
.end method

.method public initDynamicGrid(Landroid/content/Context;)Lcom/voxel/launcher3/DeviceProfile;
    .locals 19

    move-object/from16 v0, p0

    .line 197
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 198
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 199
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string v4, "window"

    move-object/from16 v15, p1

    .line 200
    invoke-virtual {v15, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v1, v2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 202
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 203
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 207
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 208
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 209
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 210
    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 211
    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 213
    iget-object v5, v0, Lcom/voxel/launcher3/LauncherAppState;->mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

    if-nez v5, :cond_0

    .line 214
    new-instance v14, Lcom/voxel/launcher3/DynamicGrid;

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, v0, Lcom/voxel/launcher3/LauncherAppState;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 218
    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getStoredCellParams()Ljava/util/Map;

    move-result-object v16

    .line 219
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v17

    move-object v5, v14

    move-object/from16 v6, p1

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move/from16 v18, v4

    move-object v4, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    invoke-direct/range {v5 .. v15}, Lcom/voxel/launcher3/DynamicGrid;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIIILjava/util/Map;Z)V

    iput-object v4, v0, Lcom/voxel/launcher3/LauncherAppState;->mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

    .line 221
    iget-object v4, v0, Lcom/voxel/launcher3/LauncherAppState;->mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

    invoke-virtual {v4}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/voxel/launcher3/DeviceProfile;->addCallback(Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;)V

    goto :goto_0

    :cond_0
    move/from16 v18, v4

    .line 225
    :goto_0
    iget-object v4, v0, Lcom/voxel/launcher3/LauncherAppState;->mDynamicGrid:Lcom/voxel/launcher3/DynamicGrid;

    invoke-virtual {v4}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v4

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v5, v4

    move-object/from16 v6, p1

    move v8, v1

    move v9, v2

    move v10, v3

    move/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Lcom/voxel/launcher3/DeviceProfile;->updateFromConfiguration(Landroid/content/Context;Landroid/content/res/Resources;IIII)V

    return-object v4
.end method

.method public isScreenLarge()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mIsScreenLarge:Z

    return v0
.end method

.method public onAvailableSizeChanged(Lcom/voxel/launcher3/DeviceProfile;)V
    .locals 0

    .line 274
    iget p1, p1, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->setIconSize(I)V

    return-void
.end method

.method setLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherModel;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/LauncherModel;->initialize(Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    .line 160
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    return-object p1

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setLauncher() called before init()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageState(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/LauncherModel;->setPackageState(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updatePackageBadge(Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppState;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/LauncherModel;->updatePackageBadge(Ljava/lang/String;)V

    return-void
.end method
