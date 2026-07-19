.class public Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$LongPressListener;,
        Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 53
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0xc8

    .line 54
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x190

    .line 55
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    .line 56
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mMinSwipeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    iput v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mMaxSwipeProgress:F

    .line 78
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTranslation:F

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTmpPos:[I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    .line 93
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    .line 94
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 95
    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    .line 96
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 97
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDensityScale:F

    .line 98
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mPagingTouchSlop:F

    .line 100
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float p1, p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressTimeout:J

    .line 101
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070262

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mFalsingThreshold:I

    .line 103
    new-instance p1, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v0

    long-to-float p2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    invoke-direct {p1, p3, p2}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mFlingAnimationUtils:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDisableHwLayers:Z

    return p0
.end method

.method static synthetic access$402(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method private getFalsingThreshold()I
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 591
    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private getMaxVelocity()F
    .locals 2

    .line 595
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDensityScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1

    .line 127
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    return p1
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    .line 123
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_0
    return p1
.end method

.method private getSwipeAlpha(F)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 190
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result p1

    div-float/2addr p2, p1

    .line 185
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 186
    iget p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    .line 135
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    :goto_0
    return p1
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 218
    invoke-static {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    .line 229
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 232
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 233
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 235
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 232
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dismissChild$1(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 378
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onTranslationUpdate(Landroid/view/View;FZ)V

    return-void
.end method

.method public static synthetic lambda$onInterceptTouchEvent$0(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 275
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    const/4 v2, 0x2

    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTmpPos:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTmpPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v0, v2

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTmpPos:[I

    aget v1, v2, v1

    sub-int/2addr p1, v1

    .line 281
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressListener:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$LongPressListener;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2, v0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$snapChild$2(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 430
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onTranslationUpdate(Landroid/view/View;FZ)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    .line 194
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 1

    .line 199
    invoke-direct {p0, p1, p3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result p3

    .line 200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 203
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDisableHwLayers:Z

    if-nez p2, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 205
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 207
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 210
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSwipeAlpha(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 213
    :cond_2
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 140
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v8, p4

    .line 342
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v2, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_2

    .line 347
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_1

    if-eqz p9, :cond_2

    :cond_1
    iget v6, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-ne v6, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    cmpl-float v7, p2, v5

    if-nez v7, :cond_4

    .line 350
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_3

    if-eqz p9, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    cmpg-float v7, p2, v5

    if-ltz v7, :cond_5

    cmpl-float v7, p2, v5

    if-nez v7, :cond_6

    .line 353
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gez v7, :cond_6

    if-nez p9, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eqz v6, :cond_7

    goto :goto_3

    .line 358
    :cond_7
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    move v6, v2

    goto :goto_4

    .line 356
    :cond_8
    :goto_3
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v2, v2

    move v6, v2

    :goto_4
    const-wide/16 v11, 0x0

    cmp-long v2, p7, v11

    if-nez v2, :cond_a

    .line 362
    iget v2, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v2

    cmpl-float v4, p2, v5

    if-eqz v4, :cond_9

    .line 365
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v4, v4, v5

    .line 366
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    .line 364
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_5

    .line 369
    :cond_9
    iget v2, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v2

    goto :goto_5

    :cond_a
    move-wide/from16 v2, p7

    .line 375
    :goto_5
    iget-boolean v4, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_b

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 376
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 378
    :cond_b
    new-instance v4, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;

    invoke-direct {v4, p0, p1, v10}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$vEUSD_xf52GPZfki4rNf9XI62D8;-><init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V

    .line 380
    invoke-virtual {p0, p1, v6, v4}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v13

    if-nez v13, :cond_c

    return-void

    :cond_c
    if-eqz p6, :cond_d

    .line 385
    sget-object v4, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_6

    .line 388
    :cond_d
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mFlingAnimationUtils:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    .line 389
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    move-object v3, v13

    move v5, v6

    move/from16 v6, p2

    .line 388
    invoke-virtual/range {v2 .. v7}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    :goto_6
    cmp-long v2, v8, v11

    if-lez v2, :cond_e

    .line 392
    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 394
    :cond_e
    new-instance v2, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;

    move-object/from16 v3, p3

    invoke-direct {v2, p0, p1, v10, v3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    invoke-virtual {p0, p1, v13}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 417
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    .line 327
    invoke-virtual/range {v0 .. v9}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .line 599
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDensityScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .line 607
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1

    .line 171
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    return p1
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1

    .line 131
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    return p1
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .line 603
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 154
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p1
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->swipedFarEnough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 619
    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    .line 294
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 295
    iget v4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v4

    .line 296
    iget v4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v3, v4

    .line 297
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 300
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    .line 301
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mInitialTouchPos:F

    .line 302
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTranslation:F

    .line 303
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->removeLongPressCallback()V

    goto :goto_2

    .line 310
    :pswitch_1
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 311
    :goto_1
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 313
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    .line 314
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->removeLongPressCallback()V

    if-eqz p1, :cond_3

    return v1

    .line 257
    :pswitch_2
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 258
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    .line 259
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSnappingChild:Z

    .line 260
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    .line 261
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onDownUpdate(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mInitialTouchPos:F

    .line 269
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 270
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTranslation:F

    .line 271
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressListener:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$LongPressListener;

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 273
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;-><init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 515
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->removeLongPressCallback()V

    return v2

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 541
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr p1, v0

    .line 542
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 543
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getFalsingThreshold()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    .line 544
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 548
    :cond_3
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v4}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 549
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v4, v4, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    move p1, v4

    goto :goto_0

    :cond_4
    neg-float p1, v4

    goto :goto_0

    :cond_5
    div-float/2addr p1, v2

    float-to-double v2, p1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 554
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float p1, p1, v4

    .line 558
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTranslation:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 559
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v0, v2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 560
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mTranslation:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v2, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_2

    .line 565
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    if-nez v0, :cond_7

    goto :goto_2

    .line 568
    :cond_7
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getMaxVelocity()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 569
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 571
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p0, p1, v4, v0, v5}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v4

    if-nez v4, :cond_9

    .line 572
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 574
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 575
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->swipedFastEnough()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 574
    invoke-virtual {p0, p1, v0, v3}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_1

    .line 578
    :cond_8
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {p1, v4}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 579
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    :goto_1
    const/4 p1, 0x0

    .line 581
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 583
    :cond_9
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDragging:Z

    :cond_a
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0

    .line 476
    invoke-direct {p0, p1, p3, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public removeLongPressCallback()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mDisableHwLayers:Z

    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 3

    .line 429
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    invoke-interface {p3, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p3

    .line 430
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$yMt4j8Q74TNPncbPz2kNqStXLio;

    invoke-direct {v0, p0, p1, p3}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$yMt4j8Q74TNPncbPz2kNqStXLio;-><init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;Z)V

    .line 432
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x96

    int-to-long v1, v1

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 438
    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$2;-><init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 446
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mSnappingChild:Z

    .line 447
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 6

    .line 611
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 612
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected swipedFastEnough()Z
    .locals 6

    .line 623
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 625
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->getEscapeVelocity()F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4
.end method
