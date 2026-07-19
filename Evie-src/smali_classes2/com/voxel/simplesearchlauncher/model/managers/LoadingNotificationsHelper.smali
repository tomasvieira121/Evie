.class public Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;
.super Ljava/lang/Object;
.source "LoadingNotificationsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private static startupCompletedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0xa

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$notifyStartupCompleted$0()V
    .locals 2

    .line 52
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 53
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;->onStartupCompleted()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyStartupCompleted()V
    .locals 2

    .line 48
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$LoadingNotificationsHelper$YyvycySfvcswAGimxoaf3QO9GdE;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static registerStartupCompletedListener(Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 35
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->startupCompletedListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->sLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->isStartupCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p0}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;->onStartupCompleted()V

    :cond_0
    return-void
.end method

.method public static setLocalAppsManager(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->sLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method
