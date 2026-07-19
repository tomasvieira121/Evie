.class public Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;
.super Ljava/lang/Object;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemInfo"
.end annotation


# instance fields
.field public currentPss:J

.field public currentUss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:I

.field public pss:[J

.field public startTime:J

.field public uss:[J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 45
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    .line 46
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->uss:[J

    const-wide/16 v0, 0x1

    .line 48
    iput-wide v0, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    .line 51
    iput p1, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pid:I

    .line 52
    iput-object p2, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->name:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public getUptime()J
    .locals 4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
