.class public Lcom/voxel/launcher3/fresco/RunnableComparator;
.super Ljava/lang/Object;
.source "RunnableComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/fresco/RunnableComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 5

    .line 11
    check-cast p1, Lcom/voxel/launcher3/fresco/PriorityFutureTask;

    .line 12
    check-cast p2, Lcom/voxel/launcher3/fresco/PriorityFutureTask;

    .line 14
    iget-object v0, p2, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 19
    :cond_0
    iget-wide v0, p1, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    iget-wide v2, p2, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_1
    iget-wide v0, p1, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    iget-wide p1, p2, Lcom/voxel/launcher3/fresco/PriorityFutureTask;->ts:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p1, p1, Lcom/voxel/launcher3/fresco/RunnableComparator;

    return p1
.end method
