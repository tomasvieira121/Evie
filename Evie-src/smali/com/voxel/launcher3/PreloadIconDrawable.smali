.class public Lcom/voxel/launcher3/PreloadIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreloadIconDrawable.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimationProgress:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorColor:I

.field private final mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorRectDirty:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRingOutset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 46
    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mProgress:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    iput v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    .line 52
    iput-object p1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PreloadIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/PreloadIconDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PreloadIconDrawable;->onLevelChange(I)Z

    return-void
.end method

.method private getIndicatorColor()I
    .locals 4

    .line 234
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    if-eqz v0, :cond_0

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    const v2, -0xff6978

    if-nez v1, :cond_1

    .line 238
    iput v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 239
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    return v0

    .line 241
    :cond_1
    check-cast v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    .line 242
    invoke-virtual {v0}, Lcom/voxel/launcher3/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x14

    .line 241
    invoke-static {v0, v1}, Lcom/voxel/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    const/4 v0, 0x3

    .line 245
    new-array v0, v0, [F

    .line 246
    iget v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 247
    aget v1, v0, v1

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 248
    iput v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 249
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    return v0

    :cond_2
    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x2

    .line 251
    aget v3, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v2

    .line 252
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    .line 253
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorColor:I

    return v0
.end method

.method private initIndicatorRect()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 100
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 102
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget-object v5, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sget-object v6, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sget-object v7, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float v7, v7, v2

    sub-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sget-object v2, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 109
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .line 65
    sget-object v0, Lis/shortcut/R$styleable;->PreloadIconDrawable:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 68
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x2

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mRingOutset:I

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PreloadIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 116
    sget-object v1, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    if-eqz v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->initIndicatorRect()V

    .line 125
    :cond_1
    iget v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    sub-float/2addr v4, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    iget v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    mul-float v1, v1, v3

    add-float/2addr v3, v1

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 137
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    iget v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mProgress:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    .line 140
    iget-object v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    if-lez v1, :cond_5

    .line 142
    iget-object v5, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    int-to-float v1, v1

    const v2, 0x40666666    # 3.6f

    mul-float v7, v1, v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 148
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 150
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutset()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mRingOutset:I

    return v0
.end method

.method public hasNotCompleted()Z
    .locals 2

    .line 220
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/PreloadIconDrawable;->setAnimationProgress(F)V

    const-string v0, "animationProgress"

    const/4 v1, 0x2

    .line 203
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 205
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    sget-object p1, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mRingOutset:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 81
    iget-object p1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/voxel/launcher3/PreloadIconDrawable;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIndicatorRectDirty:Z

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    .line 171
    iput p1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mProgress:I

    .line 174
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 178
    iput v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    if-lez p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 185
    check-cast v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->invalidateSelf()V

    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    .line 209
    iget v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 210
    iput p1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mAnimationProgress:F

    .line 211
    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
