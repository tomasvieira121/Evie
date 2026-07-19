.class public Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"


# instance fields
.field private mCanThumbDetach:Z

.field private mIgnoreDragGesture:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

.field mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

.field private mScrollbarAnimator:Landroid/animation/AnimatorSet;

.field private mThumbActiveColor:I

.field private mThumbCurvature:I

.field mThumbHeight:I

.field private mThumbInactiveColor:I

.field private mThumbMaxWidth:I

.field private mThumbMinWidth:I

.field mThumbOffset:Landroid/graphics/Point;

.field mThumbPaint:Landroid/graphics/Paint;

.field private mThumbPath:Landroid/graphics/Path;

.field mThumbWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    .line 78
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-direct {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;-><init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x7f060052

    .line 83
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getFastScrollerThumbInactiveColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    const p1, 0x7f060051

    .line 84
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 86
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p1, 0x7f0700ab

    .line 89
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    const p1, 0x7f0700aa

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    const p1, 0x7f0700a9

    .line 91
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    .line 92
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    const p1, 0x7f0700ac

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    return-void
.end method

.method public static synthetic lambda$showActiveScrollbar$0(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(IIII)V

    return-void
.end method

.method private showActiveScrollbar(Z)V
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 252
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-string v0, "trackWidth"

    const/4 v1, 0x1

    .line 253
    new-array v2, v1, [I

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    :goto_0
    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "thumbWidth"

    .line 255
    new-array v3, v1, [I

    if-eqz p1, :cond_2

    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    :goto_1
    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 257
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    if-eq v0, v2, :cond_4

    .line 259
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 259
    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 261
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$BaseRecyclerViewFastScrollBar$SulsH1AGAFhEd6o-0LWuE8nxvtY;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$BaseRecyclerViewFastScrollBar$SulsH1AGAFhEd6o-0LWuE8nxvtY;-><init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 269
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateThumbPath()V
    .locals 10

    .line 276
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    .line 277
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v8, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getThumbHeight()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbMaxWidth()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method public getTrackWidth()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 189
    :pswitch_0
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    sub-int v3, p1, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    const/4 v6, 0x1

    if-le v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 190
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->supportsFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0, p2, p4}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 192
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 193
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 194
    iput-boolean v6, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 195
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    if-eqz p2, :cond_1

    .line 196
    iput-boolean v6, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 198
    :cond_1
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int p3, p4, p3

    add-int/2addr p2, p3

    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 199
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {p2, v6}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 200
    invoke-direct {p0, v6}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->showActiveScrollbar(Z)V

    .line 202
    :cond_2
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz p2, :cond_3

    .line 204
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 205
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int/2addr p3, v0

    .line 206
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int/2addr p1, v0

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 207
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    int-to-float v1, p2

    sub-float v1, p1, v1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object p2

    .line 209
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {p3, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->setSectionName(Ljava/lang/String;)V

    .line 210
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v6

    invoke-virtual {p3, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 211
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {p3, p4}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->updateFastScrollerBounds(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 212
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    goto :goto_0

    .line 217
    :pswitch_1
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    const/4 p1, 0x0

    .line 218
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    .line 219
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 220
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz p1, :cond_3

    .line 221
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 222
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {p1, v2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 223
    invoke-direct {p0, v2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->showActiveScrollbar(Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDraggingThumb()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public isNearThumb(II)Z
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 294
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public setDetachThumbOnFastScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    return-void
.end method

.method public setThumbOffset(II)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 111
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 112
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 114
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setThumbWidth(I)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 126
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 127
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 129
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTrackWidth(I)V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    .line 139
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 138
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    .line 141
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 142
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    .line 143
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result v2

    .line 142
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 144
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
