.class public Lcom/voxel/launcher3/fresco/PriorityFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final priority:Lcom/facebook/imagepipeline/common/Priority;

.field public final ts:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/common/Priority;JLjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "J",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p4, p5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 25
    iput-wide p2, p0, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    .line 26
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
