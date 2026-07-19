.class public Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AllAppsFragment.java"

# interfaces
.implements Lcom/evie/common/dragndrop/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$AppViewHolder;,
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;,
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;,
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;,
        Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AllAppsFragment"


# instance fields
.field private fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

.field localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mAppsManagerObserver:Landroid/database/DataSetObserver;

.field private final mCalendarDayChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mElevationController:Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;

.field private mFastScrollRecyclerView:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

.field private mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

.field private mGridButton:Landroid/widget/ImageView;

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field private final mIconPackObserver:Landroid/database/DataSetObserver;

.field private mIsStartupComplete:Z

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private final mLayoutSettingsObserver:Landroid/database/DataSetObserver;

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mListAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

.field private mListButton:Landroid/widget/ImageView;

.field private mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQueuedRefresh:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshAppListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;",
            ">;"
        }
    .end annotation
.end field

.field private mResetPositionRunnable:Ljava/lang/Runnable;

.field private mScrollBarRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

.field private mShouldShowSetDefaultLauncherRow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIsStartupComplete:Z

    .line 89
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mShouldShowSetDefaultLauncherRow:Z

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    .line 102
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$K3wKEGZd7iWkUw0z6V764zcavnI;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$K3wKEGZd7iWkUw0z6V764zcavnI;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mResetPositionRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 152
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsObserver:Landroid/database/DataSetObserver;

    .line 164
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mAppsManagerObserver:Landroid/database/DataSetObserver;

    .line 176
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$5;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$5;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    .line 187
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$6;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$6;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mCalendarDayChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/evie/search/local/LocalSearchManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mQueuedRefresh:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mQueuedRefresh:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->refreshAppList()V

    return-void
.end method

