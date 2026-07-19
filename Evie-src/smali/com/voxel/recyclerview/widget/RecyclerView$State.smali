.class public Lcom/voxel/recyclerview/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field private mInPreLayout:Z

.field mItemCount:I

.field mOldChangedHolders:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPostLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPreLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8135
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 8136
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 8138
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 8141
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    const/4 v0, 0x0

    .line 8148
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 8153
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 8159
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 8161
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 8163
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 8165
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 8167
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 8133
    iget p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p0
.end method

.method static synthetic access$1002(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 8133
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1200(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 8133
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z
    .locals 0

    .line 8133
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 8133
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z
    .locals 0

    .line 8133
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 8133
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z
    .locals 0

    .line 8133
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 8133
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z
    .locals 0

    .line 8133
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 8133
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$4102(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    .line 8133
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method private removeFrom(Landroidx/collection/ArrayMap;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 8319
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8320
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 8321
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8300
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    :goto_0
    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .line 8264
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .line 8180
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 8306
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8307
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8308
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_0

    .line 8309
    invoke-direct {p0, v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->removeFrom(Landroidx/collection/ArrayMap;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .line 8191
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method
