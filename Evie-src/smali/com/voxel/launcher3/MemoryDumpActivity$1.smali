.class final Lcom/voxel/launcher3/MemoryDumpActivity$1;
.super Ljava/lang/Object;
.source "MemoryDumpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$andThen:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/voxel/launcher3/MemoryDumpActivity$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxel/launcher3/MemoryDumpActivity$1;->val$andThen:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MemoryDumpActivity"

    const-string v0, "service connected, dumping..."

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryDumpActivity$1;->val$context:Landroid/content/Context;

    check-cast p2, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;

    .line 159
    invoke-virtual {p2}, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/voxel/launcher3/MemoryTracker;

    move-result-object p2

    .line 158
    invoke-static {p1, p2}, Lcom/voxel/launcher3/MemoryDumpActivity;->dumpHprofAndShare(Landroid/content/Context;Lcom/voxel/launcher3/MemoryTracker;)V

    .line 160
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryDumpActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryDumpActivity$1;->val$andThen:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
