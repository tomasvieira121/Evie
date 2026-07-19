.class public Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaskRoundedFrameLayout.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBitmapShader:Landroid/graphics/BitmapShader;

.field mCanvas:Landroid/graphics/Canvas;

.field mMaskBitmap:Landroid/graphics/Bitmap;

.field mPaint:Landroid/graphics/Paint;

.field mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mRadius:F

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    sget-object v0, Lis/shortcut/R$styleable;->MaskRoundedFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mRadius:F

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 89
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mRadius:F

    invoke-virtual {v2, v3, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mCanvas:Landroid/graphics/Canvas;

    .line 101
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mRadius:F

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->invalidate()V

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mRadius:F

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
