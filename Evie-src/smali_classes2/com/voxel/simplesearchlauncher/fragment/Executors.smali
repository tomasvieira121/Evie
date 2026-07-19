.class public Lcom/voxel/simplesearchlauncher/fragment/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static sMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;


# direct methods
.method public static declared-synchronized getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/fragment/Executors;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/Executors;->sMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/voxel/launcher3/MainThreadExecutor;

    invoke-direct {v1}, Lcom/voxel/launcher3/MainThreadExecutor;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/fragment/Executors;->sMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;

    .line 13
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/Executors;->sMainThreadExecutor:Lcom/voxel/launcher3/MainThreadExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
