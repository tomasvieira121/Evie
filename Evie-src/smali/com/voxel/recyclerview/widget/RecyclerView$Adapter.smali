.class public abstract Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4456
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    .line 4457
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 4521
    iput p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 4522
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4523
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    .line 4525
    invoke-virtual {p1, v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4528
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 4508
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 4509
    iput p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return-object p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 4590
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 4769
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 4784
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 4818
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 4869
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 4702
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 4716
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->mObservable:Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
