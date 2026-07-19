.class Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "RemoveDropTarget.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/RemoveDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingAlongVectorAnimatorUpdateListener"
.end annotation


# instance fields
.field private final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field private mFriction:F

.field private mFrom:Landroid/graphics/Rect;

.field private mHasOffsetForScale:Z

.field private mPrevTime:J

.field private mVelocity:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 349
    iput-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    .line 350
    iput-object p2, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    .line 351
    iput-object p3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    .line 352
    iput-wide p4, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 353
    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p6

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 358
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/dragndrop/DragView;

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 360
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 362
    iget-boolean v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mHasOffsetForScale:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 363
    iput-boolean v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mHasOffsetForScale:Z

    .line 364
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v3

    sub-float/2addr v3, v4

    .line 365
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 366
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v3, v3, v7

    div-float/2addr v3, v6

    .line 368
    iget-object v6, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    float-to-int v5, v7

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 369
    iget-object v5, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-wide v7, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v7, v1, v7

    long-to-float v7, v7

    mul-float v6, v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 373
    iget-object v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-wide v8, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v8, v1, v8

    long-to-float v8, v8

    mul-float v6, v6, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 375
    iget-object v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 376
    iget-object v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 377
    iget-object v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v4, p1

    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 379
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float v0, v0, v3

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 380
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float v0, v0, v3

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 381
    iput-wide v1, p0, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    return-void
.end method
