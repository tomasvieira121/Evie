.class public Lcom/voxel/launcher3/dragndrop/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field static sDragAlpha:F = 1.0f


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mAnimatedShiftX:I

.field private mAnimatedShiftY:I

.field private mAnimationCancelled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field mCrossFadeProgress:F

.field mCurrentFilter:[F

.field final mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field private final mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mHasDrawn:Z

.field private mIntrinsicIconScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 59
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mHasDrawn:Z

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 64
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 93
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    .line 94
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 96
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p1, p6

    .line 99
    invoke-virtual {p0, p5}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 100
    invoke-virtual {p0, p5}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleY(F)V

    const/4 p6, 0x2

    .line 103
    new-array v1, p6, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 104
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;

    invoke-direct {v2, p0, p5, p1}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$E18pLBqCeTBGWvVhbQMrssMMWYk;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/voxel/launcher3/dragndrop/DragView$1;

    invoke-direct {p5, p0}, Lcom/voxel/launcher3/dragndrop/DragView$1;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    invoke-static {p2, v0, v0, p1, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 129
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v0, v0, p5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 132
    iput p3, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 133
    iput p4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 136
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 137
    invoke-virtual {p0, p1, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->measure(II)V

    .line 138
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 140
    sget-boolean p1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070107

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->setElevation(F)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/dragndrop/DragView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    return p0
.end method

.method private animateFilterTo([F)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 277
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    .line 279
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 282
    :cond_1
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 284
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$aLc24ceAXQ_6gdk3n0pjYhqI0QE;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$aLc24ceAXQ_6gdk3n0pjYhqI0QE;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyTranslation()V
    .locals 2

    .line 383
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 384
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$animateFilterTo$2(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$animateShiftFrom$4(Lcom/voxel/launcher3/dragndrop/DragView;IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 356
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 357
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    int-to-float p1, p2

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 358
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    .line 359
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method public static synthetic lambda$animateShiftTo$5(Lcom/voxel/launcher3/dragndrop/DragView;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 374
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    int-to-float p2, p2

    mul-float p2, p2, p5

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 375
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationX:I

    int-to-float p1, p4

    mul-float p5, p5, p1

    float-to-int p1, p5

    add-int/2addr p3, p1

    .line 376
    iput p3, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 377
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method public static synthetic lambda$crossFade$1(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 240
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 241
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/launcher3/dragndrop/DragView;FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 106
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p2, p1

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 108
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 110
    sget p1, Lcom/voxel/launcher3/dragndrop/DragView;->sDragAlpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_0

    mul-float p1, p1, v0

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 111
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 115
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$show$3(Lcom/voxel/launcher3/dragndrop/DragView;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static setColorScale(ILandroid/graphics/ColorMatrix;)V
    .locals 4

    .line 394
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 395
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 394
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-void
.end method


# virtual methods
.method public animateShiftFrom(II)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    .line 353
    iput p2, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    .line 354
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 355
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;

    invoke-direct {v1, p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$LPVWmpD1bLqzFII8HPCP6DkEiDk;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public animateShiftTo(II)V
    .locals 8

    const/4 v0, 0x2

    .line 365
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 370
    iget v6, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 372
    new-instance v1, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$2Ljd3Q6NK7ItiuN1Cl7WzT1ZwG4;

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$2Ljd3Q6NK7ItiuN1Cl7WzT1ZwG4;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;IIII)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    .line 325
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public crossFade(I)V
    .locals 3

    const/4 v0, 0x2

    .line 236
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    new-instance p1, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$-mPKBBfq6JuawfgIvMPIdpaZ1g0;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$-mPKBBfq6JuawfgIvMPIdpaZ1g0;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .line 151
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mHasDrawn:Z

    return v0
.end method

.method public move(II)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mLastTouchX:I

    .line 338
    iput p2, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mLastTouchY:I

    .line 339
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 214
    iget v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 216
    iget v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    sub-float v4, v3, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xff

    .line 217
    :goto_1
    iget-object v5, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 224
    iget-object v4, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 225
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 226
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragView;->setMeasuredDimension(II)V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 299
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_2

    .line 251
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 254
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 255
    invoke-static {p1, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 258
    sget-boolean p1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    goto :goto_1

    .line 261
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 262
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->invalidate()V

    goto :goto_1

    .line 265
    :cond_2
    sget-boolean p1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez p1, :cond_3

    goto :goto_0

    .line 269
    :cond_3
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    goto :goto_1

    .line 266
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 267
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->invalidate()V

    :goto_1
    return-void
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-void
.end method

.method public setIntrinsicIconScaleFactor(F)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    return-void
.end method

.method public show(II)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 313
    new-instance v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 314
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 315
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    const/4 v1, 0x1

    .line 316
    iput-boolean v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 317
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragView;->move(II)V

    .line 320
    new-instance p1, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$FDA4B-FRwZNYjGge7xJUZrOrHWk;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragView$FDA4B-FRwZNYjGge7xJUZrOrHWk;-><init>(Lcom/voxel/launcher3/dragndrop/DragView;)V

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
