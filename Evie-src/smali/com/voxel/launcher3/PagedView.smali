.class public abstract Lcom/voxel/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/PagedView$ScrollInterpolator;,
        Lcom/voxel/launcher3/PagedView$LayoutParams;,
        Lcom/voxel/launcher3/PagedView$PageInteractionListener;,
        Lcom/voxel/launcher3/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field private static final sAltTmpRect:Landroid/graphics/Rect;

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

.field protected mDensity:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mFreeScroll:Z

.field private mFreeScrollMaxScrollX:I

.field private mFreeScrollMinScrollX:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field private mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field protected mOverScrollX:I

.field mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

.field mPageIndicatorViewId:I

.field private mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrolls:[I

.field mPageSpacing:I

.field private mPageSwitchListener:Lcom/voxel/launcher3/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field protected mScroller:Lcom/voxel/launcher3/LauncherScroller;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field private mUseMinScale:Z

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWasHoveringOverDelete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 231
    new-array v1, v0, [F

    sput-object v1, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    .line 232
    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/PagedView;->sAltTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 94
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    const/4 v2, 0x1

    .line 106
    iput-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mFirstLayout:Z

    const/16 v3, -0x3e9

    .line 110
    iput v3, p0, Lcom/voxel/launcher3/PagedView;->mRestorePage:I

    .line 113
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    .line 118
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mPageSpacing:I

    .line 130
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastScreenCenter:I

    .line 144
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    .line 145
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 156
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mCellCountX:I

    .line 157
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mCellCountY:I

    .line 160
    iput-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mAllowOverScroll:Z

    const/4 v3, 0x2

    .line 162
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    .line 172
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    .line 179
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFadeInAdjacentScreens:Z

    .line 183
    iput-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mUsePagingTouchSlop:Z

    .line 185
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    .line 193
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    const/16 v4, 0xc8

    .line 198
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    const/16 v4, 0x12c

    .line 199
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    const/16 v4, 0xfa

    .line 200
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    const/16 v5, 0x50

    .line 201
    iput v5, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 202
    iput v5, p0, Lcom/voxel/launcher3/PagedView;->mMinScale:F

    .line 203
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mUseMinScale:Z

    .line 207
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 209
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mReorderingStarted:Z

    .line 214
    iput v3, p0, Lcom/voxel/launcher3/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 220
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mDeferringForDelete:Z

    .line 221
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    const/16 v4, 0x15e

    .line 222
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 236
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 265
    sget-object v4, Lis/shortcut/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 268
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/PagedView;->mPageLayoutWidthGap:I

    .line 270
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/PagedView;->mPageLayoutHeightGap:I

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 273
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    .line 277
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->init()V

    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->abortAnimation()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 491
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/voxel/launcher3/PagedView;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2068
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    .line 2352
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2353
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2354
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    .line 2355
    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 2356
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v5, v4, [F

    aput v6, v5, v7

    .line 2357
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v5, "scaleX"

    new-array v6, v4, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 2358
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v4, v4, [F

    aput v8, v4, v7

    .line 2359
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2355
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2360
    new-instance v1, Lcom/voxel/launcher3/PagedView$2;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/PagedView$2;-><init>(Lcom/voxel/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2366
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    .line 2470
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;-><init>(Lcom/voxel/launcher3/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 2180
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 2181
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private forceFinishScroller()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherScroller;->forceFinished(Z)V

    const/4 v0, -0x1

    .line 499
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    .line 501
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageEndMoving()V

    :cond_0
    return-void
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 3

    .line 2557
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2561
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2562
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2564
    sget-object v1, Lcom/voxel/launcher3/PagedView;->sAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2566
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    sget-object v1, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/RemoveDropTarget;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2567
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/voxel/launcher3/PagedView;->sAltTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    sget-object v2, Lcom/voxel/launcher3/PagedView;->sAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2568
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .line 1362
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1363
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1362
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1364
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$createPostDeleteAnimationRunnable$4(Lcom/voxel/launcher3/PagedView;Landroid/view/View;)V
    .locals 12

    .line 2471
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2478
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 2479
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 2480
    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    add-int/lit8 v5, v0, -0x1

    .line 2485
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/PagedView;->snapToPageImmediately(I)V

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    .line 2488
    :cond_4
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v2

    .line 2489
    :goto_3
    iget-object v5, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v5, v5, v4

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x1

    :goto_4
    if-eqz v3, :cond_6

    add-int/lit8 v5, v0, -0x1

    .line 2492
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-gt v1, v5, :cond_a

    .line 2494
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    .line 2503
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildWidth(I)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/voxel/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v7, v8

    goto :goto_6

    .line 2506
    :cond_7
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 2508
    :goto_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v8

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_7

    .line 2510
    :cond_8
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    .line 2516
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_9

    .line 2518
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2523
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v9

    const v10, 0x3c23d70a    # 0.01f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 2524
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 2525
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x2

    .line 2526
    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "translationX"

    new-array v10, v4, [F

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 2527
    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "alpha"

    new-array v10, v4, [F

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v2

    .line 2528
    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v4

    .line 2526
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2529
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v8, 0x7f0a01ec

    .line 2530
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2533
    :cond_a
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2534
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2535
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2536
    new-instance v0, Lcom/voxel/launcher3/PagedView$3;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/PagedView$3;-><init>(Lcom/voxel/launcher3/PagedView;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2544
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2547
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageIndicator()Lcom/voxel/launcher3/PageIndicator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/PageIndicator;->removeMarker(IZ)V

    .line 2548
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->removeView(Landroid/view/View;)V

    .line 2549
    invoke-virtual {p0, p1, v4}, Lcom/voxel/launcher3/PagedView;->onRemoveView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic lambda$endReordering$2(Lcom/voxel/launcher3/PagedView;)V
    .locals 0

    .line 2446
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onEndReordering()V

    return-void
.end method

.method public static synthetic lambda$endReordering$3(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .line 2449
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2450
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->enableFreeScroll()V

    return-void
.end method

.method public static synthetic lambda$onEndReordering$1(Lcom/voxel/launcher3/PagedView;)V
    .locals 2

    .line 2399
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/RemoveDropTarget;->setVisibility(I)V

    .line 2400
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->resetHoverColor()V

    return-void
.end method

.method public static synthetic lambda$onTouchEvent$0(Lcom/voxel/launcher3/PagedView;II)V
    .locals 11

    .line 1813
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p2, p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/lit8 v3, p2, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    if-le p2, p1, :cond_2

    sub-int/2addr p2, v1

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    const/4 v4, 0x0

    if-gt v3, p2, :cond_4

    .line 1824
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1828
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 1829
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v7

    add-int v8, v3, v2

    invoke-virtual {p0, v8}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v7, v8

    const v8, 0x7f0a01ec

    .line 1833
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    .line 1835
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1838
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1839
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1840
    iget v7, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1841
    new-array v7, v1, [Landroid/animation/Animator;

    const-string v8, "translationX"

    new-array v9, v1, [F

    const/4 v10, 0x0

    aput v10, v9, v4

    .line 1842
    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    .line 1841
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1843
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1844
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1847
    :cond_4
    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->removeView(Landroid/view/View;)V

    .line 1848
    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p2, v4}, Lcom/voxel/launcher3/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 1849
    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/voxel/launcher3/PagedView;->addView(Landroid/view/View;I)V

    .line 1850
    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/voxel/launcher3/PagedView;->onAddView(Landroid/view/View;I)V

    .line 1851
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1852
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    if-eqz p1, :cond_5

    .line 1853
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/PageIndicator;->setActiveMarker(I)V

    :cond_5
    return-void
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 2

    .line 366
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 367
    sget-object p2, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    sget-object p2, Lcom/voxel/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 369
    sget-object p1, Lcom/voxel/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object p2, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 370
    sget-object p1, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 3

    .line 357
    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 358
    aput p3, v0, p2

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    sget-object v0, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 360
    sget-object p3, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    aget v0, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    aput v0, p3, v1

    .line 361
    sget-object p3, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    aget v0, p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    aput v0, p3, p2

    .line 362
    sget-object p1, Lcom/voxel/launcher3/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private onDropToDelete()V
    .locals 9

    .line 2585
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2593
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x2

    .line 2594
    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 2595
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v6, v5, [F

    aput v7, v6, v8

    .line 2596
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2594
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2597
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2600
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2601
    new-array v3, v5, [Landroid/animation/Animator;

    const-string v4, "alpha"

    new-array v6, v5, [F

    aput v7, v6, v8

    .line 2602
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2601
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2603
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v0

    .line 2607
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2608
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2609
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2610
    new-instance v1, Lcom/voxel/launcher3/PagedView$4;

    invoke-direct {v1, p0, v0}, Lcom/voxel/launcher3/PagedView$4;-><init>(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2615
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2617
    iput-boolean v5, p0, Lcom/voxel/launcher3/PagedView;->mDeferringForDelete:Z

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 2084
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2085
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2090
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 2091
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    .line 2092
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 2093
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    .line 2094
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2095
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2076
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2077
    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private removeMarkerForView(I)V
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/PageIndicator;->removeMarker(IZ)V

    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .line 2006
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->releaseVelocityTracker()V

    .line 2007
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->endReordering()V

    const/4 v0, 0x0

    .line 2008
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mCancelTap:Z

    .line 2009
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    const/4 v0, -0x1

    .line 2010
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 4

    .line 681
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 682
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1000

    .line 684
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 685
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 686
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 687
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 690
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    .line 696
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 697
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 5

    .line 1670
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    .line 1672
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1673
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1674
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1675
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    if-ge v0, v4, :cond_0

    .line 1676
    aget v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v2, v1

    if-le v0, v3, :cond_1

    .line 1678
    aget v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->setCurrentPage(I)V

    :cond_1
    :goto_0
    xor-int/2addr p1, v1

    .line 1682
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->setEnableOverscroll(Z)V

    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 375
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 377
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 378
    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 379
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PageIndicator;->setActiveMarker(I)V

    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 4

    .line 509
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 511
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v0, v2

    aget v0, v0, v1

    .line 512
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 511
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected acceleratedOverFactor(F)F
    .locals 2

    .line 1599
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    .line 1608
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1609
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    return p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1282
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1283
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1286
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 1287
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1290
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1291
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .locals 2

    .line 784
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/voxel/launcher3/PagedView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 785
    iput-boolean v1, v0, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    const/4 v1, 0x0

    .line 786
    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .line 1524
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 780
    instance-of p1, p1, Lcom/voxel/launcher3/PagedView$LayoutParams;

    return p1
.end method

.method public computeScroll()V
    .locals 0

    .line 741
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 705
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherScroller;->getCurrY()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    .line 707
    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 709
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v0

    mul-float v3, v3, v2

    float-to-int v0, v3

    .line 710
    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherScroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/voxel/launcher3/PagedView;->scrollTo(II)V

    .line 712
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return v1

    .line 714
    :cond_3
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 715
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 717
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    .line 718
    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    .line 719
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 723
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-nez v0, :cond_4

    .line 724
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageEndMoving()V

    .line 727
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 729
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 730
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_5
    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    .line 1615
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    .line 1620
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/voxel/launcher3/PagedView;->overScrollInfluenceCurve(F)F

    move-result v1

    mul-float v3, v3, v1

    .line 1623
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    .line 1624
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    :cond_1
    const v1, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, v1

    mul-float v3, v3, v0

    .line 1627
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 1629
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    .line 1630
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 1632
    :cond_2
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    .line 1633
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1635
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1480
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 2

    .line 1489
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1493
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1494
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int v0, v1

    float-to-int p1, p1

    .line 1495
    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1497
    :cond_1
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 1499
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1504
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    .line 1505
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    .line 1506
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    const/4 p1, 0x0

    .line 1507
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1508
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchX:F

    .line 1509
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mSmoothingTime:F

    .line 1510
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1511
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageBeginMoving()V

    :cond_3
    return-void
.end method

.method public disableFreeScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1655
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->setEnableFreeScroll(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1192
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1194
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1197
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    add-int/2addr v2, v1

    .line 1199
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mLastScreenCenter:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget-boolean v1, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    if-eqz v1, :cond_1

    .line 1202
    :cond_0
    iput-boolean v3, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1203
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/PagedView;->screenScrolled(I)V

    .line 1204
    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mLastScreenCenter:I

    .line 1207
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getVisiblePages([I)V

    .line 1208
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v1, v3

    const/4 v4, 0x1

    .line 1209
    aget v1, v1, v4

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 1211
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getDrawingTime()J

    move-result-wide v5

    .line 1213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1214
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1215
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1214
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_5

    .line 1219
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1220
    iget-object v7, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-ne v4, v7, :cond_2

    goto :goto_1

    .line 1221
    :cond_2
    iget-boolean v7, p0, Lcom/voxel/launcher3/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v7, :cond_3

    if-gt v2, v0, :cond_4

    if-gt v0, v1, :cond_4

    .line 1222
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1223
    :cond_3
    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/voxel/launcher3/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1227
    :cond_5
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1228
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/voxel/launcher3/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1231
    :cond_6
    iput-boolean v3, p0, Lcom/voxel/launcher3/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1267
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1271
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 1272
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    return v0

    .line 1276
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public enableFreeScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 1651
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->setEnableFreeScroll(Z)V

    return-void
.end method

.method endReordering()V
    .locals 3

    .line 2441
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mReorderingStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2442
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mReorderingStarted:Z

    .line 2446
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$PagedView$eJbelvsDLDG0HqzEqtSy4OcaPfE;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$PagedView$eJbelvsDLDG0HqzEqtSy4OcaPfE;-><init>(Lcom/voxel/launcher3/PagedView;)V

    .line 2447
    iget-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mDeferringForDelete:Z

    if-nez v2, :cond_1

    .line 2448
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;

    invoke-direct {v2, p0, v1}, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;-><init>(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2453
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2456
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/PagedView;->snapToPage(II)V

    .line 2458
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->animateDragViewToOriginalPosition()V

    :cond_1
    const/4 v0, 0x0

    .line 2464
    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1305
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 1309
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 1315
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1316
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1317
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/voxel/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/voxel/launcher3/PagedView$LayoutParams;
    .locals 2

    .line 770
    new-instance v0, Lcom/voxel/launcher3/PagedView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/voxel/launcher3/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/voxel/launcher3/PagedView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 775
    new-instance v0, Lcom/voxel/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/voxel/launcher3/PagedView$LayoutParams;
    .locals 2

    .line 765
    new-instance v0, Lcom/voxel/launcher3/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/voxel/launcher3/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1121
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getChildWidth(I)I
    .locals 0

    .line 2110
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 2680
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2681
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2680
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteDropTarget()Lcom/voxel/launcher3/RemoveDropTarget;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1134
    aput v0, p1, v0

    .line 1135
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .line 1575
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1578
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/PagedView$LayoutParams;

    .line 1582
    iget-boolean v2, v2, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v2, :cond_2

    .line 1583
    iget-boolean v1, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1586
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    aget p1, v2, p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    add-int/2addr p1, v1

    .line 1587
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    .line 2690
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    return v0
.end method

.method getNearestHoverOverPageIndex()I
    .locals 6

    .line 1694
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1695
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 1696
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1697
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    const v1, 0x7fffffff

    .line 1699
    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1700
    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    :goto_0
    iget-object v4, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_1

    .line 1701
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1702
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    sub-int v4, v0, v5

    .line 1703
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getNextPage()I
    .locals 2

    .line 455
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getOnInterceptTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 2303
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2304
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2306
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method getPageIndicator()Lcom/voxel/launcher3/PageIndicator;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;
    .locals 0

    .line 426
    new-instance p1, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    invoke-direct {p1}, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;-><init>()V

    return-object p1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 8

    .line 2128
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2129
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 2131
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 2132
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2137
    :cond_0
    div-int/lit8 v5, v5, 0x2

    .line 2138
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 2139
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_1

    move v3, v4

    move v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected getPageSnapDuration()I
    .locals 1

    .line 2153
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->isInOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15e

    return v0

    :cond_0
    const/16 v0, 0x2ee

    return v0
.end method

.method getRestorePage()I
    .locals 1

    .line 546
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 3

    .line 1540
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1542
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 1543
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-gez p1, :cond_0

    .line 1548
    iget-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, p3, -0x1

    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3

    goto :goto_0

    .line 1555
    :cond_3
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_1

    .line 1553
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p3, p0, Lcom/voxel/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr p2, p3

    :goto_1
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    div-float/2addr p1, p2

    .line 1559
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getMaxScrollProgress()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1560
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getMaxScrollProgress()F

    move-result p2

    neg-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getScrollerFinalX()I
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method getViewportHeight()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 10

    .line 1139
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 1140
    sget-object v1, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v1, v3

    const/4 v1, -0x1

    .line 1142
    aput v1, p1, v3

    .line 1143
    aput v1, p1, v2

    if-lez v0, :cond_4

    .line 1146
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    .line 1149
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 1151
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1153
    sget-object v8, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    aput v3, v8, v3

    .line 1154
    invoke-static {v7, p0, v8, v3}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1155
    sget-object v8, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    aget v9, v8, v3

    if-le v9, v0, :cond_0

    .line 1156
    aget v7, p1, v3

    if-ne v7, v1, :cond_3

    goto :goto_1

    .line 1163
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    aput v9, v8, v3

    .line 1164
    sget-object v8, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-static {v7, p0, v8, v3}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1165
    sget-object v7, Lcom/voxel/launcher3/PagedView;->sTmpIntPoint:[I

    aget v7, v7, v3

    if-gez v7, :cond_1

    .line 1166
    aget v7, p1, v3

    if-ne v7, v1, :cond_3

    goto :goto_1

    .line 1173
    :cond_1
    aget v6, p1, v3

    if-gez v6, :cond_2

    .line 1174
    aput v5, p1, v3

    :cond_2
    move v6, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1178
    :cond_3
    aput v6, p1, v2

    goto :goto_2

    .line 1180
    :cond_4
    aput v1, p1, v3

    .line 1181
    aput v1, p1, v2

    :goto_2
    return-void
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    .line 284
    new-instance v0, Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    .line 285
    new-instance v0, Lcom/voxel/launcher3/PagedView$ScrollInterpolator;

    invoke-direct {v0}, Lcom/voxel/launcher3/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/voxel/launcher3/PagedView;->mCenterPagesVertically:Z

    .line 289
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mTouchSlop:I

    .line 291
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mMaximumVelocity:I

    .line 292
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mDensity:F

    .line 294
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mDensity:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mFlingThresholdVelocity:I

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 295
    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mMinFlingVelocity:I

    const v2, 0x44bb8000    # 1500.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 296
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mMinSnapVelocity:I

    .line 297
    invoke-virtual {p0, p0}, Lcom/voxel/launcher3/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->setWillNotDraw(Z)V

    return-void
.end method

.method public isAllowOverScroll()Z
    .locals 1

    .line 1686
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method protected isInOverScroll()Z
    .locals 2

    .line 2149
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    if-gt v0, v1, :cond_1

    if-gez v0, :cond_0

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

.method protected isPageMoving()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 2

    .line 2432
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsReordering:Z

    if-eqz p1, :cond_1

    .line 2434
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageSwitchListener:Lcom/voxel/launcher3/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/voxel/launcher3/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updatePageIndicator()V

    return-void
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 307
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 310
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/PageIndicator;

    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    .line 314
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PageIndicator;->removeAllMarkers(Z)V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 319
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual {v2, v0, v1}, Lcom/voxel/launcher3/PageIndicator;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updatePageIndicator()V

    :cond_2
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1059
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1060
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1061
    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    .line 1062
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v1

    .line 1061
    invoke-virtual {p2, p1, v1, v0}, Lcom/voxel/launcher3/PageIndicator;->addMarker(ILcom/voxel/launcher3/PageIndicator$PageMarkerResources;Z)V

    .line 1068
    :cond_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1069
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1070
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1075
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 1076
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1077
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    return-void
.end method

.method protected onEndReordering()V
    .locals 2

    .line 2397
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2398
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$PagedView$eSPfy_qzT-tyNBE1-QBNoVwSkj8;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$PagedView$eSPfy_qzT-tyNBE1-QBNoVwSkj8;-><init>(Lcom/voxel/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 2402
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mWasHoveringOverDelete:Z

    .line 2403
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsReordering:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 2038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 2043
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2045
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    goto :goto_0

    .line 2047
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 2048
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    .line 2051
    :cond_2
    iget-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_4

    cmpg-float p1, v2, v3

    if-gez p1, :cond_5

    goto :goto_1

    :cond_3
    cmpl-float p1, v0, v3

    if-gtz p1, :cond_4

    cmpl-float p1, v2, v3

    if-lez p1, :cond_5

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_6

    .line 2054
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->scrollRight()V

    goto :goto_2

    .line 2056
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->scrollLeft()V

    :goto_2
    return v1

    .line 2063
    :cond_7
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2653
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2654
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 2624
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2625
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2626
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    const/16 v0, 0x1000

    .line 2627
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2629
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0x2000

    .line 2630
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2632
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2637
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2638
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_3

    .line 2639
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1377
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1378
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1388
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1391
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1398
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1399
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-ne v2, v1, :cond_2

    return v1

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1410
    :pswitch_0
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 1411
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1463
    :pswitch_1
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_2

    .line 1422
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1425
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    .line 1426
    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionY:F

    .line 1427
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/voxel/launcher3/PagedView;->mDownScrollX:F

    .line 1428
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 1429
    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    .line 1430
    invoke-direct {p0, p0, v0, v2}, Lcom/voxel/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1431
    aget v2, v0, v3

    iput v2, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    .line 1432
    aget v0, v0, v1

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    const/4 v0, 0x0

    .line 1433
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1434
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    .line 1435
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    .line 1442
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherScroller;->getFinalX()I

    move-result p1

    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->getCurrX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1443
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    .line 1446
    iput v3, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    .line 1447
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    if-nez p1, :cond_8

    .line 1448
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->setCurrentPage(I)V

    .line 1449
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageEndMoving()V

    goto :goto_2

    .line 1452
    :cond_5
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    float-to-int p1, p1

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionY:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1453
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    goto :goto_2

    .line 1455
    :cond_6
    iput v3, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    goto :goto_2

    .line 1467
    :cond_7
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1468
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1476
    :cond_8
    :goto_2
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetX()I

    move-result v2

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getViewportOffsetY()I

    move-result v3

    .line 915
    iget-object v4, v0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 917
    iget-boolean v4, v0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 918
    :goto_0
    iget-boolean v6, v0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    move v6, v1

    .line 919
    :goto_1
    iget-boolean v8, v0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    .line 921
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    .line 923
    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/voxel/launcher3/PagedView$LayoutParams;

    .line 926
    iget-boolean v10, v10, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingLeft()I

    move-result v10

    :goto_3
    add-int/2addr v10, v2

    .line 927
    iget-object v11, v0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v11, :cond_5

    iget v11, v0, Lcom/voxel/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v1, v11, :cond_6

    .line 928
    :cond_5
    new-array v11, v1, [I

    iput-object v11, v0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    :cond_6
    :goto_4
    if-eq v4, v6, :cond_e

    .line 932
    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 933
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    .line 934
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/voxel/launcher3/PagedView$LayoutParams;

    .line 936
    iget-boolean v13, v12, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v13, :cond_7

    move v13, v3

    goto :goto_5

    .line 939
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    .line 940
    iget-boolean v14, v0, Lcom/voxel/launcher3/PagedView;->mCenterPagesVertically:Z

    if-eqz v14, :cond_8

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getViewportHeight()I

    move-result v14

    iget-object v15, v0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    iget-object v15, v0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v8

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 945
    :cond_8
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 946
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 950
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v9, v10, v16

    add-int/2addr v15, v13

    .line 949
    invoke-virtual {v11, v10, v13, v9, v15}, Landroid/view/View;->layout(IIII)V

    .line 952
    iget-boolean v9, v12, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingLeft()I

    move-result v9

    .line 953
    :goto_6
    iget-object v11, v0, Lcom/voxel/launcher3/PagedView;->mPageScrolls:[I

    sub-int v9, v10, v9

    sub-int/2addr v9, v2

    aput v9, v11, v4

    .line 955
    iget v9, v0, Lcom/voxel/launcher3/PagedView;->mPageSpacing:I

    add-int v11, v4, v7

    if-eq v11, v6, :cond_a

    .line 958
    invoke-virtual {v0, v11}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/voxel/launcher3/PagedView$LayoutParams;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 965
    :goto_7
    iget-boolean v12, v12, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v12, :cond_b

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingLeft()I

    move-result v9

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    .line 967
    iget-boolean v11, v11, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v11, :cond_c

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getPaddingRight()I

    move-result v9

    :cond_c
    :goto_8
    add-int/2addr v14, v9

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getChildGap()I

    move-result v9

    add-int/2addr v14, v9

    add-int/2addr v10, v14

    :cond_d
    add-int/2addr v4, v7

    goto/16 :goto_4

    .line 975
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 978
    invoke-virtual {v2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 979
    new-instance v3, Lcom/voxel/launcher3/PagedView$1;

    invoke-direct {v3, v0}, Lcom/voxel/launcher3/PagedView$1;-><init>(Lcom/voxel/launcher3/PagedView;)V

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_9

    .line 997
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->updateMaxScrollX()V

    .line 1000
    :goto_9
    iget-boolean v2, v0, Lcom/voxel/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-ltz v2, :cond_10

    if-ge v2, v1, :cond_10

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 1002
    iput-boolean v5, v0, Lcom/voxel/launcher3/PagedView;->mFirstLayout:Z

    .line 1005
    :cond_10
    iget-object v2, v0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/voxel/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v2, v1, :cond_12

    .line 1006
    iget v2, v0, Lcom/voxel/launcher3/PagedView;->mRestorePage:I

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_11

    .line 1007
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/PagedView;->setCurrentPage(I)V

    .line 1008
    iput v3, v0, Lcom/voxel/launcher3/PagedView;->mRestorePage:I

    goto :goto_a

    .line 1010
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/PagedView;->setCurrentPage(I)V

    .line 1013
    :cond_12
    :goto_a
    iput v1, v0, Lcom/voxel/launcher3/PagedView;->mChildCountOnLastLayout:I

    const/4 v1, 0x1

    .line 1015
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 795
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 802
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 803
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 804
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 805
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 808
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 809
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v6, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 815
    iget-boolean v5, p0, Lcom/voxel/launcher3/PagedView;->mUseMinScale:Z

    if-eqz v5, :cond_1

    int-to-float v4, v4

    .line 816
    iget v5, p0, Lcom/voxel/launcher3/PagedView;->mMinScale:F

    div-float v6, v4, v5

    float-to-int v6, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_1
    move v6, v1

    move v4, v3

    .line 822
    :goto_0
    iget-object v5, p0, Lcom/voxel/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-lez v1, :cond_a

    if-gtz v3, :cond_3

    goto/16 :goto_4

    .line 840
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 841
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 851
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v7, v0, :cond_9

    .line 854
    invoke-virtual {p0, v7}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 855
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 856
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/PagedView$LayoutParams;

    .line 863
    iget-boolean v5, v3, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v5, :cond_6

    .line 864
    iget v5, v3, Lcom/voxel/launcher3/PagedView$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    const/4 v10, -0x2

    if-ne v5, v10, :cond_4

    const/high16 v5, -0x80000000

    goto :goto_2

    :cond_4
    const/high16 v5, 0x40000000    # 2.0f

    .line 870
    :goto_2
    iget v3, v3, Lcom/voxel/launcher3/PagedView$LayoutParams;->height:I

    if-ne v3, v10, :cond_5

    const/high16 v8, -0x80000000

    .line 876
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v9, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v9

    iget-object v9, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v9

    .line 878
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportHeight()I

    move-result v9

    sub-int/2addr v9, p1

    iget-object v10, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 880
    iput v9, p0, Lcom/voxel/launcher3/PagedView;->mNormalChildHeight:I

    goto :goto_3

    .line 885
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v3

    iget-object v5, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/voxel/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    .line 886
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportHeight()I

    move-result v9

    const/high16 v5, 0x40000000    # 2.0f

    :goto_3
    if-nez v1, :cond_7

    move v1, v3

    .line 893
    :cond_7
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 895
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 896
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 899
    :cond_9
    invoke-virtual {p0, v6, v4}, Lcom/voxel/launcher3/PagedView;->setMeasuredDimension(II)V

    return-void

    .line 831
    :cond_a
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 825
    :cond_b
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

    if-eqz v0, :cond_0

    .line 593
    invoke-interface {v0}, Lcom/voxel/launcher3/PagedView$PageInteractionListener;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

    if-eqz v0, :cond_0

    .line 601
    invoke-interface {v0}, Lcom/voxel/launcher3/PagedView$PageInteractionListener;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .locals 2

    .line 2388
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2389
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v1, :cond_0

    .line 2391
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2392
    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1250
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    .line 1255
    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1257
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollInteractionBegin()V
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

    if-eqz v0, :cond_0

    .line 2020
    invoke-interface {v0}, Lcom/voxel/launcher3/PagedView$PageInteractionListener;->onScrollInteractionBegin()V

    :cond_0
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

    if-eqz v0, :cond_0

    .line 2027
    invoke-interface {v0}, Lcom/voxel/launcher3/PagedView$PageInteractionListener;->onScrollInteractionEnd()V

    :cond_0
    return-void
.end method

.method protected onStartReordering()V
    .locals 2

    const/4 v0, 0x4

    .line 2372
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    const/4 v0, 0x1

    .line 2373
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsReordering:Z

    .line 2376
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/RemoveDropTarget;->setVisibility(I)V

    .line 2378
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2379
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v0}, Lcom/voxel/launcher3/RemoveDropTarget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2383
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1716
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1719
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1721
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1978
    :pswitch_0
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_1

    .line 1979
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->snapToDestination()V

    .line 1981
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_a

    .line 1753
    :pswitch_1
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    const/4 v4, -0x1

    if-ne v0, v2, :cond_4

    .line 1755
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    return v2

    .line 1759
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1760
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    .line 1762
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    .line 1767
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_3

    .line 1768
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mTouchX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mTouchX:F

    .line 1769
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v1, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mSmoothingTime:F

    float-to-int v1, v0

    .line 1770
    invoke-virtual {p0, v1, v3}, Lcom/voxel/launcher3/PagedView;->scrollBy(II)V

    .line 1771
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    int-to-float p1, v1

    sub-float/2addr v0, p1

    .line 1772
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_a

    .line 1774
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->awakenScrollBars()Z

    goto/16 :goto_a

    :cond_4
    if-ne v0, v1, :cond_6

    .line 1778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 1779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    .line 1783
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object p1

    .line 1784
    aget v0, p1, v3

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    .line 1785
    aget p1, p1, v2

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    .line 1786
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1789
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1792
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v0

    .line 1794
    iget-boolean v1, p0, Lcom/voxel/launcher3/PagedView;->mWasHoveringOverDelete:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/launcher3/PagedView;->setPageHoveringOverDeleteDropTarget(IZZ)V

    .line 1795
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mWasHoveringOverDelete:Z

    .line 1801
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNearestHoverOverPageIndex()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 1802
    iget-object v5, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-eq v1, v5, :cond_5

    if-nez v0, :cond_5

    .line 1804
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v3, v0, v3

    .line 1805
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v2

    .line 1806
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1807
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v0, v3

    if-gt v3, v1, :cond_21

    aget v0, v0, v2

    if-gt v1, v0, :cond_21

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v0, :cond_21

    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    .line 1809
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1810
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1811
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$PagedView$Megkwl-HTsNVO1DjyLCt0ZKAxTY;

    invoke-direct {v0, p0, v1, p1}, Lcom/voxel/launcher3/-$$Lambda$PagedView$Megkwl-HTsNVO1DjyLCt0ZKAxTY;-><init>(Lcom/voxel/launcher3/PagedView;II)V

    iput-object v0, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1856
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/launcher3/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 1859
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1860
    iput v4, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_a

    .line 1863
    :cond_6
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 1868
    :pswitch_2
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_18

    .line 1869
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    .line 1870
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1871
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1872
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 1873
    iget v5, p0, Lcom/voxel/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1874
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 1875
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    sub-float v1, p1, v1

    float-to-int v1, v1

    .line 1876
    iget v4, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1877
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    const v6, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    .line 1880
    :goto_0
    iget v6, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    iget v7, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v8, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v7, v8

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v6, p1

    iput v6, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    .line 1882
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float p1, p1, v6

    if-lez p1, :cond_8

    .line 1883
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v6, p0, Lcom/voxel/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v6, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    .line 1885
    :goto_1
    iget-boolean v6, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    if-nez v6, :cond_16

    .line 1890
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float v4, v4, v7

    cmpl-float v4, v6, v4

    if-lez v4, :cond_9

    int-to-float v4, v0

    .line 1891
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    .line 1899
    :goto_2
    iget-boolean v6, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_a

    if-lez v1, :cond_b

    goto :goto_3

    :cond_a
    if-gez v1, :cond_b

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 1900
    :goto_4
    iget-boolean v6, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_c

    if-lez v0, :cond_d

    goto :goto_5

    :cond_c
    if-gez v0, :cond_d

    :goto_5
    const/4 v3, 0x1

    :cond_d
    if-eqz v5, :cond_e

    if-nez v1, :cond_e

    if-eqz p1, :cond_f

    :cond_e
    if-eqz p1, :cond_11

    if-nez v3, :cond_11

    .line 1901
    :cond_f
    iget v6, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-lez v6, :cond_11

    if-eqz v4, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v6, v6, -0x1

    .line 1904
    :goto_6
    invoke-virtual {p0, v6, v0}, Lcom/voxel/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    if-eqz p1, :cond_13

    :cond_12
    if-eqz p1, :cond_15

    if-eqz v3, :cond_15

    .line 1905
    :cond_13
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    .line 1907
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_15

    if-eqz v4, :cond_14

    .line 1908
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    goto :goto_7

    :cond_14
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr p1, v2

    .line 1909
    :goto_7
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1911
    :cond_15
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1914
    :cond_16
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_17

    .line 1915
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1918
    :cond_17
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScaleX()F

    move-result p1

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v6, v0

    .line 1920
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v4, v0

    .line 1922
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1923
    iget-object v3, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    .line 1924
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result v5

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1923
    invoke-virtual/range {v3 .. v11}, Lcom/voxel/launcher3/LauncherScroller;->fling(IIIIIIII)V

    .line 1925
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    .line 1927
    :goto_8
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onScrollInteractionEnd()V

    goto :goto_9

    :cond_18
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1a

    .line 1932
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    sub-int/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1933
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_19

    .line 1934
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    goto :goto_9

    .line 1936
    :cond_19
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->snapToDestination()V

    goto :goto_9

    :cond_1a
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1c

    .line 1942
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1943
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1b

    .line 1944
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    goto :goto_9

    .line 1946
    :cond_1b
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->snapToDestination()V

    goto :goto_9

    :cond_1c
    if-ne v0, v1, :cond_1d

    .line 1950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 1951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    .line 1955
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object p1

    .line 1956
    aget v0, p1, v3

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    .line 1957
    aget p1, p1, v2

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    .line 1958
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1961
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    float-to-int p1, p1

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1963
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->onDropToDelete()V

    goto :goto_9

    .line 1966
    :cond_1d
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mCancelTap:Z

    if-nez v0, :cond_1e

    .line 1967
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    .line 1972
    :cond_1e
    :goto_9
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1974
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->resetTouchState()V

    goto :goto_a

    .line 1731
    :pswitch_3
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1732
    invoke-direct {p0, v3}, Lcom/voxel/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1736
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionX:F

    .line 1737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mDownMotionY:F

    .line 1738
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mDownScrollX:F

    .line 1739
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/voxel/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1740
    aget v1, v0, v3

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    .line 1741
    aget v0, v0, v2

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    const/4 v0, 0x0

    .line 1742
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1743
    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mTotalMotionX:F

    .line 1744
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mActivePointerId:I

    .line 1746
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_21

    .line 1747
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1748
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageBeginMoving()V

    goto :goto_a

    .line 1985
    :cond_20
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1986
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->releaseVelocityTracker()V

    :cond_21
    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    .line 2032
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1639
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    .line 573
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsPageMoving:Z

    .line 580
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2659
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2670
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_3

    .line 2671
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->scrollLeft()V

    return v0

    .line 2664
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 2665
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->scrollRight()V

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 2316
    iput-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mCancelTap:Z

    .line 2317
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1114
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PageIndicator;->removeAllMarkers(Z)V

    .line 1117
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1092
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1093
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1107
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 1099
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/PagedView;->removeMarkerForView(I)V

    .line 1100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 2102
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2103
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2105
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1239
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexToPage(I)I

    move-result p1

    .line 1240
    iget p2, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1241
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1332
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1335
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 4

    .line 1040
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1042
    :goto_1
    iget-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 1043
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1044
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1046
    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1047
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v3, v2

    .line 1048
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1051
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    :cond_4
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 622
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 2293
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 2297
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .line 628
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v0, :cond_1

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->forceFinishScroller()V

    .line 636
    :cond_1
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 637
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 640
    :cond_2
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mUnboundedScrollX:I

    .line 642
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_4

    goto :goto_0

    :cond_3
    if-gez p1, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 643
    :goto_1
    iget-boolean v3, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_5

    if-gez p1, :cond_6

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_6

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 645
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 646
    iget-boolean p2, p0, Lcom/voxel/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_d

    .line 647
    iget-boolean p2, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_8

    .line 648
    iget p2, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    :cond_8
    int-to-float p2, p1

    .line 650
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    :cond_9
    if-eqz v3, :cond_c

    .line 654
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    :goto_5
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 655
    iget-boolean p2, p0, Lcom/voxel/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_d

    .line 656
    iget-boolean p2, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_b

    int-to-float p2, p1

    .line 657
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 659
    :cond_b
    iget p2, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 663
    :cond_c
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mOverScrollX:I

    .line 664
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_d
    :goto_6
    int-to-float p1, p1

    .line 667
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mTouchX:F

    .line 668
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mSmoothingTime:F

    .line 671
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 672
    iget p1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    iget p2, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, p1, p2}, Lcom/voxel/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object p1

    .line 673
    aget p2, p1, v2

    iput p2, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 674
    aget p1, p1, v1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    .line 675
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_e
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 524
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 531
    :cond_1
    iput-boolean v1, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 532
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    .line 533
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 534
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 535
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 302
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 303
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setDeleteDropTarget(Lcom/voxel/launcher3/RemoveDropTarget;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0

    .line 1690
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mAllowOverScroll:Z

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mMinScale:F

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mUseMinScale:Z

    .line 389
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->requestLayout()V

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 612
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 613
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 615
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZZ)V
    .locals 0

    if-eq p2, p3, :cond_1

    if-eqz p2, :cond_0

    .line 2577
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {p1}, Lcom/voxel/launcher3/RemoveDropTarget;->setHoverColor()V

    goto :goto_0

    .line 2579
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDeleteDropTarget:Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {p1}, Lcom/voxel/launcher3/RemoveDropTarget;->resetHoverColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPageInteractionListener(Lcom/voxel/launcher3/PagedView$PageInteractionListener;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mPageInteractionListener:Lcom/voxel/launcher3/PagedView$PageInteractionListener;

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .line 1035
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mPageSpacing:I

    .line 1036
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->requestLayout()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/voxel/launcher3/PagedView$PageSwitchListener;)V
    .locals 2

    .line 434
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mPageSwitchListener:Lcom/voxel/launcher3/PagedView$PageSwitchListener;

    .line 435
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mPageSwitchListener:Lcom/voxel/launcher3/PagedView$PageSwitchListener;

    if-eqz p1, :cond_0

    .line 436
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-interface {p1, v0, v1}, Lcom/voxel/launcher3/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method setRestorePage(I)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mRestorePage:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 394
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    const/4 p1, 0x1

    .line 395
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/voxel/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 397
    aget v1, v0, v1

    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionX:F

    .line 398
    aget p1, v0, p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mLastMotionY:F

    .line 399
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 0

    .line 1186
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected snapToDestination()V
    .locals 2

    .line 2161
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/PagedView;->snapToPage(II)V

    return-void
.end method

.method public snapToPage(I)V
    .locals 1

    .line 2219
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2227
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2245
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 2250
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2252
    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mNextPage:I

    .line 2253
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2254
    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    .line 2255
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 2256
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2259
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 2261
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->pageBeginMoving()V

    .line 2262
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/PagedView;->awakenScrollBars(I)Z

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 2266
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    move v5, p3

    goto :goto_0

    :cond_2
    move v5, p3

    .line 2269
    :goto_0
    iget-object p3, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p3}, Lcom/voxel/launcher3/LauncherScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_3

    .line 2270
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_3
    if-eqz p5, :cond_4

    .line 2274
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p1, p5}, Lcom/voxel/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 2276
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    iget-object p3, p0, Lcom/voxel/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Lcom/voxel/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2279
    :goto_1
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    iget v1, p0, Lcom/voxel/launcher3/PagedView;->mUnboundedScrollX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 2281
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_5

    .line 2285
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->computeScroll()V

    :cond_5
    const/4 p1, 0x1

    .line 2288
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView;->mForceScreenScrolled:Z

    .line 2289
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->invalidate()V

    return-void
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 2231
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/voxel/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 2236
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 2238
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    .line 2239
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mUnboundedScrollX:I

    sub-int v2, p1, v0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2241
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 3

    .line 2223
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/voxel/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 5

    .line 2185
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2186
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2188
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 2189
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v1, v2

    .line 2192
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/PagedView;->mMinFlingVelocity:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->isInOverScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2203
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    .line 2205
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v0, v2

    .line 2207
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2208
    iget v2, p0, Lcom/voxel/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 2213
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 2215
    invoke-virtual {p0, p1, v1, p2}, Lcom/voxel/launcher3/PagedView;->snapToPage(III)V

    return-void

    .line 2195
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageSnapDuration()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/PagedView;->snapToPage(II)V

    return-void
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 4

    .line 2407
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2409
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v1, v0, v1

    .line 2412
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v3

    .line 2413
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 2414
    iput-boolean v3, p0, Lcom/voxel/launcher3/PagedView;->mReorderingStarted:Z

    .line 2417
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v0, v1

    if-gt v2, p1, :cond_1

    aget v0, v0, v3

    if-gt p1, v0, :cond_1

    .line 2420
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2421
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f933333    # 1.15f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2422
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/voxel/launcher3/PagedView;->mDragViewBaselineLeft:F

    .line 2423
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PagedView;->snapToPage(I)V

    .line 2424
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->disableFreeScroll()V

    .line 2425
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->onStartReordering()V

    return v3

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .line 478
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 479
    iget v0, p0, Lcom/voxel/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/PagedView;->scrollTo(II)V

    .line 482
    iget-object v1, p0, Lcom/voxel/launcher3/PagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/LauncherScroller;->setFinalX(I)V

    .line 483
    invoke-direct {p0}, Lcom/voxel/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method updateFreescrollBounds()V
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1660
    iget-boolean v0, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1662
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1665
    iget-object v0, p0, Lcom/voxel/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    :goto_0
    return-void
.end method

.method updateMaxScrollX()V
    .locals 3

    .line 1025
    invoke-virtual {p0}, Lcom/voxel/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1027
    iget-boolean v2, p0, Lcom/voxel/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 1028
    :goto_0
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_1

    .line 1030
    :cond_1
    iput v1, p0, Lcom/voxel/launcher3/PagedView;->mMaxScrollX:I

    :goto_1
    return-void
.end method
