.class public Lcom/voxel/recyclerview/widget/GridLayoutManager;
.super Lcom/voxel/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Lcom/voxel/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field static final MAIN_DIR_SPEC:I


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 57
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 59
    new-instance p1, Lcom/voxel/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;IIZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move p5, p3

    const/4 p3, 0x0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    const/4 p5, -0x1

    const/4 v3, -0x1

    .line 540
    :goto_0
    iget v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, p4, -0x1

    const/4 p4, -0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    :goto_1
    if-eq p3, p5, :cond_3

    .line 548
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v4, p3

    .line 549
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 550
    invoke-virtual {p0, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    invoke-static {v5, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$102(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;I)I

    if-ne p4, v1, :cond_2

    .line 551
    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 552
    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v4, v0, v4

    invoke-static {v5, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$002(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_2

    .line 554
    :cond_2
    invoke-static {v5, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$002(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;I)I

    .line 556
    :goto_2
    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v4

    mul-int v4, v4, p4

    add-int/2addr v0, v4

    add-int/2addr p3, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .line 166
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 169
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 170
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    iget v3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    add-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-eq v0, p1, :cond_1

    .line 257
    :cond_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 260
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    div-int v3, p1, v0

    .line 261
    rem-int/2addr p1, v0

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v1, v4, :cond_3

    add-int/2addr v2, p1

    if-lez v2, :cond_2

    sub-int v5, v4, v2

    if-ge v5, p1, :cond_2

    add-int/lit8 v5, v3, 0x1

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v0, v5

    .line 272
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    aput v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 162
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, v1, v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 290
    iget v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_0

    .line 291
    iget v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 292
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p1, Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, v1, v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 1

    if-gez p1, :cond_0

    .line 499
    sget p1, Lcom/voxel/recyclerview/widget/GridLayoutManager;->MAIN_DIR_SPEC:I

    return p1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 501
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private getSpanGroupIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    .line 298
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 299
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    .line 301
    :cond_0
    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "GridLayoutManager"

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_1
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    .line 314
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 315
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    .line 317
    :cond_0
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 321
    :cond_1
    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p1, "GridLayoutManager"

    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_2
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    .line 335
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 336
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    .line 338
    :cond_0
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 342
    :cond_1
    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const-string p1, "GridLayoutManager"

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 352
    :cond_2
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 508
    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 510
    iget v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-direct {p0, p3, v1, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 512
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 251
    :goto_0
    invoke-direct {p0, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 519
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 522
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    .line 521
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkLayoutParams(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 222
    instance-of p1, p1, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method public generateDefaultLayoutParams()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 202
    new-instance v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 208
    new-instance v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 213
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_1
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    return p1
.end method

.method public getRowCountForAccessibility(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 104
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 105
    iget p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_1
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method layoutChunk(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 358
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v9, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 362
    :goto_0
    iget v0, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-nez v11, :cond_1

    .line 364
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    .line 365
    iget v3, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v3}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 368
    :goto_1
    iget v3, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v12, v3, :cond_5

    invoke-virtual {v7, v2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-lez v0, :cond_5

    .line 369
    iget v3, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 370
    invoke-direct {v6, v1, v2, v3}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanSize(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result v5

    .line 371
    iget v13, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v5, v13, :cond_4

    sub-int/2addr v0, v5

    if-gez v0, :cond_2

    goto :goto_2

    .line 380
    :cond_2
    invoke-virtual {v7, v1}, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v5

    .line 385
    iget-object v5, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 372
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-nez v12, :cond_6

    .line 390
    iput-boolean v9, v8, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move v5, v11

    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->assignSpans(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v12, :cond_c

    .line 399
    iget-object v3, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 400
    iget-object v4, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_8

    if-eqz v11, :cond_7

    .line 402
    invoke-virtual {v6, v3}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 404
    :cond_7
    invoke-virtual {v6, v3, v10}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    if-eqz v11, :cond_9

    .line 408
    invoke-virtual {v6, v3}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_4

    .line 410
    :cond_9
    invoke-virtual {v6, v3, v10}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 414
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 415
    iget-object v5, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 416
    invoke-static {v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v13

    invoke-static {v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    add-int/2addr v13, v14

    aget v5, v5, v13

    iget-object v13, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 417
    invoke-static {v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    aget v13, v13, v14

    sub-int/2addr v5, v13

    .line 415
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 419
    iget v5, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v5, v9, :cond_a

    .line 420
    iget v4, v4, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-direct {v6, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    invoke-direct {v6, v3, v2, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_5

    .line 422
    :cond_a
    iget v4, v4, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-direct {v6, v4}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v4

    invoke-direct {v6, v3, v4, v2}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    .line 424
    :goto_5
    iget-object v2, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_b

    move v1, v2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 431
    :cond_c
    invoke-direct {v6, v1}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_f

    .line 433
    iget-object v4, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 434
    iget-object v5, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    if-eq v5, v1, :cond_e

    .line 435
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 436
    iget-object v11, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 437
    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v13

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$100(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    add-int/2addr v13, v14

    aget v11, v11, v13

    iget-object v13, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 438
    invoke-static {v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v5

    aget v5, v13, v5

    sub-int/2addr v11, v5

    .line 436
    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 440
    iget v11, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v11, v9, :cond_d

    .line 441
    invoke-direct {v6, v4, v5, v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_7

    .line 443
    :cond_d
    invoke-direct {v6, v4, v0, v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 448
    :cond_f
    iput v1, v8, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 451
    iget v0, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v0, v9, :cond_11

    .line 452
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_10

    .line 453
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_8

    .line 456
    :cond_10
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v3, v0

    move v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_8

    .line 460
    :cond_11
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_12

    .line 461
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_8

    .line 464
    :cond_12
    iget v0, v7, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v2, v1

    const/4 v3, 0x0

    move v1, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v10, v12, :cond_16

    .line 469
    iget-object v4, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v4, v10

    .line 470
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 471
    iget v4, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v9, :cond_13

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    iget-object v2, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v11}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v4

    aget v2, v2, v4

    add-int/2addr v1, v2

    .line 473
    iget-object v2, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v7}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v16, v0

    move v13, v1

    move v15, v2

    move v14, v3

    goto :goto_9

    .line 475
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v3, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    invoke-static {v11}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->access$000(Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;)I

    move-result v4

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 476
    iget-object v3, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Lcom/voxel/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Lcom/voxel/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    move v14, v0

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    .line 480
    :goto_9
    iget v0, v11, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, v13, v0

    iget v0, v11, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, v14, v0

    iget v0, v11, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v4, v15, v0

    iget v0, v11, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v5, v16, v0

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 489
    invoke-virtual {v11}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v11}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 490
    :cond_14
    iput-boolean v9, v8, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 492
    :cond_15
    iget-boolean v0, v8, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/voxel/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v10, v10, 0x1

    move v1, v13

    move v3, v14

    move v2, v15

    move/from16 v0, v16

    goto :goto_8

    .line 494
    :cond_16
    iget-object v0, v6, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 278
    invoke-super {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Lcom/voxel/recyclerview/widget/RecyclerView$State;Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 279
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 280
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 281
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInFirstSpan(Lcom/voxel/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz p1, :cond_1

    array-length p1, p1

    iget p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq p1, p2, :cond_2

    .line 284
    :cond_1
    iget p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 128
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 130
    invoke-super {p0, p3, p4}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 133
    :cond_0
    check-cast v0, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 134
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    .line 135
    iget p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v3, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    .line 136
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 143
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_3

    .line 144
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p2, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    move v1, p1

    .line 141
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onItemsAdded(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lcom/voxel/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 150
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 157
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    .line 580
    iget v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 587
    iput p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 588
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Lcom/voxel/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
