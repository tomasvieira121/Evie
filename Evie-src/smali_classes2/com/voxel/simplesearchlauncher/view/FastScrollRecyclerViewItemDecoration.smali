.class public Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScrollRecyclerViewItemDecoration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndexPaint:Landroid/graphics/Paint;

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mOverlayTextHeight:I

.field private mOverlayTextSize:I

.field private mOverlayYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mContext:Landroid/content/Context;

    .line 32
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070136

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayTextSize:I

    .line 33
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070137

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayYOffset:I

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 40
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 43
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayTextHeight:I

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    .line 46
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 53
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 55
    move-object/from16 v2, p2

    check-cast v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    .line 56
    iget v3, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexWidth:F

    .line 57
    iget v4, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    .line 58
    iget v5, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartX:F

    .line 59
    iget v6, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartY:F

    .line 60
    iget-object v7, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    .line 61
    iget-object v8, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    .line 62
    iget-boolean v9, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    .line 63
    iget v9, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mTouchY:F

    .line 65
    iget v2, v2, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mOverlayFactor:F

    if-nez v7, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v10, :cond_1

    if-eqz v8, :cond_1

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 74
    iget-object v10, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float v10, v3, v10

    div-float/2addr v10, v12

    add-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 75
    iget v13, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayTextHeight:I

    iget v14, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayYOffset:I

    int-to-float v14, v14

    mul-float v14, v14, v2

    add-float/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v14, v11, v2

    mul-float v14, v14, v13

    mul-float v13, v2, v11

    add-float/2addr v14, v13

    .line 78
    iget-object v13, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v13, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    iget v15, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayTextSize:I

    int-to-float v15, v15

    mul-float v15, v15, v14

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    int-to-float v10, v10

    int-to-float v9, v9

    iget-object v13, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    :cond_1
    iget-object v8, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    div-float v9, v3, v12

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object v8, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 86
    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 89
    :goto_0
    array-length v13, v7

    if-ge v10, v13, :cond_2

    .line 91
    aget-object v13, v7, v10

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const/high16 v14, 0x43480000    # 200.0f

    sub-float v15, v11, v2

    mul-float v15, v15, v14

    const/high16 v14, 0x42480000    # 50.0f

    mul-float v14, v14, v2

    add-float/2addr v15, v14

    float-to-int v14, v15

    .line 95
    iget-object v15, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    const v11, -0x333334

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 99
    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float v11, v3, v11

    div-float/2addr v11, v12

    add-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v6

    add-int/lit8 v14, v10, 0x1

    int-to-float v15, v14

    mul-float v15, v15, v4

    add-float/2addr v13, v15

    int-to-float v15, v8

    add-float/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 102
    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    int-to-float v11, v11

    int-to-float v13, v13

    iget-object v15, v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewItemDecoration;->mIndexPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v10, v14

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    return-void
.end method
