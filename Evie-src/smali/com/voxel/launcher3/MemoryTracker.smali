.class public Lcom/voxel/launcher3/MemoryTracker;
.super Landroid/app/Service;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;,
        Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MemoryTracker"


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field public final mData:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field public final mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPidsArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mPidsArray:[I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/voxel/launcher3/MemoryTracker$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/MemoryTracker$1;-><init>(Lcom/voxel/launcher3/MemoryTracker;)V

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;-><init>(Lcom/voxel/launcher3/MemoryTracker;)V

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static startTrackingMe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/voxel/launcher3/MemoryTracker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.voxel.launcher3.action.START_TRACKING"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getMemInfo(I)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    return-object p1
.end method

.method public getTrackedProcesses()[I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mPidsArray:[I

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 10

    const-string v0, "activity"

    .line 162
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/MemoryTracker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    .line 165
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 167
    iget-object v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/launcher3/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discovered running service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 169
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/voxel/launcher3/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 176
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/voxel/launcher3/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    sget-object v3, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discovered other running process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/voxel/launcher3/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 191
    sget-object p2, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received start id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p2, "com.voxel.launcher3.action.START_TRACKING"

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "pid"

    const/4 p3, -0x1

    .line 195
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "name"

    .line 196
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "start"

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 198
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/voxel/launcher3/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return p2
.end method

.method public startTrackingProcess(ILjava/lang/String;J)V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    new-instance v1, Ljava/lang/Long;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 107
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return-void

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/voxel/launcher3/MemoryTracker;->updatePidsArrayL()V

    .line 112
    iget-object v1, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    new-instance v4, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method update()V
    .locals 11

    .line 129
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/voxel/launcher3/MemoryTracker;->mPidsArray:[I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 132
    aget-object v3, v1, v2

    .line 133
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 134
    sget-object v1, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: unknown process info received: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 138
    iget-object v6, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    .line 139
    iget v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v8

    rem-int/2addr v7, v8

    iput v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    .line 140
    iget-object v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    iget v8, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    aput-wide v9, v7, v8

    .line 141
    iget-object v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->uss:[J

    iget v8, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    int-to-long v9, v3

    iput-wide v9, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    aput-wide v9, v7, v8

    .line 142
    iget-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    iget-wide v9, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v3, v7, v9

    if-lez v3, :cond_1

    iget-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    iput-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    .line 143
    :cond_1
    iget-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    iget-wide v9, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v3, v7, v9

    if-lez v3, :cond_2

    iget-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentUss:J

    iput-wide v7, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    .line 145
    :cond_2
    iget-wide v6, v6, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->currentPss:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 146
    sget-object v3, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " has pss=0, it probably died"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 150
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    .line 151
    iget-object v2, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 152
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 153
    iget-object v2, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/voxel/launcher3/MemoryTracker;->updatePidsArrayL()V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 157
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method updatePidsArrayL()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/voxel/launcher3/MemoryTracker;->mPidsArray:[I

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Now tracking processes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/voxel/launcher3/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 122
    iget-object v4, p0, Lcom/voxel/launcher3/MemoryTracker;->mPidsArray:[I

    aput v3, v4, v2

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/MemoryTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
