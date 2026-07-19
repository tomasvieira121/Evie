.class public abstract Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 7219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7127
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7128
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 7129
    iput-wide v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 7130
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 7131
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v0, 0x0

    .line 7134
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7136
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    .line 7207
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 7211
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    if-eqz p1, :cond_0

    .line 7223
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    .line 7221
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$3200(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 7125
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3302(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;
    .locals 0

    .line 7125
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 7125
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 7125
    iget p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return p0
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .line 7517
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .line 7509
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addFlags(I)V
    .locals 1

    .line 7428
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 7249
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 7250
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 7376
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 7380
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 7227
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7228
    invoke-virtual {p0, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 7229
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 7325
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 7328
    :cond_0
    invoke-static {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4000(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 7353
    iget-wide v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 7360
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 7299
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1

    .line 7412
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 7420
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isBound()Z
    .locals 2

    .line 7404
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isChanged()Z
    .locals 1

    .line 7400
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 1

    .line 7392
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 7500
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7501
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 7408
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 7364
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 7416
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needsUpdate()Z
    .locals 1

    .line 7396
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .line 7233
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7234
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 7236
    :cond_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 7237
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 7240
    iget p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 7242
    :cond_2
    iget p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7243
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7244
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 7432
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    .line 7433
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7434
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 7435
    iput-wide v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 7436
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 7437
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v0, 0x0

    .line 7438
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7439
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 7254
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7255
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 7424
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7475
    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 7476
    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 7477
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const-string p1, "View"

    .line 7482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 7485
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 7486
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    .line 7487
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 7388
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .line 7260
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 7444
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7445
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7447
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7448
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7449
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7450
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7451
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7452
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7453
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7454
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7455
    :cond_7
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7456
    :cond_8
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7458
    :cond_9
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "}"

    .line 7459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unScrap()V
    .locals 1

    .line 7368
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .line 7372
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
