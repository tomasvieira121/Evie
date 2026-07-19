.class public Lcom/voxel/launcher3/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmPending:Z

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmTriggerTime:J

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmPending:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mWaitingForCallback:Z

    .line 61
    iget-wide v1, p0, Lcom/voxel/launcher3/Alarm;->mAlarmTriggerTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    iget-wide v5, p0, Lcom/voxel/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    .line 66
    iget-object v0, p0, Lcom/voxel/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mWaitingForCallback:Z

    goto :goto_0

    .line 69
    :cond_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmPending:Z

    .line 70
    iget-object v0, p0, Lcom/voxel/launcher3/Alarm;->mAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0, p0}, Lcom/voxel/launcher3/OnAlarmListener;->onAlarm(Lcom/voxel/launcher3/Alarm;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(J)V
    .locals 5

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lcom/voxel/launcher3/Alarm;->mAlarmPending:Z

    add-long/2addr p1, v0

    .line 46
    iput-wide p1, p0, Lcom/voxel/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 47
    iget-boolean p1, p0, Lcom/voxel/launcher3/Alarm;->mWaitingForCallback:Z

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/voxel/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/voxel/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iput-boolean v2, p0, Lcom/voxel/launcher3/Alarm;->mWaitingForCallback:Z

    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/voxel/launcher3/Alarm;->mAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    return-void
.end method
