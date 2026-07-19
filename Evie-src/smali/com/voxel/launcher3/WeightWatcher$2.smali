.class Lcom/voxel/launcher3/WeightWatcher$2;
.super Ljava/lang/Object;
.source "WeightWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WeightWatcher;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$2;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$2;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    check-cast p2, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;

    invoke-virtual {p2}, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/voxel/launcher3/MemoryTracker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/voxel/launcher3/WeightWatcher;->access$002(Lcom/voxel/launcher3/WeightWatcher;Lcom/voxel/launcher3/MemoryTracker;)Lcom/voxel/launcher3/MemoryTracker;

    .line 92
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$2;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/WeightWatcher;->initViews()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$2;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/WeightWatcher;->access$002(Lcom/voxel/launcher3/WeightWatcher;Lcom/voxel/launcher3/MemoryTracker;)Lcom/voxel/launcher3/MemoryTracker;

    return-void
.end method
