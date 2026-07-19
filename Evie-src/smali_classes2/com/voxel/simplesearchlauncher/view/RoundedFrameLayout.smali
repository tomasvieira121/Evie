.class public Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundedFrameLayout.java"


# instance fields
.field mClipOutlines:Z

.field mNCompatCheck:Z

.field mRadius:[F

.field mRevealPath:Landroid/graphics/Path;

.field pathRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRevealPath:Landroid/graphics/Path;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->pathRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mNCompatCheck:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mClipOutlines:Z

    const/16 v0, 0x8

    .line 27
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 52
    sget-object v0, Lcom/evie/common/R$styleable;->RoundedFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_radius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    int-to-float v3, p2

    .line 55
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    sget p2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_radiusTopLeft:I

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    aget v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x1

    aput p2, v2, v1

    aput p2, v2, v0

    .line 59
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x3

    sget v2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_radiusTopRight:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    aput v2, p2, v4

    .line 60
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x5

    sget v2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_radiusBottomRight:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    aput v2, p2, v4

    .line 61
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x7

    sget v2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_radiusBottomLeft:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    aput v2, p2, v4

    .line 63
    sget p2, Lcom/evie/common/R$styleable;->RoundedFrameLayout_vxl_nCompatCheck:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mNCompatCheck:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 98
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mClipOutlines:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mNCompatCheck:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->pathRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 105
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->pathRect:Landroid/graphics/RectF;

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 107
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 108
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRevealPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->pathRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 110
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2

    .line 99
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getCornerRadius()[F
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBottomLeftCornerRadius(F)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x7

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 88
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public setBottomRightCornerRadius(F)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public setClipOutlines(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mClipOutlines:Z

    return-void
.end method

.method public setTopLeftCornerRadius(F)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public setTopRightCornerRadius(F)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->mRadius:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->invalidate()V

    return-void
.end method
