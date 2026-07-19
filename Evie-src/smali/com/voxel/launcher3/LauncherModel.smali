.class public Lcom/voxel/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;,
        Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;,
        Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;,
        Lcom/voxel/launcher3/LauncherModel$LoaderTask;,
        Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;,
        Lcom/voxel/launcher3/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field static final sBgPinnedShortcutCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgWorkspaceScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/voxel/launcher3/LauncherAppState;

.field private final mAppsCanBeOnRemoveableStorage:Z

.field mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

.field mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/voxel/launcher3/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

.field private volatile mFlushingWorkerThread:Z

.field private mHandler:Lcom/voxel/launcher3/DeferredHandler;

.field private mHasLoaderCompletedOnce:Z

.field private mIconCache:Lcom/voxel/launcher3/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private final mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

.field private mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private final mOldContentProviderExists:Z

.field protected mPreviousConfigMcc:I

.field private final mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 148
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    .line 4094
    sget-object v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k;

    sput-object v0, Lcom/voxel/launcher3/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/voxel/launcher3/LauncherAppState;Lcom/voxel/launcher3/IconCache;)V
    .locals 8

    .line 269
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/voxel/launcher3/DeferredHandler;

    invoke-direct {v0}, Lcom/voxel/launcher3/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    .line 270
    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    const v1, 0x7f120189

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.launcher2.settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const-string v4, "Launcher.Model"

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old launcher provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    .line 283
    :cond_0
    iput-boolean v5, p0, Lcom/voxel/launcher3/LauncherModel;->mOldContentProviderExists:Z

    .line 285
    iget-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel;->mOldContentProviderExists:Z

    if-eqz v1, :cond_1

    const-string v1, "Launcher.Model"

    const-string v2, "Old launcher provider exists."

    .line 286
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.Model"

    const-string v2, "Old launcher provider does not exist."

    .line 288
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mApp:Lcom/voxel/launcher3/LauncherAppState;

    .line 292
    new-instance p1, Lcom/voxel/launcher3/AllAppsList;

    invoke-direct {p1, p2}, Lcom/voxel/launcher3/AllAppsList;-><init>(Lcom/voxel/launcher3/IconCache;)V

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    .line 293
    iput-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 297
    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    iput p1, p0, Lcom/voxel/launcher3/LauncherModel;->mPreviousConfigMcc:I

    .line 298
    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    .line 299
    invoke-static {v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/LauncherModel;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/voxel/launcher3/LauncherModel;->mFlushingWorkerThread:Z

    return p0
.end method

.method static synthetic access$002(Lcom/voxel/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mFlushingWorkerThread:Z

    return p1
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/LauncherModel;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/voxel/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    return-object p0
.end method

.method static synthetic access$102(Lcom/voxel/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/voxel/launcher3/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/LauncherModel;->getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/voxel/launcher3/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 0

    .line 104
    invoke-direct/range {p0 .. p7}, Lcom/voxel/launcher3/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/shortcuts/ShortcutKey;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->incrementPinnedShortcutCount(Lcom/voxel/launcher3/shortcuts/ShortcutKey;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->findOrMakeFolder(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600()Landroid/os/Handler;
    .locals 1

    .line 104
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 0

    .line 104
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/voxel/launcher3/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/LauncherModel;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/LauncherModel;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/voxel/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return p0
.end method

.method static synthetic access$302(Lcom/voxel/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/launcher3/LauncherModel;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/voxel/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return p0
.end method

.method static synthetic access$502(Lcom/voxel/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherModel$LoaderTask;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    return-object p0
.end method

.method static synthetic access$602(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$LoaderTask;)Lcom/voxel/launcher3/LauncherModel$LoaderTask;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/voxel/launcher3/LauncherModel;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/voxel/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return p0
.end method

.method static synthetic access$702(Lcom/voxel/launcher3/LauncherModel;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return p1
.end method

.method static synthetic access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherAppState;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/voxel/launcher3/LauncherModel;->mApp:Lcom/voxel/launcher3/LauncherAppState;

    return-object p0
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V
    .locals 6

    .line 1071
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 1072
    iput p6, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 1073
    iput p7, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 1076
    instance-of v0, p0, Lcom/voxel/launcher3/Launcher;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 1078
    move-object p2, p0

    check-cast p2, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object p2

    invoke-virtual {p2, p6, p7}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_0

    .line 1080
    :cond_0
    iput-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1083
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1085
    invoke-virtual {p1, p0, v3}, Lcom/voxel/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1087
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->generateNewItemId()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->id:J

    const-string p0, "_id"

    .line 1088
    iget-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1090
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 1091
    new-instance p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;

    move-object v0, p0

    move v2, p8

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1129
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V
    .locals 9

    move-object v1, p1

    .line 645
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 647
    invoke-static/range {v0 .. v8}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/voxel/launcher3/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    :goto_0
    return-void
.end method

.method static appWasPromise(Landroid/content/Context;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    .line 965
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 969
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/voxel/launcher3/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private bindUpdatedShortcuts(Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 3072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/voxel/launcher3/LauncherModel;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method private bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 3079
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3080
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    .line 3081
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_tU7pQPnHBmunLo8DuVFQEjbRww;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_tU7pQPnHBmunLo8DuVFQEjbRww;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v7}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static checkItemInfo(Lcom/voxel/launcher3/ItemInfo;)V
    .locals 4

    .line 698
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 699
    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 700
    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;-><init>(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 705
    invoke-static {v3}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static checkItemInfoLocked(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 6

    .line 656
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p0, p1}, Lcom/voxel/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/ItemInfo;

    if-eqz p0, :cond_5

    if-eq p2, p0, :cond_5

    .line 659
    instance-of p1, p0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_2

    .line 660
    move-object p1, p0

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 661
    move-object v0, p2

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 662
    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 663
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->id:J

    iget-wide v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    if-ne v1, v2, :cond_2

    iget-wide v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    iget-wide v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    iget-wide v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    aget v2, v3, v2

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    const/4 v1, 0x1

    aget p1, p1, v1

    iget-object v0, v0, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_2

    :cond_1
    return-void

    .line 685
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/voxel/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    .line 687
    invoke-virtual {p0}, Lcom/voxel/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, "null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 689
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 691
    invoke-virtual {p1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_5
    return-void
.end method

.method private decrementPinnedShortcutCount(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
    .locals 3

    .line 1229
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    if-eqz v1, :cond_0

    .line 1231
    iget v2, v1, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/util/MutableInt;->value:I

    if-nez v2, :cond_1

    .line 1232
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V

    .line 1234
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static deleteComponentNameFromDatabase(Landroid/content/Context;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 1152
    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/FolderInfo;)V
    .locals 1

    .line 1316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1318
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ;-><init>(Landroid/content/ContentResolver;Lcom/voxel/launcher3/FolderInfo;)V

    .line 1338
    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V
    .locals 1

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1184
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;

    invoke-direct {v0, p1, p0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;-><init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1222
    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 1160
    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private enqueueTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 3091
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 3809
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3810
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 3811
    instance-of v2, v1, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3812
    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3813
    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3814
    invoke-interface {p1, v3, v1, v2}, Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3815
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3817
    :cond_1
    instance-of v2, v1, Lcom/voxel/launcher3/FolderInfo;

    if-eqz v2, :cond_4

    .line 3818
    move-object v2, v1

    check-cast v2, Lcom/voxel/launcher3/FolderInfo;

    .line 3819
    invoke-interface {p1, v3, v1, v3}, Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3820
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3822
    :cond_2
    iget-object v1, v2, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3823
    invoke-virtual {v3}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3824
    invoke-interface {p1, v2, v3, v4}, Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3825
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3828
    :cond_4
    instance-of v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    .line 3829
    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 3830
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3831
    invoke-interface {p1, v3, v1, v2}, Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;->filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3832
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3836
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method static findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .line 375
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p2

    .line 378
    monitor-enter p1

    .line 379
    :try_start_0
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 383
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherModel;->flushWorkerThread()V

    .line 385
    :cond_0
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 389
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 390
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_2

    const/4 v0, 0x2

    .line 392
    new-array v0, v0, [I

    .line 394
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 393
    invoke-static {p0, v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p1

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 399
    :cond_2
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    return-void
.end method

.method static findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;[IJ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;[IJ)Z"
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 345
    iget v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v5, v1

    .line 346
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v6, v0

    .line 347
    filled-new-array {v5, v6}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Z

    const/4 v0, 0x0

    .line 350
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 351
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 352
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 353
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v2, p2

    if-nez v4, :cond_1

    .line 354
    iget v2, v1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 355
    iget v3, v1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 356
    iget v4, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 357
    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move v8, v2

    :goto_1
    if-ltz v8, :cond_1

    add-int v9, v2, v4

    if-ge v8, v9, :cond_1

    if-ge v8, v5, :cond_1

    move v9, v3

    :goto_2
    if-ltz v9, :cond_0

    add-int v10, v3, v1

    if-ge v9, v10, :cond_0

    if-ge v9, v6, :cond_0

    .line 360
    aget-object v10, v7, v8

    const/4 v11, 0x1

    aput-boolean v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, p1

    .line 367
    invoke-static/range {v2 .. v7}, Lcom/voxel/launcher3/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result p0

    return p0
.end method

.method private static findOrMakeFolder(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;J)",
            "Lcom/voxel/launcher3/FolderInfo;"
        }
    .end annotation

    .line 4063
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/FolderInfo;

    if-nez v0, :cond_0

    .line 4066
    new-instance v0, Lcom/voxel/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/FolderInfo;-><init>()V

    .line 4067
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getHotseatItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 3133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3135
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3136
    :try_start_0
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 3137
    iget-wide v4, v3, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 3138
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3141
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method public static getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 3841
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3848
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getItemsByPackageName(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 1143
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$w5H_AReJ1VN8yTLThAuVegQQ6E8;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$w5H_AReJ1VN8yTLThAuVegQQ6E8;-><init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 1144
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getItemsForScreenPosition(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 3147
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherModel;->getScreenIdAtPosition(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 3149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3151
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3153
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3154
    :try_start_0
    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 3155
    iget-wide v5, v4, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    iget-wide v5, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v7, v5, v0

    if-nez v7, :cond_1

    .line 3157
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3160
    :cond_2
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    return-void
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 979
    sget-object v2, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "itemType"

    const-string v4, "container"

    const-string v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string v8, "spanX"

    const-string v9, "spanY"

    const-string v10, "profileId"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "itemType"

    .line 986
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "container"

    .line 987
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "screen"

    .line 988
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellX"

    .line 989
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellY"

    .line 990
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "spanX"

    .line 991
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "spanY"

    .line 992
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "profileId"

    .line 993
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 994
    invoke-static {p0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p0

    .line 996
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 997
    new-instance v10, Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {v10}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    .line 998
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 999
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 1000
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 1001
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 1002
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v10, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 1003
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    .line 1004
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v10, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1005
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    .line 1006
    invoke-virtual {p0, v11, v12}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v11

    iput-object v11, v10, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 1008
    iget-object v11, v10, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    if-eqz v11, :cond_0

    .line 1009
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1015
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1013
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 1015
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1016
    throw p0

    return-void
.end method

.method static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 3693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    .line 3695
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    .line 3696
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    .line 3697
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 3698
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 3694
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getRestoredItemIntent(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 3688
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 3689
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static getScreenIdAtPosition(I)J
    .locals 2

    .line 3173
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 3176
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getScreenPosition(J)I
    .locals 1

    .line 3166
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3169
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 2

    .line 3877
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 3879
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    const/4 v1, 0x1

    .line 3880
    iput v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 3884
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p7

    iput-object p7, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3886
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 p7, 0x0

    packed-switch p3, :pswitch_data_0

    .line 3925
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object p2, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3926
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 3927
    iput-boolean p7, v0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    goto :goto_1

    .line 3915
    :pswitch_0
    invoke-virtual {p0, p1, p6, p2}, Lcom/voxel/launcher3/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3917
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object p2, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3918
    iput-boolean p7, v0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    .line 3919
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_1

    .line 3921
    :cond_0
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    goto :goto_1

    .line 3889
    :pswitch_1
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3890
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 3891
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    .line 3892
    iput-boolean p7, v0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    const/4 p7, 0x0

    .line 3895
    :try_start_0
    invoke-virtual {p5, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3897
    invoke-virtual {p3, p4, p7, p7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 3898
    iget-object p5, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 3899
    invoke-virtual {p5, p3, p4}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 3898
    invoke-static {p3, p2}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p7, p3

    :catch_0
    :cond_1
    if-nez p7, :cond_2

    .line 3906
    invoke-virtual {p0, p1, p6, p2}, Lcom/voxel/launcher3/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p7

    :goto_0
    if-nez p1, :cond_3

    .line 3910
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object p2, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3911
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 3930
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .line 4135
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private incrementPinnedShortcutCount(Lcom/voxel/launcher3/shortcuts/ShortcutKey;Z)V
    .locals 4

    .line 1244
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 1247
    sget-boolean v2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    .line 1249
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 1250
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1252
    :cond_0
    iget v2, v1, Landroid/util/MutableInt;->value:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/util/MutableInt;->value:I

    .line 1254
    :goto_0
    iget v1, v1, Landroid/util/MutableInt;->value:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    .line 1258
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V

    .line 1260
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    .line 3627
    invoke-static {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    .line 3628
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isShortcutInfoUpdateable(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 3

    .line 3852
    instance-of v0, p0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 3853
    check-cast p0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3857
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3858
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3859
    iget v2, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MAIN"

    .line 3860
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3864
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3648
    :cond_0
    invoke-static {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    .line 3649
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p0

    return p0
.end method

.method public static isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3636
    :cond_0
    invoke-static {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    .line 3637
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3640
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p0

    return p0
.end method

.method static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 4110
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4111
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$addAndBindAddedWorkspaceApps$6(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 481
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 484
    invoke-virtual {v2, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 485
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_0
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 489
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/ItemInfo;

    .line 490
    iget-object v9, v8, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 491
    invoke-virtual {v8}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 494
    invoke-static {v0, v9, v10}, Lcom/voxel/launcher3/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 496
    instance-of v11, v8, Lcom/voxel/launcher3/AppInfo;

    if-eqz v11, :cond_1

    iget-object v11, v8, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 497
    invoke-static {v0, v10, v11}, Lcom/voxel/launcher3/LauncherModel;->appWasPromise(Landroid/content/Context;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 498
    check-cast v8, Lcom/voxel/launcher3/AppInfo;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 511
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v11

    .line 512
    invoke-virtual {v11}, Lcom/voxel/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v11

    .line 514
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v11, 0x0

    .line 518
    invoke-static {v0, v9, v10, v11, v1}, Lcom/voxel/launcher3/LauncherModel;->findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v12

    const/4 v13, 0x1

    if-nez v12, :cond_4

    .line 524
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v12

    .line 531
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    rsub-int/lit8 v14, v14, 0x1

    .line 530
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    if-lez v14, :cond_3

    .line 533
    invoke-virtual {v12}, Lcom/voxel/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v15

    .line 535
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, -0x1

    const/4 v13, 0x1

    goto :goto_2

    .line 541
    :cond_3
    invoke-static {v0, v9, v10, v11, v1}, Lcom/voxel/launcher3/LauncherModel;->findNextAvailableIconSpace(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v12

    :cond_4
    if-eqz v12, :cond_7

    .line 551
    instance-of v9, v8, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v9, :cond_5

    .line 552
    check-cast v8, Lcom/voxel/launcher3/ShortcutInfo;

    move-object v15, v8

    goto :goto_3

    .line 553
    :cond_5
    instance-of v9, v8, Lcom/voxel/launcher3/AppInfo;

    if-eqz v9, :cond_6

    .line 554
    check-cast v8, Lcom/voxel/launcher3/AppInfo;

    invoke-virtual {v8}, Lcom/voxel/launcher3/AppInfo;->makeShortcut()Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v8

    move-object v15, v8

    :goto_3
    const-wide/16 v13, -0x64

    .line 560
    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    .line 562
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [I

    aget v18, v8, v11

    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x1

    aget v19, v8, v9

    const/16 v20, 0x0

    move-object/from16 v8, p1

    move-object v9, v15

    move-wide v10, v13

    move-wide/from16 v12, v16

    move/from16 v14, v18

    move-object/from16 v21, v15

    move/from16 v15, v19

    move/from16 v16, v20

    .line 560
    invoke-static/range {v8 .. v16}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    move-object/from16 v8, v21

    .line 564
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 556
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coordinates should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-virtual {v7, v0, v1}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 571
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 572
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ceex_B9pYgsm5jxLw73rUbtDD-Y;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ceex_B9pYgsm5jxLw73rUbtDD-Y;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v7, v0}, Lcom/voxel/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 566
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method public static synthetic lambda$addAppsToAllApps$4(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 443
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$NHTK9-D5bN1Is16A8r5SeOS4Dls;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$NHTK9-D5bN1Is16A8r5SeOS4Dls;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$addItemToDatabase$11(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1092
    sget-object p1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1096
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1097
    :try_start_0
    iget-wide p1, p3, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {p1, p2, p3, p4}, Lcom/voxel/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 1098
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v0, p3, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-virtual {p1, v0, v1, p3}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1099
    iget p1, p3, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 1101
    :pswitch_0
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v0, p3, Lcom/voxel/launcher3/ItemInfo;->id:J

    move-object p4, p3

    check-cast p4, Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {p1, v0, v1, p4}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1106
    :cond_1
    :pswitch_1
    iget-wide v0, p3, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-wide v0, p3, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    goto :goto_1

    .line 1110
    :cond_2
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v0, p3, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "adding item: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " to a folder that  doesn\'t exist"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Launcher.Model"

    .line 1114
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1108
    :cond_3
    :goto_1
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_4
    :goto_2
    iget p1, p3, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-ne p1, p2, :cond_6

    .line 1118
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    check-cast p3, Lcom/voxel/launcher3/ShortcutInfo;

    .line 1119
    invoke-static {p3}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object p2

    const/4 p3, 0x1

    .line 1118
    invoke-direct {p1, p2, p3}, Lcom/voxel/launcher3/LauncherModel;->incrementPinnedShortcutCount(Lcom/voxel/launcher3/shortcuts/ShortcutKey;Z)V

    goto :goto_3

    .line 1124
    :cond_5
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    check-cast p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$bindUpdatedShortcuts$16(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1

    .line 3082
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 3084
    invoke-interface {v0, p2, p3, p4}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkItemInfo$8(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 701
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/voxel/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 703
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$deleteFolderContentsFromDatabase$15(Landroid/content/ContentResolver;Lcom/voxel/launcher3/FolderInfo;)V
    .locals 5

    .line 1319
    iget-wide v0, p1, Lcom/voxel/launcher3/FolderInfo;->id:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1321
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_0
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v3, p1, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    .line 1323
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v3, p1, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    .line 1324
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1328
    sget-object v0, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1331
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1332
    :try_start_1
    iget-object p1, p1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 1333
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v2, v0, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    .line 1334
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1336
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 1326
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    return-void
.end method

.method static synthetic lambda$deleteItemsFromDatabase$13(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 9

    .line 1185
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 1186
    iget-wide v1, v0, Lcom/voxel/launcher3/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1187
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1190
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1191
    :try_start_0
    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1193
    :pswitch_0
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v3, v0, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    .line 1194
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 1195
    iget-wide v4, v3, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide v6, v0, Lcom/voxel/launcher3/ItemInfo;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting a folder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") which still contains items ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher.Model"

    .line 1200
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1203
    :cond_1
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1206
    :cond_2
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-static {v3}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/voxel/launcher3/LauncherModel;->decrementPinnedShortcutCount(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V

    .line 1211
    :pswitch_1
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1214
    :cond_3
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1217
    :goto_2
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v3, v0, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    .line 1218
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getItemInfoForComponentName$20(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 3842
    iget-object p2, p3, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    if-nez p2, :cond_0

    .line 3843
    invoke-static {p4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3845
    :cond_0
    invoke-static {p4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p3, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getItemsByPackageName$12(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 1143
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p3, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$null$17(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 1

    .line 3226
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3228
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsRestored(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$null$3(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .line 444
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne p1, v0, :cond_4

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/AppInfo;

    .line 448
    invoke-virtual {v2}, Lcom/voxel/launcher3/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 450
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v2, v2, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, v3, v2}, Lcom/voxel/launcher3/IconCache;->deletePreloadedIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_1

    .line 454
    :cond_2
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 456
    :cond_3
    invoke-interface {p1, v1, v1, v1, p3}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$null$5(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    .line 573
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne p1, v0, :cond_3

    if-eqz v0, :cond_3

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 578
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 579
    iget-wide v3, v3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 580
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    .line 581
    iget-wide v6, v5, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_1

    .line 582
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :cond_2
    invoke-interface {p1, p3, v2, v0, v1}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 590
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 591
    invoke-interface {p1, p4}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$onInject$0(Lcom/voxel/launcher3/LauncherModel;)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method public static synthetic lambda$recheckRestoredItems$18(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;)V
    .locals 12

    .line 3192
    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 3193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3194
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v8

    .line 3195
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3196
    :try_start_0
    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/voxel/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 3197
    instance-of v5, v4, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v5, :cond_1

    .line 3198
    check-cast v4, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3199
    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3201
    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3200
    invoke-virtual {v0, v5, v8}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3202
    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3204
    :cond_1
    instance-of v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz v5, :cond_0

    .line 3205
    check-cast v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const/4 v5, 0x2

    .line 3206
    invoke-virtual {v4, v5}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3208
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3207
    invoke-virtual {v0, v5, v8}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3209
    iget-object v4, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3213
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3215
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3216
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3217
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3218
    invoke-virtual {v0, v2, v8}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 3219
    new-instance v11, Lcom/voxel/launcher3/AppInfo;

    iget-object v6, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/voxel/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3223
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 3224
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3225
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$TLLNQzLj3jmLLioPWOzZoSSszQw;

    invoke-direct {v1, p0, p1, v9}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$TLLNQzLj3jmLLioPWOzZoSSszQw;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 3213
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    return-void
.end method

.method public static synthetic lambda$setPackageState$1(Lcom/voxel/launcher3/LauncherModel;Ljava/util/ArrayList;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 408
    invoke-interface {v0, p1}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->updatePackageState(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$static$22(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/AppInfo;)I
    .locals 5

    .line 4096
    iget-wide v0, p0, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    iget-wide v2, p1, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4097
    :cond_0
    iget-wide v0, p0, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    iget-wide p0, p1, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$unbindWorkspaceItemsOnMainThread$7(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 630
    invoke-virtual {v0}, Lcom/voxel/launcher3/ItemInfo;->unbind()V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    .line 633
    invoke-virtual {p1}, Lcom/voxel/launcher3/ItemInfo;->unbind()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$updateDeepShortcutInfo$19(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)V
    .locals 2

    .line 3554
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 3555
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3554
    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    .line 3556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3557
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3558
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/LauncherModel;->bindUpdatedShortcuts(Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic lambda$updateItemInDatabaseHelper$9(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    invoke-static {p3, p4, p5, p6}, Lcom/voxel/launcher3/LauncherModel;->updateItemArrays(Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic lambda$updateItemsInDatabaseHelper$10(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 9

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 732
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 733
    iget-wide v5, v4, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 734
    invoke-static {v5, v6, v2}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v7

    .line 735
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 737
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-static {v4, v5, v6, p2}, Lcom/voxel/launcher3/LauncherModel;->updateItemArrays(Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "com.voxel.launcher3.settings"

    .line 742
    invoke-virtual {p3, p0, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 744
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$updatePackageBadge$2(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/String;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 419
    invoke-interface {v0, p1}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->updatePackageBadge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$updateWorkspaceScreenOrder$14(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 7

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1291
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "_id"

    .line 1293
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "screenRank"

    .line 1294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1295
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "com.voxel.launcher3.settings"

    .line 1299
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1305
    :try_start_1
    sget-object p2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1306
    sget-object p2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p0

    .line 1301
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    return-void
.end method

.method private static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1572
    sget-object v1, Lcom/voxel/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1573
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1574
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 1577
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screenRank"

    .line 1579
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1581
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1583
    :try_start_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1584
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "Launcher.Model"

    .line 1587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1591
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-string p0, "Launcher.Model"

    const-string v1, "11683562 - loadWorkspaceScreensDb()"

    .line 1595
    invoke-static {p0, v1, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1596
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "Launcher.Model"

    .line 1600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11683562 -   screens: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 1601
    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1600
    invoke-static {v1, p0, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1591
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1592
    throw v0

    return-void
.end method

.method static modifyItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIII)V
    .locals 1

    .line 890
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 891
    iput p6, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 892
    iput p7, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 893
    iput p8, p1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 894
    iput p9, p1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 898
    instance-of p8, p0, Lcom/voxel/launcher3/Launcher;

    if-eqz p8, :cond_0

    const-wide/16 p8, 0x0

    cmp-long v0, p4, p8

    if-gez v0, :cond_0

    const-wide/16 p8, -0x65

    cmp-long v0, p2, p8

    if-nez v0, :cond_0

    .line 900
    move-object p2, p0

    check-cast p2, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object p2

    invoke-virtual {p2, p6, p7}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_0

    .line 902
    :cond_0
    iput-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 905
    :goto_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "container"

    .line 906
    iget-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "cellX"

    .line 907
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "cellY"

    .line 908
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "rank"

    .line 909
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->rank:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    .line 910
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 911
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "screen"

    .line 912
    iget-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "modifyItemInDatabase"

    .line 914
    invoke-static {p0, p2, p1, p3}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V
    .locals 3

    .line 826
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 827
    iput p6, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 828
    iput p7, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 832
    instance-of v0, p0, Lcom/voxel/launcher3/Launcher;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 834
    move-object p2, p0

    check-cast p2, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object p2

    invoke-virtual {p2, p6, p7}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_0

    .line 836
    :cond_0
    iput-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 839
    :goto_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "container"

    .line 840
    iget-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "cellX"

    .line 841
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "cellY"

    .line 842
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "rank"

    .line 843
    iget p4, p1, Lcom/voxel/launcher3/ItemInfo;->rank:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "screen"

    .line 844
    iget-wide p4, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "moveItemInDatabase"

    .line 846
    invoke-static {p0, p2, p1, p3}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 860
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 861
    iput-wide p2, v3, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 865
    instance-of v4, p0, Lcom/voxel/launcher3/Launcher;

    if-eqz v4, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v4, -0x65

    cmp-long v6, p2, v4

    if-nez v6, :cond_0

    .line 867
    move-object v4, p0

    check-cast v4, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v4

    iget v5, v3, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v6, v3, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v4, v5, v6}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_1

    :cond_0
    int-to-long v4, p4

    .line 870
    iput-wide v4, v3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 873
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    .line 874
    iget-wide v6, v3, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cellX"

    .line 875
    iget v6, v3, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    .line 876
    iget v6, v3, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "rank"

    .line 877
    iget v6, v3, Lcom/voxel/launcher3/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen"

    .line 878
    iget-wide v6, v3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 880
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "moveItemInDatabase"

    .line 882
    invoke-static {p0, v0, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;I)V
    .locals 1

    .line 315
    sget-object p2, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 317
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 328
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 329
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 332
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 934
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 937
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 939
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 941
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 942
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    goto :goto_0

    :cond_1
    move-object p0, p2

    .line 949
    :goto_0
    sget-object v1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "title"

    const-string v3, "intent"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "title=? and (intent=? or intent=?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    .line 951
    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x2

    invoke-virtual {p0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, p1

    const/4 v5, 0x0

    .line 949
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 954
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 957
    throw p1
.end method

.method private stopLoaderLocked()Z
    .locals 2

    .line 1497
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    .line 1502
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static updateItemArrays(Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 752
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    invoke-static {p1, p2, p0, p3}, Lcom/voxel/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 755
    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v3, -0x65

    const-wide/16 v5, -0x64

    cmp-long p3, v1, v5

    if-eqz p3, :cond_0

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 758
    sget-object p3, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-virtual {p3, v1, v2}, Lcom/voxel/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result p3

    if-nez p3, :cond_0

    .line 761
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " container being set to: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", not in the list of folders"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Launcher.Model"

    .line 763
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    sget-object p0, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/ItemInfo;

    if-eqz p0, :cond_3

    .line 771
    iget-wide p1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_1

    iget-wide p1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    .line 774
    :cond_1
    iget p1, p0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 779
    :cond_2
    :pswitch_0
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 780
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    :cond_3
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 789
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 921
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 922
    invoke-virtual {p1, p0, v0}, Lcom/voxel/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v1, "updateItemInDatabase"

    .line 923
    invoke-static {p0, v0, p1, v1}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;Ljava/lang/String;)V
    .locals 8

    .line 710
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->id:J

    const/4 p3, 0x0

    .line 711
    invoke-static {v5, v6, p3}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 714
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 715
    new-instance p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 719
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 726
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    .line 727
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;

    invoke-direct {v0, p2, p1, p3, p0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 747
    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 469
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 473
    :cond_1
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E;-><init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    .line 597
    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    .line 467
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "workspaceApps and allAppsApps must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 435
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/AppInfo;

    .line 437
    invoke-virtual {v3}, Lcom/voxel/launcher3/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v3, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {p1, v4, v5}, Lcom/voxel/launcher3/LauncherModel;->appWasPromise(Landroid/content/Context;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 443
    :cond_3
    new-instance p1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 459
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    .line 429
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "allAppsApps must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method bindRemainingSynchronousPages()V
    .locals 6

    .line 1546
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1549
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 1550
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Runnable;

    .line 1549
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 1551
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1552
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 1554
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1552
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher.Model"

    .line 4115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    .line 4116
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    .line 4117
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    .line 4118
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    .line 4119
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v2, v2, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/AppInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4120
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 4121
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->dumpState()V

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    .line 4123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public flushWorkerThread()V
    .locals 4

    const/4 v0, 0x1

    .line 793
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel;->mFlushingWorkerThread:Z

    .line 794
    new-instance v1, Lcom/voxel/launcher3/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/LauncherModel$1;-><init>(Lcom/voxel/launcher3/LauncherModel;)V

    .line 803
    monitor-enter v1

    .line 804
    :try_start_0
    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 805
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    if-eqz v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 807
    :try_start_1
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 808
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    .line 813
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 818
    :cond_1
    :try_start_4
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    return-void
.end method

.method public forceReload()V
    .locals 1

    const/4 v0, 0x1

    .line 1448
    invoke-virtual {p0, v0, v0}, Lcom/voxel/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 1453
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->startLoaderFromBackground()V

    return-void
.end method

.method public getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;Z)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;Z)",
            "Lcom/voxel/launcher3/ShortcutInfo;"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const-string p2, "Launcher.Model"

    const-string p3, "Null user found in getAppShortcutInfo"

    .line 3719
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 3723
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "Launcher.Model"

    .line 3725
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing component found in getAppShortcutInfo: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 3729
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.LAUNCHER"

    .line 3730
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3731
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3732
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mLauncherApps:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {p2, v1, p3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object p2

    if-nez p2, :cond_2

    if-nez p9, :cond_2

    const-string p2, "Launcher.Model"

    .line 3734
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing activity found in getAppShortcutInfo: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 3738
    :cond_2
    new-instance p1, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {p1}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 3744
    iget-object p9, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p9, v0, p2, p8}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object p9

    if-nez p9, :cond_3

    if-eqz p5, :cond_3

    .line 3749
    invoke-virtual {p0, p5, p6, p4}, Lcom/voxel/launcher3/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p9

    :cond_3
    const/4 p4, 0x1

    if-nez p9, :cond_4

    .line 3754
    iget-object p6, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p6, p3}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p9

    .line 3755
    iput-boolean p4, p1, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 3757
    :cond_4
    invoke-virtual {p1, p9}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    if-eqz p8, :cond_5

    .line 3761
    invoke-virtual {p8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    iput-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3764
    :cond_5
    iget-object p6, p0, Lcom/voxel/launcher3/LauncherModel;->mAppsInfoLabelOverrideFilter:Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, p9, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->getLabelOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_7

    if-eqz p8, :cond_6

    .line 3767
    iget-object p9, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p8, v0, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3769
    :cond_6
    iput-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3773
    :cond_7
    iget-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p6, :cond_8

    if-eqz p2, :cond_8

    .line 3774
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object p6

    iput-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz p8, :cond_8

    .line 3776
    iget-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p8, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    :cond_8
    iget-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p6, :cond_9

    if-eqz p5, :cond_9

    .line 3782
    invoke-interface {p5, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3786
    :cond_9
    iget-object p5, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez p5, :cond_a

    .line 3787
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_a
    const/4 p5, 0x0

    .line 3789
    iput p5, p1, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 3790
    iput-object p3, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3791
    iget-object p3, p0, Lcom/voxel/launcher3/LauncherModel;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object p6, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object p7, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p3, p6, p7}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p1, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3793
    iput p5, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    if-eqz p2, :cond_b

    .line 3795
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p2, 0x1

    if-nez p3, :cond_b

    .line 3797
    iget p3, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    or-int/2addr p3, p4

    iput p3, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_b

    .line 3800
    iget p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    :cond_b
    return-object p1
.end method

.method public getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;
    .locals 1

    .line 4128
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;J)",
            "Lcom/voxel/launcher3/FolderInfo;"
        }
    .end annotation

    .line 1025
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1026
    sget-object v1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    .line 1028
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1029
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1026
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1032
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "itemType"

    .line 1033
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v3, "title"

    .line 1034
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "container"

    .line 1035
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "screen"

    .line 1036
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellX"

    .line 1037
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cellY"

    .line 1038
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1041
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/voxel/launcher3/LauncherModel;->findOrMakeFolder(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;

    move-result-object v2

    .line 1047
    :goto_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1048
    iput-wide p3, v2, Lcom/voxel/launcher3/FolderInfo;->id:J

    .line 1049
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v2, Lcom/voxel/launcher3/FolderInfo;->container:J

    .line 1050
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v2, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    .line 1051
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/voxel/launcher3/FolderInfo;->cellX:I

    .line 1052
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/voxel/launcher3/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1058
    throw p1
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3941
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 3943
    :try_start_0
    array-length v0, p1

    .line 3944
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3943
    invoke-static {p1, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;I)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 4

    .line 3658
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 3659
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3660
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p3, v2, v3}, Lcom/voxel/launcher3/IconCache;->getTitleAndIcon(Lcom/voxel/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 3663
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3664
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3665
    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3667
    :cond_1
    iput v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    goto :goto_2

    :cond_2
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_5

    .line 3669
    iget-object p4, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p1, :cond_3

    .line 3670
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_4
    const/4 p1, 0x2

    .line 3672
    iput p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    .line 3677
    :goto_2
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object p2, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object p4, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, p2, p4}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3678
    iput v3, v0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 3679
    iput-object p3, v0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    return-object v0

    .line 3674
    :cond_5
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid restoreType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 9

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 3962
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 3963
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 3964
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "Launcher.Model"

    const-string p2, "Can\'t construct ShorcutInfo with null intent"

    .line 3968
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 3976
    instance-of v6, v2, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 3977
    new-instance p2, Lcom/voxel/launcher3/FastBitmapDrawable;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p2, v2}, Lcom/voxel/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p2, p1}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v2, v3

    const/4 v4, 0x1

    move-object v3, p1

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 3980
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3981
    instance-of v2, p2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    .line 3983
    :try_start_0
    move-object v2, p2

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3985
    iget-object v7, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 3987
    iget-object v7, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v6, v7, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3988
    iget-object v8, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 3989
    invoke-virtual {v8, v6, v7}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3988
    invoke-static {v6, p1}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v3

    :catch_1
    const-string p1, "Launcher.Model"

    .line 3992
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load shortcut icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 3997
    :goto_0
    new-instance p1, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {p1}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 4001
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    if-nez v3, :cond_3

    .line 4003
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object v3, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v3}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4004
    iput-boolean v5, p1, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    .line 4006
    :cond_3
    invoke-virtual {p1, v3}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4008
    iput-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4009
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v1, v3}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 4010
    iput-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4011
    iput-boolean v4, p1, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    .line 4012
    iput-object v2, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object p1
.end method

.method public initialize(Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 1349
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrentCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Z
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isLoadingWorkspace()Z
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1611
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->isLoadingWorkspace()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1614
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInject()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$savxDM6GV4uySVsy2a5Qna8kca8;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$savxDM6GV4uySVsy2a5Qna8kca8;-><init>(Lcom/voxel/launcher3/LauncherModel;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->addPermissionListener(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 4

    .line 1370
    new-instance v0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 3

    .line 1356
    new-instance v0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 3

    .line 1363
    new-instance v0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 1

    .line 1388
    new-instance p3, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, p3}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 1397
    new-instance p3, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v0, 0x4

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, p3}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 1429
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 1432
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1437
    iget p2, p0, Lcom/voxel/launcher3/LauncherModel;->mPreviousConfigMcc:I

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq p2, v0, :cond_1

    const-string p2, "Launcher.Model"

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload apps on config change. curr_mcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " prevmcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 1443
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    iput p1, p0, Lcom/voxel/launcher3/LauncherModel;->mPreviousConfigMcc:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 1417
    new-instance p2, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;

    invoke-direct {p2, p0, p1, p3}, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    invoke-direct {p0, p2}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .line 4020
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4029
    :cond_0
    iget-boolean v0, p2, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_1

    .line 4030
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public recheckRestoredItems(Landroid/content/Context;)V
    .locals 1

    .line 3191
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg;-><init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;)V

    .line 3235
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetLoadedState(ZZ)V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_0
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel;->stopLoaderLocked()Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1461
    iput-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel;->mAllAppsLoaded:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1462
    iput-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    .line 1463
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 405
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$i5CHKiVyvHdA_FjUmMUx8qZ7vq8;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$i5CHKiVyvHdA_FjUmMUx8qZ7vq8;-><init>(Lcom/voxel/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    .line 411
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startLoader(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 1512
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZII)V

    return-void
.end method

.method public startLoader(ZII)V
    .locals 3

    .line 1516
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1524
    :try_start_1
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1525
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    :try_start_2
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    .line 1531
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel;->stopLoaderLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1532
    :goto_1
    new-instance v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel;->mApp:Lcom/voxel/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p3}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;-><init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;ZI)V

    iput-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    const/16 p1, -0x3e9

    if-eq p2, p1, :cond_2

    .line 1533
    iget-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz p1, :cond_2

    .line 1535
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    goto :goto_2

    .line 1537
    :cond_2
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1538
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object p2, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 1525
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 1541
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public startLoaderFromBackground()V
    .locals 3

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, ">>> startLoaderFromBackground() invoked."

    .line 1473
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1477
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 1480
    invoke-interface {v0}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v2, ">>> startLoaderFromBackground() - running task now."

    .line 1486
    invoke-static {v0, v2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    .line 1489
    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZI)V

    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .line 1560
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mLoaderTask:Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 1564
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .line 601
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 607
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 608
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeferredHandler;->cancelAllRunnablesOfType(I)V

    .line 613
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    return-void

    :catchall_0
    move-exception v1

    .line 609
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .locals 4

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 625
    :try_start_0
    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 626
    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;

    invoke-direct {v2, v0, v1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 636
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 627
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 3553
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;

    invoke-direct {v0, p0, p2, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->enqueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePackageBadge(Ljava/lang/String;)V
    .locals 1

    .line 416
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$bkQzEdKjn3QMZRHp6l_fTpq6c6g;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$bkQzEdKjn3QMZRHp6l_fTpq6c6g;-><init>(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel;->mHandler:Lcom/voxel/launcher3/DeferredHandler;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/voxel/launcher3/ShortcutInfo;[B)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    .line 4040
    :try_start_0
    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 4041
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ShortcutInfo;->getIcon(Lcom/voxel/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4042
    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, p3

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    const-string p3, "Launcher.Model"

    .line 4050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "going to save icon bitmap for info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_1
    return-void
.end method

.method updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Launcher.Model"

    const-string v1, "11683562 - updateWorkspaceScreenOrder()"

    const/4 v2, 0x1

    .line 1269
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Launcher.Model"

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11683562 -   screens: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1274
    sget-object p2, Lcom/voxel/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 1277
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1278
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 1281
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1285
    :cond_1
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;

    invoke-direct {v1, p2, v0, p1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;-><init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1309
    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
