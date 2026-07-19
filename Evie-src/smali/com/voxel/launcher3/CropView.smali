.class public Lcom/voxel/launcher3/CropView;
.super Lcom/android/photos/views/TiledImageView;
.source "CropView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/CropView$TouchCallback;
    }
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mFirstX:F

.field private mFirstY:F

.field mInverseRotateMatrix:Landroid/graphics/Matrix;

.field private mLastX:F

.field private mLastY:F

.field private mMinScale:F

.field mRotateMatrix:Landroid/graphics/Matrix;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTempAdjustment:[F

.field private mTempCoef:[F

.field private mTempEdges:Landroid/graphics/RectF;

.field private mTempImageDims:[F

.field private mTempPoint:[F

.field private mTempRendererCenter:[F

.field mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

.field private mTouchDownTime:J

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/voxel/launcher3/CropView;->mTouchEnabled:Z

    .line 44
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/CropView;->mTempEdges:Landroid/graphics/RectF;

    const/4 p2, 0x2

    .line 45
    new-array v0, p2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempPoint:[F

    .line 46
    new-array v0, p2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempCoef:[F

    .line 47
    new-array v0, p2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempAdjustment:[F

    .line 48
    new-array v0, p2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempImageDims:[F

    .line 49
    new-array p2, p2, [F

    fill-array-data p2, :array_4

    iput-object p2, p0, Lcom/voxel/launcher3/CropView;->mTempRendererCenter:[F

    .line 66
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/voxel/launcher3/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 67
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getEdgesHelper(Landroid/graphics/RectF;)V
    .locals 12

    .line 84
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 86
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->getImageDims()[F

    move-result-object v2

    const/4 v3, 0x0

    .line 87
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 88
    aget v2, v2, v5

    .line 90
    iget-object v6, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v6, v6, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v6}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 91
    iget-object v8, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v8, v8, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v8}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 93
    iget-object v9, p0, Lcom/voxel/launcher3/CropView;->mTempRendererCenter:[F

    .line 94
    iget v10, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    sub-float/2addr v10, v6

    aput v10, v9, v3

    .line 95
    iget v6, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    sub-float/2addr v6, v8

    aput v6, v9, v5

    .line 96
    iget-object v6, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 97
    aget v6, v9, v3

    div-float v8, v4, v7

    add-float/2addr v6, v8

    aput v6, v9, v3

    .line 98
    aget v6, v9, v5

    div-float v10, v2, v7

    add-float/2addr v6, v10

    aput v6, v9, v5

    .line 100
    iget-object v6, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float v11, v0, v7

    .line 101
    aget v3, v9, v3

    sub-float v3, v11, v3

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    mul-float v3, v3, v6

    add-float/2addr v3, v11

    div-float v0, v1, v7

    .line 103
    aget v4, v9, v5

    sub-float v4, v0, v4

    sub-float/2addr v2, v1

    div-float/2addr v2, v7

    add-float/2addr v4, v2

    mul-float v4, v4, v6

    add-float/2addr v4, v0

    mul-float v8, v8, v6

    sub-float v0, v3, v8

    add-float/2addr v3, v8

    mul-float v10, v10, v6

    sub-float v1, v4, v10

    add-float/2addr v4, v10

    .line 110
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 111
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 112
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 113
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private getImageDims()[F
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    .line 73
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    .line 74
    iget-object v2, p0, Lcom/voxel/launcher3/CropView;->mTempImageDims:[F

    const/4 v3, 0x0

    .line 75
    aput v0, v2, v3

    const/4 v0, 0x1

    .line 76
    aput v1, v2, v0

    .line 77
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 78
    aget v1, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v2, v3

    .line 79
    aget v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v2, v0

    return-object v2
.end method

.method private updateCenter()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 219
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    return-void
.end method

.method private updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->getImageDims()[F

    move-result-object p3

    const/4 v1, 0x0

    .line 172
    aget v1, p3, v1

    const/4 v2, 0x1

    .line 173
    aget p3, p3, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, p3

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/CropView;->mMinScale:F

    .line 175
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p0, Lcom/voxel/launcher3/CropView;->mMinScale:F

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget p3, p3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 176
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 178
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 223
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    iget v2, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 122
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 123
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 125
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    div-float/2addr v2, v1

    .line 126
    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    div-float/2addr v0, v1

    .line 127
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    .line 128
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v4, v0

    .line 130
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getImageRotation()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    return v0
.end method

.method public getSourceDimensions()Landroid/graphics/Point;
    .locals 3

    .line 134
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public moveToLeft()V
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/voxel/launcher3/CropView$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/CropView$1;-><init>(Lcom/voxel/launcher3/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 211
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 212
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 213
    iget v2, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    float-to-double v2, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    .line 214
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->updateCenter()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float v1, v1, p1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 191
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, p0, Lcom/voxel/launcher3/CropView;->mMinScale:F

    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 192
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 149
    iget-object p3, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p3, p3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/CropView;->updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 242
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    if-ne v4, v7, :cond_2

    goto :goto_3

    .line 246
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v8, v10

    .line 247
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v8, v3

    div-float/2addr v9, v3

    if-nez v0, :cond_5

    .line 254
    iput v8, p0, Lcom/voxel/launcher3/CropView;->mFirstX:F

    .line 255
    iput v9, p0, Lcom/voxel/launcher3/CropView;->mFirstY:F

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/voxel/launcher3/CropView;->mTouchDownTime:J

    .line 257
    iget-object v3, p0, Lcom/voxel/launcher3/CropView;->mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

    if-eqz v3, :cond_7

    .line 258
    invoke-interface {v3}, Lcom/voxel/launcher3/CropView$TouchCallback;->onTouchDown()V

    goto :goto_4

    :cond_5
    if-ne v0, v2, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 263
    iget v4, p0, Lcom/voxel/launcher3/CropView;->mFirstX:F

    sub-float v5, v4, v8

    sub-float/2addr v4, v8

    mul-float v5, v5, v4

    iget v4, p0, Lcom/voxel/launcher3/CropView;->mFirstY:F

    sub-float v7, v4, v9

    sub-float/2addr v4, v9

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    .line 264
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int v4, v4, v3

    int-to-float v3, v4

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 266
    iget-object v4, p0, Lcom/voxel/launcher3/CropView;->mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

    if-eqz v4, :cond_7

    cmpg-float v3, v5, v3

    if-gez v3, :cond_6

    .line 268
    iget-wide v3, p0, Lcom/voxel/launcher3/CropView;->mTouchDownTime:J

    .line 269
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v3, v12

    cmp-long v5, v10, v3

    if-gez v5, :cond_6

    .line 270
    iget-object v3, p0, Lcom/voxel/launcher3/CropView;->mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

    invoke-interface {v3}, Lcom/voxel/launcher3/CropView$TouchCallback;->onTap()V

    .line 272
    :cond_6
    iget-object v3, p0, Lcom/voxel/launcher3/CropView;->mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

    invoke-interface {v3}, Lcom/voxel/launcher3/CropView$TouchCallback;->onTouchUp()V

    .line 276
    :cond_7
    :goto_4
    iget-boolean v3, p0, Lcom/voxel/launcher3/CropView;->mTouchEnabled:Z

    if-nez v3, :cond_8

    return v2

    .line 280
    :cond_8
    iget-object v3, p0, Lcom/voxel/launcher3/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 281
    :try_start_0
    iget-object v4, p0, Lcom/voxel/launcher3/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_5

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mTempPoint:[F

    .line 285
    iget v0, p0, Lcom/voxel/launcher3/CropView;->mLastX:F

    sub-float/2addr v0, v8

    iget-object v4, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v0, v4

    aput v0, p1, v1

    .line 286
    iget v0, p0, Lcom/voxel/launcher3/CropView;->mLastY:F

    sub-float/2addr v0, v9

    iget-object v4, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v0, v4

    aput v0, p1, v2

    .line 287
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 288
    iget v0, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    aget v4, p1, v1

    add-float/2addr v0, v4

    iput v0, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    .line 289
    iget v0, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    aget p1, p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    .line 290
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->updateCenter()V

    .line 291
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->invalidate()V

    .line 294
    :goto_5
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eqz p1, :cond_10

    .line 297
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 298
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 299
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 301
    iget-object v4, p0, Lcom/voxel/launcher3/CropView;->mTempCoef:[F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 302
    aput v5, v4, v1

    .line 303
    aput v5, v4, v2

    .line 304
    iget-object v5, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 305
    iget-object v5, p0, Lcom/voxel/launcher3/CropView;->mTempAdjustment:[F

    .line 306
    iget-object v7, p0, Lcom/voxel/launcher3/CropView;->mTempAdjustment:[F

    aput v6, v7, v1

    .line 307
    iget-object v7, p0, Lcom/voxel/launcher3/CropView;->mTempAdjustment:[F

    aput v6, v7, v2

    .line 308
    iget v7, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_a

    .line 309
    iget v7, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v7, v0

    aput v7, v5, v1

    goto :goto_6

    .line 310
    :cond_a
    iget v7, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_b

    .line 311
    iget v7, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v7, v10

    div-float/2addr v7, v0

    aput v7, v5, v1

    .line 313
    :cond_b
    :goto_6
    iget v7, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_c

    .line 314
    iget p1, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v0

    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float p1, v10

    aput p1, v5, v2

    goto :goto_7

    .line 315
    :cond_c
    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    .line 316
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr p1, v7

    div-float/2addr p1, v0

    aput p1, v5, v2

    :cond_d
    :goto_7
    const/4 p1, 0x0

    :goto_8
    if-gt p1, v2, :cond_f

    .line 319
    aget v0, v4, p1

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    aget v0, v5, p1

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v0, v10

    aput v0, v5, p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 322
    :cond_f
    iget-object p1, p0, Lcom/voxel/launcher3/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 323
    iget p1, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    aget v0, v5, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    .line 324
    iget p1, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    aget v0, v5, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    .line 325
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->updateCenter()V

    .line 327
    :cond_10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iput v8, p0, Lcom/voxel/launcher3/CropView;->mLastX:F

    .line 330
    iput v9, p0, Lcom/voxel/launcher3/CropView;->mLastY:F

    return v2

    :catchall_0
    move-exception p1

    .line 327
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    return-void
.end method

.method public setScaleAndCenter(FFF)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput p1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 155
    iput p2, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    .line 156
    iput p3, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    .line 157
    invoke-direct {p0}, Lcom/voxel/launcher3/CropView;->updateCenter()V

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 2

    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/photos/views/TiledImageView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 139
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    int-to-float p2, p2

    iput p2, p0, Lcom/voxel/launcher3/CropView;->mCenterX:F

    .line 140
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    int-to-float p2, p2

    iput p2, p0, Lcom/voxel/launcher3/CropView;->mCenterY:F

    .line 141
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 142
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 143
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object p2, p0, Lcom/voxel/launcher3/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/voxel/launcher3/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 145
    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/voxel/launcher3/CropView;->updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V

    return-void
.end method

.method public setTouchCallback(Lcom/voxel/launcher3/CropView$TouchCallback;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/voxel/launcher3/CropView;->mTouchCallback:Lcom/voxel/launcher3/CropView$TouchCallback;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/voxel/launcher3/CropView;->mTouchEnabled:Z

    return-void
.end method
