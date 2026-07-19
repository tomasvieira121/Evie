.class Lcom/voxel/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;,
        Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/voxel/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;-><init>(Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;Z)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    .line 74
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    .line 75
    new-instance p1, Lcom/voxel/recyclerview/widget/OpReorderer;

    invoke-direct {p1, p0}, Lcom/voxel/recyclerview/widget/OpReorderer;-><init>(Lcom/voxel/recyclerview/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mOpReorderer:Lcom/voxel/recyclerview/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 8

    .line 129
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 131
    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    .line 133
    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v1, :cond_5

    .line 135
    iget-object v7, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v7, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-nez v7, :cond_2

    .line 136
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v6, :cond_1

    .line 157
    invoke-virtual {p0, v6, v0, v4}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 158
    invoke-direct {p0, v5}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x0

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 146
    invoke-virtual {p0, v6, v0, v4}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 147
    invoke-direct {p0, v5}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v5, :cond_4

    sub-int/2addr v2, v4

    sub-int/2addr v1, v4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/2addr v2, v6

    move v5, v7

    goto :goto_0

    .line 171
    :cond_5
    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v1, :cond_6

    .line 172
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 173
    invoke-virtual {p0, v6, v0, v4}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    .line 176
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 178
    :cond_7
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_6
    return-void
.end method

.method private applyUpdate(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 9

    .line 183
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 185
    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    .line 187
    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v4, v0

    const/4 v0, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x2

    if-ge v2, v1, :cond_4

    .line 188
    iget-object v7, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v7, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 189
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    .line 199
    invoke-virtual {p0, v6, v4, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v4, v2

    const/4 v0, 0x0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 191
    invoke-virtual {p0, v6, v4, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v4, v2

    const/4 v0, 0x0

    :cond_3
    const/4 v5, 0x1

    :goto_2
    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_4
    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v0, v1, :cond_5

    .line 209
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 210
    invoke-virtual {p0, v6, v4, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    .line 213
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3

    .line 215
    :cond_6
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 7

    .line 402
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 404
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 405
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 406
    iget v3, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    .line 409
    :cond_0
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v4, :cond_2

    .line 411
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    .line 412
    iget v3, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 413
    invoke-virtual {p0, v3, v5}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 9

    .line 223
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 237
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 242
    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 244
    iget v2, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    :goto_0
    move v5, v0

    move v6, v1

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 254
    :goto_1
    iget v7, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v7, :cond_4

    .line 255
    iget v7, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v8, v2, v0

    add-int/2addr v7, v8

    .line 256
    iget v8, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v7, v8}, Lcom/voxel/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 261
    iget v8, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v8, :pswitch_data_1

    const/4 v8, 0x0

    goto :goto_2

    :pswitch_2
    add-int/lit8 v8, v5, 0x1

    if-ne v7, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :pswitch_3
    if-ne v7, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 273
    :cond_2
    iget v8, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v8, v5, v1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 277
    invoke-virtual {p0, v5, v6}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 278
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 279
    iget v5, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    add-int/2addr v6, v1

    :cond_3
    move v5, v7

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    if-lez v1, :cond_5

    .line 288
    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v5, v1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1, v6}, Lcom/voxel/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_5
    return-void

    .line 224
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 443
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ltz v0, :cond_d

    .line 323
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 324
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_8

    .line 326
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_0

    .line 327
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 328
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 330
    :cond_0
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 331
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 335
    iget v4, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_3

    if-nez p2, :cond_1

    .line 337
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    .line 339
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    .line 345
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v1, :cond_5

    .line 347
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 352
    :cond_6
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_c

    if-nez p2, :cond_7

    .line 355
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 356
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v1, :cond_c

    .line 358
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 359
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    .line 363
    :cond_8
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_a

    .line 364
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v2, :cond_9

    .line 365
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_4

    .line 366
    :cond_9
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v1, :cond_c

    .line 367
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-nez p2, :cond_b

    .line 371
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_b
    if-ne p2, v1, :cond_c

    .line 373
    iget v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 386
    :cond_d
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 387
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 388
    iget v1, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v2, :cond_f

    .line 389
    iget v1, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v3, :cond_e

    iget v1, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v1, :cond_10

    .line 390
    :cond_e
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 393
    :cond_f
    iget v1, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_10

    .line 394
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method


# virtual methods
.method public applyPendingUpdatesToPosition(I)I
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 563
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 564
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 571
    :pswitch_0
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    .line 572
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 576
    :cond_0
    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_1

    .line 566
    :pswitch_1
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    .line 567
    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_1

    .line 580
    :cond_1
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_2

    .line 581
    iget p1, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 583
    :cond_2
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 586
    :cond_3
    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v2, p1, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 5

    .line 531
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 532
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 534
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 535
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 549
    :pswitch_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 550
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 545
    :pswitch_1
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 546
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_1

    .line 541
    :pswitch_2
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 542
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 537
    :pswitch_3
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 538
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 553
    :goto_1
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 554
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 307
    iget v0, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mCallback:Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;

    iget p1, p1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result p1

    return p1
.end method

.method findPositionOffset(II)I
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 461
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 462
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 463
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_0

    .line 464
    iget p1, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 466
    :cond_0
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 469
    :cond_1
    iget v1, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 473
    :cond_2
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_5

    .line 474
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 475
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    .line 478
    :cond_3
    iget v1, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 479
    :cond_4
    iget v2, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v2, :cond_5

    .line 480
    iget v1, v1, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method hasPendingUpdates()Z
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(III)V

    goto :goto_0

    .line 688
    :cond_0
    iput p1, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 689
    iput p2, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 690
    iput p3, v0, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :goto_0
    return-object v0
.end method

.method onItemRangeChanged(II)Z
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method onItemRangeInserted(II)Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method onItemRangeRemoved(II)Z
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->obtainUpdateOp(III)Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method preProcess()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mOpReorderer:Lcom/voxel/recyclerview/widget/OpReorderer;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 93
    iget v3, v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 104
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->applyMove(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 101
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->applyUpdate(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 98
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->applyRemove(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 95
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->applyAdd(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 703
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method
