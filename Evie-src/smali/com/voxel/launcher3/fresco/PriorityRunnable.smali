.class public abstract Lcom/voxel/launcher3/fresco/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final priority:Lcom/facebook/imagepipeline/common/Priority;

.field public final ts:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/common/Priority;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/PriorityRunnable;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/fresco/PriorityRunnable;->ts:J

    return-void
.end method
