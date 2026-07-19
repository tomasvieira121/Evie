.class Lcom/voxel/launcher3/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/LauncherModel;->flushWorkerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/LauncherModel;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$1;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 798
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$1;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->access$002(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 799
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
