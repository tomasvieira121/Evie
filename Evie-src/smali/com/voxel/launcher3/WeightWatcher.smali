.class public Lcom/voxel/launcher3/WeightWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mMemoryService:Lcom/voxel/launcher3/MemoryTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p2, Lcom/voxel/launcher3/WeightWatcher$1;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/WeightWatcher$1;-><init>(Lcom/voxel/launcher3/WeightWatcher;)V

    iput-object p2, p0, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance p2, Lcom/voxel/launcher3/WeightWatcher$2;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/WeightWatcher$2;-><init>(Lcom/voxel/launcher3/WeightWatcher;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/voxel/launcher3/MemoryTracker;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/WeightWatcher;->setOrientation(I)V

    const/high16 p1, -0x40000000    # -2.0f

    .line 104
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WeightWatcher;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/WeightWatcher;)Lcom/voxel/launcher3/MemoryTracker;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/voxel/launcher3/WeightWatcher;->mMemoryService:Lcom/voxel/launcher3/MemoryTracker;

    return-object p0
.end method

.method static synthetic access$002(Lcom/voxel/launcher3/WeightWatcher;Lcom/voxel/launcher3/MemoryTracker;)Lcom/voxel/launcher3/MemoryTracker;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher;->mMemoryService:Lcom/voxel/launcher3/MemoryTracker;

    return-object p1
.end method

.method static indexOf([II)I
    .locals 2

    const/4 v0, 0x0

    .line 50
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 51
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public initViews()V
    .locals 6

    .line 108
    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher;->mMemoryService:Lcom/voxel/launcher3/MemoryTracker;

    invoke-virtual {v0}, Lcom/voxel/launcher3/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v0

    .line 110
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 111
    new-instance v4, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WeightWatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;-><init>(Lcom/voxel/launcher3/WeightWatcher;Landroid/content/Context;)V

    .line 112
    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->setPid(I)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/WeightWatcher;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 130
    iget-object v0, p0, Lcom/voxel/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
