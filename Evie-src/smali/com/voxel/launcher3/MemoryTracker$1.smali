.class Lcom/voxel/launcher3/MemoryTracker$1;
.super Landroid/os/Handler;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/MemoryTracker;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/MemoryTracker;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    invoke-virtual {p1}, Lcom/voxel/launcher3/MemoryTracker;->update()V

    .line 78
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    iget-object p1, p1, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    iget-object p1, p1, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    iget-object p1, p1, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    iget-object p1, p1, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$1;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    iget-object p1, p1, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
