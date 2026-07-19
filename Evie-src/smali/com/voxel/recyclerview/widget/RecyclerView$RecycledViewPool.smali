.class public Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 3439
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 3440
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 3524
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3527
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3528
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3529
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 3491
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 3445
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method detach()V
    .locals 1

    .line 3495
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public getRecycledView(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 3459
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 3460
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3462
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3463
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3513
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_0
    if-nez p3, :cond_1

    .line 3515
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_1

    .line 3516
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3519
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->attach(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 3481
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 3482
    invoke-direct {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 3483
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    .line 3486
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 3487
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
