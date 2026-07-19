.class public Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;
.super Landroid/widget/ImageView;
.source "CenterCropOffsetImageView.java"


# instance fields
.field private mHaveFrame:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOffsetX:F

.field private mOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetX:F

    .line 20
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetY:F

    .line 21
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 31
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->init()V

    return-void
.end method

.method private configureMatrix()V
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mHaveFrame:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, v1, v3

    mul-int v5, v2, v0

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v2

    int-to-float v1, v1

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    int-to-float v2, v3

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float v0, v2, v0

    move v6, v0

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetX:F

    mul-float v0, v0, v2

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetY:F

    mul-float v6, v6, v2

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private init()V
    .locals 1

    .line 46
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected setFrame(IIII)Z
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mHaveFrame:Z

    .line 68
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->configureMatrix()V

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->configureMatrix()V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->configureMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 117
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->configureMatrix()V

    return-void
.end method

.method public setOffsets(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 128
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 130
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetX:F

    .line 132
    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->mOffsetY:F

    .line 133
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->configureMatrix()V

    :cond_1
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method
