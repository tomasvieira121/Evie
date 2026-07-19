.class public Lme/relex/photodraweeview/Attacher;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lme/relex/photodraweeview/OnScaleDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/photodraweeview/Attacher$FlingRunnable;,
        Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;
    }
.end annotation


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private mDraweeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mImageInfoHeight:I

.field private mImageInfoWidth:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOrientation:I

.field private mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

.field private mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

.field private mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

.field private mScrollEdgeX:I

.field private mScrollEdgeY:I

.field private mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

.field private mZoomDuration:J

.field private final mZoomInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    const/16 v1, 0x9

    .line 41
    new-array v1, v1, [F

    iput-object v1, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 43
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lme/relex/photodraweeview/Attacher;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    const/high16 v1, 0x3fe00000    # 1.75f

    .line 46
    iput v1, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 47
    iput v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    const-wide/16 v1, 0xc8

    .line 48
    iput-wide v1, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    .line 53
    iput-boolean v0, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    .line 56
    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDraweeView:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 71
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/DraweeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    new-instance v0, Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/relex/photodraweeview/ScaleDragDetector;-><init>(Landroid/content/Context;Lme/relex/photodraweeview/OnScaleDragGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    .line 73
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lme/relex/photodraweeview/Attacher$1;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/Attacher$1;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 82
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lme/relex/photodraweeview/Attacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/Attacher;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lme/relex/photodraweeview/Attacher;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lme/relex/photodraweeview/Attacher;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 25
    iget-object p0, p0, Lme/relex/photodraweeview/Attacher;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lme/relex/photodraweeview/Attacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 25
    iget-object p0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private cancelFling()V
    .locals 1

    .line 540
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkMinScale()V
    .locals 9

    .line 328
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v1

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 334
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 336
    new-instance v8, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v4

    iget v5, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 337
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;-><init>(Lme/relex/photodraweeview/Attacher;FFFF)V

    .line 336
    invoke-virtual {v0, v8}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static checkZoomLevels(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MidZoom has to be less than MaxZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MinZoom has to be less than MidZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .line 301
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    int-to-float v2, v2

    iget v3, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 306
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getActualImageBounds(Landroid/graphics/RectF;)V

    .line 307
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMatrixValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 232
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method private getViewHeight()I
    .locals 3

    .line 222
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHeight()I

    move-result v1

    .line 225
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 226
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getViewWidth()I
    .locals 3

    .line 209
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 215
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 550
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private resetMatrix()V
    .locals 1

    .line 319
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 320
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    .line 321
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix()V
    .locals 2

    .line 312
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    if-ne v0, v1, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public checkMatrixAndInvalidate()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    :cond_1
    return-void
.end method

.method public checkMatrixBounds()Z
    .locals 11

    .line 259
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 265
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 268
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpg-float v10, v2, v4

    if-gtz v10, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    .line 271
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    .line 272
    iput v6, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_0

    .line 273
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_2

    .line 274
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    .line 275
    iput v1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_0

    .line 276
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 277
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v2

    .line 278
    iput v8, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_0

    .line 280
    :cond_3
    iput v5, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    const/4 v2, 0x0

    .line 282
    :goto_0
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v10, v3, v4

    if-gtz v10, :cond_4

    sub-float/2addr v4, v3

    div-float/2addr v4, v7

    .line 284
    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v4, v0

    .line 285
    iput v6, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_1

    .line 286
    :cond_4
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_5

    .line 287
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v9, v0

    .line 288
    iput v1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_1

    .line 289
    :cond_5
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 290
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v9, v4, v0

    .line 291
    iput v8, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_1

    .line 293
    :cond_6
    iput v5, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    .line 296
    :goto_1
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    .line 242
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 237
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDraweeView()Lcom/facebook/drawee/view/DraweeView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDraweeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeView;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 106
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 102
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 98
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;
    .locals 1

    .line 186
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;
    .locals 1

    .line 190
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .line 125
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1}, Lme/relex/photodraweeview/Attacher;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 127
    invoke-direct {p0, v1, v4}, Lme/relex/photodraweeview/Attacher;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    .line 126
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 555
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->cancelFling()V

    return-void
.end method

.method public onDrag(FF)V
    .locals 7

    .line 360
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 362
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v1}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_7

    .line 363
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 364
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    .line 366
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-boolean v1, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    .line 371
    invoke-virtual {v1}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    if-nez v1, :cond_6

    .line 373
    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v1, :cond_3

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    if-eq v1, v6, :cond_2

    if-nez v1, :cond_1

    cmpl-float v1, p1, v4

    if-gez v1, :cond_2

    :cond_1
    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_3

    .line 375
    :cond_2
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 376
    :cond_3
    iget p1, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    if-ne p1, v2, :cond_7

    iget p1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    if-eq p1, v6, :cond_5

    if-nez p1, :cond_4

    cmpl-float p1, p2, v4

    if-gez p1, :cond_5

    :cond_4
    iget p1, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v3

    if-gtz p1, :cond_7

    .line 378
    :cond_5
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 381
    :cond_6
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    new-instance p2, Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lme/relex/photodraweeview/Attacher$FlingRunnable;-><init>(Lme/relex/photodraweeview/Attacher;Landroid/content/Context;)V

    iput-object p2, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    .line 393
    iget-object p2, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewHeight()I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p2, v0, v1, p3, p4}, Lme/relex/photodraweeview/Attacher$FlingRunnable;->fling(IIII)V

    .line 395
    iget-object p2, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 345
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v0, p1, p2, p3}, Lme/relex/photodraweeview/OnScaleChangeListener;->onScaleChange(FFF)V

    .line 349
    :cond_1
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 350
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    :cond_2
    return-void
.end method

.method public onScaleEnd()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->checkMinScale()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 399
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 404
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 406
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->cancelFling()V

    goto :goto_0

    .line 411
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 413
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 419
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {p1}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result p1

    .line 420
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v0}, Lme/relex/photodraweeview/ScaleDragDetector;->isDragging()Z

    move-result v0

    .line 422
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v1, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez p1, :cond_3

    .line 424
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {p1}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 425
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v0}, Lme/relex/photodraweeview/ScaleDragDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 426
    :cond_5
    iput-boolean v2, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    .line 428
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 110
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 111
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 115
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 116
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 120
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 121
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/OnScaleChangeListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 157
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/Attacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 8

    .line 142
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 149
    new-instance p4, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;-><init>(Lme/relex/photodraweeview/Attacher;FFFF)V

    invoke-virtual {v0, p4}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object p4, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 152
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setScale(FZ)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, p1, v1, v0, p2}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0xc8

    .line 162
    :cond_0
    iput-wide p1, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    return-void
.end method

.method public update(II)V
    .locals 0

    .line 194
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    .line 195
    iput p2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    .line 196
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->updateBaseMatrix()V

    return-void
.end method
