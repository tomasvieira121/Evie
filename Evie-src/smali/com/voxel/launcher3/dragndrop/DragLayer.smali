.class public Lcom/voxel/launcher3/dragndrop/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;,
        Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mChildCountOnLastUpdate:I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/voxel/launcher3/AppWidgetResizeFrame;

.field private mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private mOverlayView:Landroid/view/View;

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

.field private mShowPageHints:Z

.field private mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

.field private mWindowInsets:Landroid/view/WindowInsets;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 65
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 77
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 78
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 79
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 81
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 83
    iput-boolean p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 91
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mWindowInsets:Landroid/view/WindowInsets;

    .line 92
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInsets:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 116
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080145

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080147

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080146

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080148

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/dragndrop/DragLayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/dragndrop/DragLayer;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/dragndrop/DragLayer;)Lcom/voxel/launcher3/dragndrop/DragController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-object p0
.end method

.method private drawPageHints(Landroid/graphics/Canvas;)V
    .locals 8

    .line 937
    iget-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mShowPageHints:Z

    if-eqz v0, :cond_5

    .line 938
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    .line 939
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v1

    .line 940
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 941
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 944
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 945
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 946
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 947
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, -0x1

    .line 948
    :goto_0
    invoke-virtual {v0, v5}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout;

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 949
    :goto_1
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    if-eqz v5, :cond_3

    .line 951
    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout;->isDragTarget()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 952
    iget-boolean v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInScrollArea:Z

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLeftHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    const/4 v4, 0x0

    .line 954
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 955
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 954
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 956
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 958
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->isDragTarget()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 959
    iget-boolean v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInScrollArea:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mRightHoverDrawableActive:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 961
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v1, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method private fadeOutDragView()V
    .locals 3

    .line 819
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 820
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 821
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 822
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 823
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$LVtiY9rMhwTUprYLTopEFA9Ys6M;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$LVtiY9rMhwTUprYLTopEFA9Ys6M;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 829
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/voxel/launcher3/dragndrop/DragLayer$2;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer$2;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 838
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 5

    .line 230
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 234
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/AppWidgetResizeFrame;

    .line 235
    invoke-virtual {v2, p2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 236
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    iput-object v2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    .line 239
    iput v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mXDown:I

    .line 240
    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mYDown:I

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isEventOverFolder(Lcom/voxel/launcher3/Folder;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 226
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private isLayoutRtl()Z
    .locals 2

    .line 928
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$animateView$1(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    .line 723
    invoke-virtual/range {p13 .. p13}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 724
    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v6

    .line 725
    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v7

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    .line 728
    :cond_0
    invoke-interface {v1, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :goto_0
    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    .line 730
    :cond_1
    invoke-interface {v2, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    :goto_1
    mul-float v8, p4, p5

    mul-float v9, p6, p5

    mul-float v10, p7, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v5

    mul-float v13, v8, v12

    add-float/2addr v10, v13

    mul-float v5, v5, p8

    mul-float v12, v12, v9

    add-float/2addr v5, v12

    mul-float v12, p9, v1

    sub-float v1, v11, v1

    mul-float v1, v1, p10

    add-float/2addr v12, v1

    .line 738
    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v8, v11

    int-to-float v6, v6

    mul-float v8, v8, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v8, v6

    add-float/2addr v1, v8

    .line 739
    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v9, v11

    int-to-float v7, v7

    mul-float v9, v9, v7

    div-float/2addr v9, v6

    add-float/2addr v3, v9

    .line 741
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    mul-float v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 742
    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 744
    iget-object v3, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    iget v4, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    iget-object v6, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 745
    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 747
    :goto_2
    iget-object v4, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v4}, Lcom/voxel/launcher3/dragndrop/DragView;->getScrollX()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 748
    iget-object v3, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/voxel/launcher3/dragndrop/DragView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    .line 750
    iget-object v3, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 751
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 752
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v10}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 753
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 754
    iget-object v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v12}, Lcom/voxel/launcher3/dragndrop/DragView;->setAlpha(F)V

    return-void
.end method

.method static synthetic lambda$animateViewIntoPosition$0(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 652
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$fadeOutDragView$2(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 824
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 827
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setAlpha(F)V

    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 328
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f12014b

    goto :goto_0

    :cond_0
    const p1, 0x7f12014a

    :goto_0
    const/16 v1, 0x8

    .line 330
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 333
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method private setInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 205
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Lcom/voxel/launcher3/Insettable;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 211
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 212
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 213
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 190
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lcom/voxel/launcher3/Insettable;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 195
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 197
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 198
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateChildIndices()V
    .locals 3

    const/4 v0, -0x1

    .line 868
    iput v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 869
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 871
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/voxel/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    .line 872
    iput v1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_1
    iput v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public addResizeFrame(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V
    .locals 1

    .line 561
    new-instance p1, Lcom/voxel/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2, p3, p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragLayer;)V

    .line 564
    new-instance p2, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    const/4 p3, 0x1

    .line 565
    iput-boolean p3, p2, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 567
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 570
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz p2, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInsets:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 768
    :cond_1
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 769
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragView;->cancelAnimation()V

    if-eqz p7, :cond_2

    .line 773
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 775
    :cond_2
    iput-object p7, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 778
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 779
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 780
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 781
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 782
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 783
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/voxel/launcher3/dragndrop/DragLayer$1;

    invoke-direct {p2, p0, p5, p6}, Lcom/voxel/launcher3/dragndrop/DragLayer$1;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 800
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 699
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    .line 700
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 699
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    .line 702
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p9, :cond_1

    const v3, 0x7f0b001d

    .line 706
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    int-to-float v3, v3

    .line 708
    iget-object v4, v14, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v3, v3, v0

    float-to-int v3, v3

    :cond_0
    const v0, 0x7f0b001e

    .line 710
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    const/4 v0, 0x0

    if-eqz p11, :cond_3

    if-nez p10, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v0

    goto :goto_2

    .line 716
    :cond_3
    :goto_1
    iget-object v0, v14, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    .line 720
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getAlpha()F

    move-result v11

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v6

    .line 722
    new-instance v17, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$vCIBl0H69qXpHIy1-zD7UFR8KHY;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v17

    move/from16 p5, v15

    move-object/from16 p6, v16

    move-object/from16 p7, p12

    move/from16 p8, p13

    move-object/from16 p9, p14

    .line 756
    invoke-virtual/range {p2 .. p9}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 663
    new-instance v4, Landroid/graphics/Rect;

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 665
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    .line 666
    invoke-virtual/range {v0 .. v14}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 598
    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 600
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v3, p1

    .line 601
    invoke-virtual {v15, v3, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    .line 603
    new-array v5, v4, [I

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 605
    iget v7, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v6

    mul-float v8, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    float-to-int v8, v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v5, v8

    .line 606
    iget v2, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v10

    div-float/2addr v7, v11

    float-to-int v7, v7

    add-int/2addr v2, v7

    const/4 v7, 0x1

    aput v2, v5, v7

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v15, v2, v5}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v2

    mul-float v2, v2, v6

    .line 614
    aget v6, v5, v8

    .line 615
    aget v5, v5, v7

    .line 617
    instance-of v7, v0, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 618
    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getIntrinsicIconScaleFactor()F

    move-result v8

    div-float v8, v2, v8

    .line 626
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v9, v8

    mul-float v7, v7, v9

    div-float/2addr v7, v11

    sub-float/2addr v5, v7

    float-to-int v5, v5

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v5, v7

    .line 632
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v2, v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v7, v2

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    move v4, v6

    move v10, v8

    goto :goto_0

    .line 633
    :cond_1
    instance-of v7, v0, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v7, :cond_2

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v7, v2, v11

    div-float/2addr v7, v11

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v9, v2

    .line 637
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v9, v9, v7

    div-float/2addr v9, v11

    sub-float/2addr v5, v9

    float-to-int v5, v5

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    move v10, v2

    move v4, v6

    goto :goto_0

    .line 641
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getHeight()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/2addr v7, v4

    sub-int/2addr v5, v7

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v7

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    .line 642
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    move v10, v2

    move v4, v6

    .line 646
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 647
    iget v6, v1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x4

    .line 648
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    new-instance v11, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v13, p3

    move-object/from16 v14, p5

    .line 655
    invoke-virtual/range {v0 .. v14}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 591
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    .line 580
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    .line 581
    invoke-virtual {v15, v2, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 582
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 583
    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    .line 585
    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    move-object v15, v0

    invoke-virtual/range {v1 .. v15}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 858
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 859
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mOverlayView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    return-void
.end method

.method public clearAllResizeFrames()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/AppWidgetResizeFrame;

    .line 541
    invoke-virtual {v1}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->commitResize()V

    .line 542
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimatedView()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 808
    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/voxel/launcher3/dragndrop/DragView;)V

    :cond_1
    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 811
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 933
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 969
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 972
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 973
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->drawPageHints(Landroid/graphics/Canvas;)V

    :cond_0
    return p3
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDropView:Lcom/voxel/launcher3/dragndrop/DragView;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 880
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 889
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    if-ge p2, v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 0

    .line 448
    invoke-static {p1, p0, p2, p3}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 414
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 415
    aput v1, v0, v2

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 418
    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v1, v3, v1

    int-to-float v1, v1

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v2, v3, v2

    int-to-float v2, v2

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 418
    invoke-virtual {p2, v4, v5, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    const/4 v0, 0x0

    .line 425
    aput v0, p2, v0

    const/4 v1, 0x1

    .line 426
    aput v0, p2, v1

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    return p1
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x2

    .line 460
    new-array v0, v0, [I

    .line 461
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 462
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 463
    aget v4, v0, v3

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 466
    aget v1, v0, v1

    .line 467
    aget v0, v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v4

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hidePageHints()V
    .locals 1

    const/4 v0, 0x0

    .line 920
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mShowPageHints:Z

    .line 921
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .locals 0

    .line 456
    invoke-static {p1, p0, p2}, Lcom/voxel/launcher3/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    invoke-direct {p0, v2, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mWindowInsets:Landroid/view/WindowInsets;

    .line 146
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 843
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mOverlayView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    return-void
.end method

.method onEnterScrollArea()V
    .locals 1

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInScrollArea:Z

    .line 906
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method

.method onExitScrollArea()V
    .locals 1

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mInScrollArea:Z

    .line 911
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 296
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/voxel/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 303
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 304
    iput-boolean v4, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    .line 307
    :cond_3
    iput-boolean v1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 310
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/voxel/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 311
    iget-boolean v2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v2, :cond_5

    .line 312
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 313
    iput-boolean v4, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    return v4

    :cond_5
    if-nez p1, :cond_6

    return v4

    .line 318
    :cond_6
    iput-boolean v1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0, p1, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    :cond_2
    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAllResizeFrames()Z

    .line 282
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 524
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 525
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 527
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 528
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 529
    instance-of p5, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 530
    check-cast p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 531
    iget-boolean p5, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 532
    iget p5, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    .line 343
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 349
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0, p1, v4}, Lcom/voxel/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_0
    if-eq v0, v5, :cond_1

    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 383
    :cond_1
    iget-object v6, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v6, :cond_2

    .line 384
    invoke-interface {v6}, Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 386
    :cond_2
    iput-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 389
    :cond_3
    iget-object v6, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    if-eqz v6, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {v6, v1, v2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {v6, v1, v2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 398
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->onTouchUp()V

    .line 399
    iput-object v3, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/voxel/launcher3/AppWidgetResizeFrame;

    :goto_0
    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    return v5

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchCompleteListener(Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    return-void
.end method

.method public setup(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 129
    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-void
.end method

.method public showOverlayView(Landroid/view/View;)V
    .locals 2

    .line 175
    new-instance v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 176
    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mOverlayView:Landroid/view/View;

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object p1, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public showPageHints()V
    .locals 1

    const/4 v0, 0x1

    .line 915
    iput-boolean v0, p0, Lcom/voxel/launcher3/dragndrop/DragLayer;->mShowPageHints:Z

    .line 916
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->invalidate()V

    return-void
.end method
