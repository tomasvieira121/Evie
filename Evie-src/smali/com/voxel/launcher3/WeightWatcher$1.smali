.class Lcom/voxel/launcher3/WeightWatcher$1;
.super Landroid/os/Handler;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WeightWatcher;
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

    .line 56
    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 67
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-static {p1}, Lcom/voxel/launcher3/WeightWatcher;->access$000(Lcom/voxel/launcher3/WeightWatcher;)Lcom/voxel/launcher3/MemoryTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/MemoryTracker;->getTrackedProcesses()[I

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/WeightWatcher;->getChildCount()I

    move-result v1

    .line 70
    array-length v2, p1

    if-eq v2, v1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/WeightWatcher;->initViews()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 72
    iget-object v3, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/WeightWatcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    .line 73
    invoke-virtual {v3}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->getPid()I

    move-result v4

    invoke-static {p1, v4}, Lcom/voxel/launcher3/WeightWatcher;->indexOf([II)I

    move-result v4

    if-gez v4, :cond_1

    .line 74
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/WeightWatcher;->initViews()V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->update()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    iget-object p1, p1, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 64
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    iget-object p1, p1, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 61
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$1;->this$0:Lcom/voxel/launcher3/WeightWatcher;

    iget-object p1, p1, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