.method static synthetic access$1500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Ljava/util/List;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->prefetchIcons(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;II)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->isValidIndex(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->refreshLayout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->prefetchIcon(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->requestRefresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->notifyAdapters()V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIsStartupComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mShouldShowSetDefaultLauncherRow:Z

    return p0
.end method

.method private isValidIndex(II)Z
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->resetRecyclerViewPosition()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/view/View;)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsDisplayType(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setListMode()Z

    return-void
.end method

.method public static synthetic lambda$onCreateView$2(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/view/View;)V
    .locals 1

    .line 295
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    const-string v0, "grid"

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsDisplayType(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setGridMode()Z

    return-void
.end method

.method private notifyAdapters()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    .line 449
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private prefetchIcon(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 2

    .line 701
    invoke-static {p1}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Landroid/net/Uri;

    move-result-object p1

    .line 702
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 703
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    const/4 v1, 0x0

    .line 704
    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    return-void
.end method

.method private prefetchIcons(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;I)V"
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->TAG:Ljava/lang/String;

    const-string v1, "prefetchIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Ljava/util/List;I)V

    const/4 p1, 0x0

    .line 691
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshAppList()V
    .locals 3

    .line 463
    sget-object v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->TAG:Ljava/lang/String;

    const-string v1, "refreshAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mQueuedRefresh:Z

    .line 466
    new-instance v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    .line 641
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .line 315
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 316
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method private requestRefresh()V
    .locals 1

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->refreshAppList()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mQueuedRefresh:Z

    .line 459
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setActiveRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 368
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 369
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 370
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 371
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mElevationController:Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 375
    :goto_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 376
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 377
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 378
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mElevationController:Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setGridMode()Z
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 409
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 410
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListButton:Landroid/widget/ImageView;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridButton:Landroid/widget/ImageView;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 416
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 417
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private setLettersIndex()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mFastScrollRecyclerView:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setActiveRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method private setListMode()Z
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 390
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 391
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListButton:Landroid/widget/ImageView;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridButton:Landroid/widget/ImageView;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 397
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 398
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private setScrollBarIndex()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mScrollBarRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setActiveRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method private setShouldShowSetDefaultLauncherRow(Z)Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mShouldShowSetDefaultLauncherRow:Z

    if-eq v0, p1, :cond_0

    .line 748
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mShouldShowSetDefaultLauncherRow:Z

    .line 750
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIsStartupComplete:Z

    if-eqz p1, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->requestRefresh()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public isNearIndexBar(II)Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mFastScrollRecyclerView:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    if-ne v0, v1, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 433
    invoke-virtual {v1, p1, p2}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->isNearIndexBar(FF)Z

    move-result p1

    return p1

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mScrollBarRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    if-ne v0, v1, :cond_1

    .line 435
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->getScrollBar()Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result p1

    return p1

    .line 438
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 217
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 218
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 223
    :try_start_0
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 237
    sget-object v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    new-instance p1, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherAppState;->initDynamicGrid(Landroid/content/Context;)Lcom/voxel/launcher3/DeviceProfile;

    .line 246
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v6

    .line 247
    iget v0, v6, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 249
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$7;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$7;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 256
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 258
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/voxel/launcher3/CellParams;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    .line 259
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    .line 261
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mAppsManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.evie.day_changed"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mCalendarDayChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 266
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/evie/search/local/LocalSearchManager;->getInstance(Landroid/content/Context;Z)Lcom/evie/search/local/LocalSearchManager;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    .line 268
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 273
    sget-object p3, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const v0, 0x7f0d0054

    .line 275
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0104

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mFastScrollRecyclerView:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    .line 277
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mFastScrollRecyclerView:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f0a022f

    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mScrollBarRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    const p2, 0x7f0a0182

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListButton:Landroid/widget/ImageView;

    const p2, 0x7f0a0138

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridButton:Landroid/widget/ImageView;

    const p2, 0x7f0a02c6

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 284
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance p2, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController$ControllerV16;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mElevationController:Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;

    .line 288
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->updateStyle()V

    .line 290
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mListButton:Landroid/widget/ImageView;

    new-instance p3, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$vzvTtXrAR9zUL3XNH_xPWx6qzHQ;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$vzvTtXrAR9zUL3XNH_xPWx6qzHQ;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridButton:Landroid/widget/ImageView;

    new-instance p3, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$nmYQ6HyxHgaQ04L9yKTEjMq1MCs;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$nmYQ6HyxHgaQ04L9yKTEjMq1MCs;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0209

    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 301
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIsStartupComplete:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 799
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mAppsManagerObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 802
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 803
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mCalendarDayChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 804
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 806
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 789
    invoke-interface {p2, p1}, Lcom/evie/common/dragndrop/DragObjectAbstraction;->setDeferDragViewCleanupPostAnimation(Z)V

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    if-eqz p1, :cond_2

    .line 793
    invoke-interface {p1, p0, p4}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;->onAllAppsDropCompleted(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z

    :cond_2
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onFocusChanged(Landroid/os/Handler;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 308
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mResetPositionRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mResetPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 737
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 739
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRefreshAppListTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    .line 742
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mQueuedRefresh:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 718
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 720
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->updateStyle()V

    .line 723
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;->canShowAllAppsSetDefaultPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->isLauncherDefault(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setShouldShowSetDefaultLauncherRow(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setShouldShowSetDefaultLauncherRow(Z)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->requestRefresh()V

    :cond_1
    return-void
.end method

.method public resetRecyclerViewPosition()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 428
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mElevationController:Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/HeaderElevationController;->reset()V

    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 2

    .line 321
    iget v0, p1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 323
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->recalculateRowIndexes()V

    .line 324
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mGridAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 326
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->resetRecyclerViewPosition()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 708
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 710
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 712
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsRemoveDropTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateStyle()V
    .locals 3

    .line 331
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsIndexType()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setLettersIndex()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setScrollBarIndex()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 338
    :goto_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsDisplayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setListMode()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const-string v2, "grid"

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setGridMode()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->resetRecyclerViewPosition()V

    :cond_3
    return-void
.end method
