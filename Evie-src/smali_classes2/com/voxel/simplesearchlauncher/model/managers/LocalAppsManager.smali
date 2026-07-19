.class public Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;
.super Ljava/lang/Object;
.source "LocalAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;,
        Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAppsManager"


# instance fields
.field private context:Landroid/content/Context;

.field private dataSetObservable:Landroid/database/DataSetObservable;

.field private final dbAppInfosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultAppsQuickCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private googleQuickSearchApp:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

.field private volatile isFinishStartupInvoked:Z

.field private final itemIdToAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final launchAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsDataChangeObserver:Landroid/database/ContentObserver;

.field private mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mSyncDone:Z

.field private mSystemReadyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemReadyRegistered:Z

.field private mainHandler:Landroid/os/Handler;

.field private final packageToAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation
.end field

.field private refreshSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 82
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 113
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$1;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsDataChangeObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSystemReadyRegistered:Z

    .line 127
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$2;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSystemReadyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsMap:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->itemIdToAppsMap:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dbAppInfosMap:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    .line 143
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dataSetObservable:Landroid/database/DataSetObservable;

    .line 145
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mainHandler:Landroid/os/Handler;

    .line 148
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 150
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->setLocalAppsManager(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 152
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsDataChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->registerObserver(Landroid/database/ContentObserver;)V

    .line 155
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$n8JdiD5JWHmemo1ZKr9SRvEeOPs;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$n8JdiD5JWHmemo1ZKr9SRvEeOPs;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 157
    invoke-static {v0}, Lio/reactivex/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/Completable;

    move-result-object v0

    .line 172
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 175
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$nMteiy4QPkbbI0QGFD3sIq4Nu-M;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$nMteiy4QPkbbI0QGFD3sIq4Nu-M;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private addAppToMaps(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 3

    .line 614
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 618
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    monitor-enter v0

    .line 619
    :try_start_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 621
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->itemIdToAppsMap:Ljava/util/Map;

    monitor-enter v1

    .line 622
    :try_start_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->itemIdToAppsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 620
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 617
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAppsMapValues()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    monitor-enter v0

    .line 641
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 642
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultAppInfoForAction(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 557
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 563
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 564
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getLaunchBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLaunchDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 659
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 660
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLaunchEmailIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLaunchTextIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 667
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 668
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic lambda$finishStartup$1(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalApps()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 2

    .line 158
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STARTUP-PERFORMANCE"

    const-string v1, "> Loading local apps started."

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalApps()V

    .line 164
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 166
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->notifyStartupCompleted()V

    .line 168
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "STARTUP-PERFORMANCE"

    const-string v1, "> Local apps loading DONE."

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static synthetic lambda$notifyDataChanged$2(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method private loadGoogleQuickSearchApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->googleQuickSearchApp:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-direct {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->googleQuickSearchApp:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 348
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->googleQuickSearchApp:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-virtual {p1, p3}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setLabel(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private notifyDataChanged()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$UdGx-tokVjMBlxau59DN3yOUgLI;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$UdGx-tokVjMBlxau59DN3yOUgLI;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized refreshLocalApps()V
    .locals 13

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 201
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    if-ne v0, v1, :cond_1

    .line 205
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 208
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSyncDone:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.voxel.launcher3.SYSTEM_READY"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 222
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dbAppInfosMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAllApps()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 224
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, "Loading apps from database..."

    .line 225
    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 228
    iget-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.google.android.googlequicksearchbox"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    iget-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iget-object v10, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->loadGoogleQuickSearchApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_4
    iget-object v8, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dbAppInfosMap:Ljava/util/Map;

    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-boolean v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    if-eqz v8, :cond_5

    goto :goto_2

    .line 234
    :cond_5
    iget-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v8, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setLabel(Ljava/lang/String;)V

    .line 239
    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setLabelOverride(Ljava/lang/String;)V

    .line 240
    iget-wide v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    invoke-virtual {v8, v9, v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setFirstInstallTime(J)V

    .line 241
    iget-boolean v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    invoke-virtual {v8, v9}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setHasOpened(Z)V

    .line 242
    iget-object v9, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setCustomIcon(Landroid/graphics/Bitmap;)V

    .line 243
    iget v7, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-virtual {v8, v7}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setVersionCode(I)V

    .line 244
    invoke-direct {p0, v8}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->addAppToMaps(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    goto :goto_2

    :cond_6
    const-string v5, "Loading apps DONE."

    .line 246
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v1, v5

    if-eqz v1, :cond_13

    const-string v1, "Syncing apps..."

    .line 256
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f050015

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 261
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/evie/search/local/LocalAppsManager;->getSystemLauncherPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    goto :goto_4

    .line 263
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 266
    :goto_4
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    .line 267
    invoke-static {v5}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v5

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v5

    .line 269
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    if-eqz v7, :cond_a

    .line 271
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_5

    .line 275
    :cond_b
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_5

    .line 279
    :cond_c
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 280
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 281
    invoke-direct {p0, v9, v8}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v11, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 286
    iget-object v12, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dbAppInfosMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    if-nez v11, :cond_10

    if-eqz v10, :cond_d

    .line 287
    iget-boolean v10, v10, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    if-nez v10, :cond_10

    .line 289
    :cond_d
    new-instance v10, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-direct {v10, v9, v8}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 293
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setLabel(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, v10}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->addAppToMaps(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    .line 296
    :cond_e
    invoke-virtual {v7}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setFirstInstallTime(J)V

    .line 297
    invoke-virtual {v10, v4}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setHasOpened(Z)V

    .line 298
    invoke-direct {p0, v10}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->setAppVersionCode(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    const-string v7, "com.google.android.googlequicksearchbox"

    .line 300
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 301
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v8, v7}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->loadGoogleQuickSearchApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_f
    new-instance v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-direct {v7}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;-><init>()V

    .line 305
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    .line 306
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    .line 307
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    .line 308
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppVersionCode()I

    move-result v8

    iput v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    .line 309
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getFirstInstallTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    .line 310
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getHasOpened()Z

    move-result v8

    iput-boolean v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    .line 311
    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabelOverride()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    .line 313
    new-instance v8, Landroid/util/Pair;

    sget-object v9, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 316
    :cond_10
    invoke-direct {p0, v11}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->setAppVersionCode(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    .line 318
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_5

    .line 321
    :cond_11
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 322
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v1, v6}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->applyBatch(Ljava/util/List;)V

    :cond_12
    const-string v1, "Syncing done..."

    .line 325
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSyncDone:Z

    const/4 v1, 0x1

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    .line 329
    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->removeUninstalledAppsFromMap(Ljava/util/Set;Z)V

    .line 331
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    if-ne v0, v1, :cond_14

    const/4 v4, 0x1

    .line 333
    :cond_14
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->notifyDataChanged()V

    if-eqz v4, :cond_15

    .line 336
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalAppsInBackground()V

    :cond_15
    if-nez v2, :cond_16

    .line 338
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSystemReadyRegistered:Z

    if-nez v0, :cond_16

    .line 339
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSystemReadyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.voxel.launcher3.SYSTEM_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSystemReadyRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :cond_16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private removeAppFromMaps(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 3

    .line 627
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 631
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    monitor-enter v0

    .line 632
    :try_start_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 634
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->itemIdToAppsMap:Ljava/util/Map;

    monitor-enter v1

    .line 635
    :try_start_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->itemIdToAppsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 633
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 630
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private declared-synchronized removeUninstalledAppsFromMap(Ljava/util/Set;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 573
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAllLocalLaunchApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 575
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 583
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAllApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 584
    iget-object v3, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 586
    new-instance v3, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    iget-object v4, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 591
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 593
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->removeAppFromMaps(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    if-eqz p2, :cond_4

    .line 596
    new-instance v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;-><init>()V

    .line 597
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    .line 598
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    .line 599
    new-instance v1, Landroid/util/Pair;

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 602
    :cond_5
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->applyBatch(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private setAppVersionCode(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 650
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 651
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 653
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not set app version code. "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearAllCustomIcons()V
    .locals 3

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAppsWithCustomIcon()Ljava/util/List;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 538
    iget-object v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 545
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setCustomIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mAppsInfoData:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->clearAllCustomIcons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized finishStartup()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    monitor-enter p0

    .line 507
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->isFinishStartupInvoked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 508
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 511
    :try_start_1
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->isFinishStartupInvoked:Z

    .line 512
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 513
    invoke-virtual {v1, v2}, Lio/reactivex/subjects/BehaviorSubject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 514
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$kX1iDkQiJC57u8V1NpsD_67tFME;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LocalAppsManager$kX1iDkQiJC57u8V1NpsD_67tFME;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 515
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllLocalLaunchApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppsMapValues()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 1

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->launchAppsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-nez p2, :cond_1

    .line 359
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppByPackageName(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 1

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->packageToAppsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    return-object p1
.end method

.method public getDefaultAppForAction(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 5

    .line 484
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppInfoForAction(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 490
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 491
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 492
    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAppMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 496
    new-instance v4, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-direct {v4, v0, v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setLabel(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsMap:Ljava/util/Map;

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    return-object p1
.end method

.method public getDefaultAppForAction(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 1

    const-string v0, "default.call"

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultPhoneApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "default.text"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultTextApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "default.email"

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultEmailApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "default.website"

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultBrowserApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultBrowserApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 4

    const-string v0, "default_browser"

    .line 453
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->getApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "http://www.google.com"

    .line 458
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getLaunchBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppForAction(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    new-instance v3, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    invoke-direct {v3, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultEmailApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 4

    const-string v0, "default_email"

    .line 438
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->getApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "test@test.com"

    .line 443
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getLaunchEmailIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppForAction(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    new-instance v3, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    invoke-direct {v3, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultPhoneApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 4

    const-string v0, "default_phone"

    .line 408
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->getApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "123456789"

    .line 413
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getLaunchDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppForAction(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    new-instance v3, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    invoke-direct {v3, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultTextApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 4

    const-string v0, "default_text"

    .line 423
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->getApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "123456789"

    .line 428
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getLaunchTextIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppForAction(Landroid/content/Intent;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->defaultAppsQuickCacheMap:Ljava/util/Map;

    new-instance v3, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;

    invoke-direct {v3, p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public isStartupCompleted()Z
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshLocalAppsInBackground()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized restart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 520
    :try_start_0
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->isFinishStartupInvoked:Z

    .line 521
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mSyncDone:Z

    .line 522
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->startupState:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 523
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 524
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->finishStartup()V

    .line 525
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->refreshLocalAppsInBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
