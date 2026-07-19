.class public Lcom/voxel/simplesearchlauncher/view/HotseatImageView;
.super Landroid/widget/ImageView;
.source "HotseatImageView.java"


# instance fields
.field private mBlurredDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultAlpha:I

.field private mEnabledBlurredBackground:Z

.field private mHaveFrame:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mWhiteDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetX:F

    .line 23
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetY:F

    .line 24
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    .line 38
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->init()V

    return-void
.end method

.method private configureMatrix()V
    .locals 7

    .line 121
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mHaveFrame:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 128
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int v5, v0, v4

    mul-int v6, v3, v1

    if-le v5, v6, :cond_1

    int-to-float v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_0

    :cond_1
    int-to-float v1, v3

    int-to-float v3, v0

    div-float v3, v1, v3

    :goto_0
    int-to-float v1, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    .line 141
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 142
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 143
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetX:F

    mul-float v1, v1, v0

    .line 145
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private init()V
    .locals 1

    .line 52
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public enableBlurredBackground(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    return-void
.end method

.method public getWhiteDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mWhiteDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mWhiteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public setDefaultAlpha(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mDefaultAlpha:I

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    const/4 p2, 0x1

    .line 73
    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mHaveFrame:Z

    .line 74
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->configureMatrix()V

    return p1
.end method

.method public setImageAlpha(I)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 188
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->intToFloatAlpha(I)F

    move-result p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mDefaultAlpha:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 190
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mWhiteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    .line 81
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    goto :goto_0

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mWhiteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0xff

    .line 89
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setImageAlpha(I)V

    .line 92
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 93
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 94
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mWhiteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mEnabledBlurredBackground:Z

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mBlurredDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {p2, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->configureMatrix()V

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->invalidate()V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public setOffsets(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 154
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 156
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetX:F

    .line 158
    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->mOffsetY:F

    .line 159
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->configureMatrix()V

    :cond_1
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 166
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->configureMatrix()V

    return-void
.end method
