.class public abstract Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J

.field private mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8443
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 8444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 8447
    iput-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 8448
    iput-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    const-wide/16 v0, 0xfa

    .line 8449
    iput-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 8450
    iput-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    const/4 v0, 0x1

    .line 8452
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public abstract animateChange(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateMove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateRemove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public final dispatchAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 8709
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8710
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8711
    invoke-interface {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchAddStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 8756
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onAddStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .line 8852
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8854
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8856
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 8726
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 8727
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz p2, :cond_0

    .line 8728
    invoke-interface {p2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 8769
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onChangeStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 8697
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8698
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8699
    invoke-interface {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 8747
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onMoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 8685
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8686
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8687
    invoke-interface {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 8738
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->onRemoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public abstract endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .line 8478
    iget-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .line 8514
    iget-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 8460
    iget-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 8496
    iget-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .line 8532
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public onAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public abstract runPendingAnimations()V
.end method

.method setListener(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0

    .line 8564
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 0

    .line 8505
    iput-wide p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-void
.end method
