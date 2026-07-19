.class public Lcom/voxel/launcher3/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field static INSTANCE:Lcom/voxel/launcher3/HolographicOutlineHelper;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShadowOffset:I

.field private final mShaowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field final shadowBitmapPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 54
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getScreenDensity()F

    move-result p1

    .line 56
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, p1

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float p1, p1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mShaowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    float-to-int v0, v1

    .line 61
    iput v0, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mShadowOffset:I

    float-to-int p1, p1

    .line 62
    iput p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    .line 64
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 67
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/voxel/launcher3/HolographicOutlineHelper;
    .locals 1

    .line 74
    sget-object v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->INSTANCE:Lcom/voxel/launcher3/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/voxel/launcher3/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->INSTANCE:Lcom/voxel/launcher3/HolographicOutlineHelper;

    .line 77
    :cond_0
    sget-object p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->INSTANCE:Lcom/voxel/launcher3/HolographicOutlineHelper;

    return-object p0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const/4 v8, 0x0

    if-eqz p3, :cond_2

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    new-array v1, v1, [I

    const/4 v11, 0x0

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v1

    .line 95
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    .line 97
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 98
    aget v3, v1, v2

    ushr-int/lit8 v3, v3, 0x18

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_0

    .line 100
    aput v8, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v1

    .line 103
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 106
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 109
    iget-object v1, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    .line 110
    new-array v10, v1, [I

    .line 111
    iget-object v2, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 113
    iget-object v2, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 114
    new-array v12, v1, [I

    .line 115
    iget-object v2, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 118
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    .line 119
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    iget-object v2, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 121
    new-array v14, v1, [I

    .line 122
    iget-object v1, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 125
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    aget v1, v14, v8

    neg-int v1, v1

    int-to-float v1, v1

    const/16 v16, 0x1

    aget v2, v14, v16

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 128
    aget v1, v14, v8

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    aget v1, v14, v16

    neg-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    .line 134
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    aget v1, v14, v8

    int-to-float v1, v1

    aget v2, v14, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    aget v1, v10, v8

    int-to-float v1, v1

    aget v2, v10, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    aget v1, v12, v8

    int-to-float v1, v1

    aget v2, v12, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public createMediumDropShadow(Lcom/voxel/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;
    .locals 10

    .line 155
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    .line 156
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mShadowOffset:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 154
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    sget-object v1, Lcom/voxel/launcher3/HolographicOutlineHelper;->sTempRect:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 164
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    .line 165
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 170
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getScaleY()F

    move-result v5

    .line 172
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    iget v8, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    .line 173
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getHeight()I

    move-result v8

    div-int/2addr v8, v7

    iget v9, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 171
    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 174
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    iget v5, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 175
    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 174
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 177
    iget-object v1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    new-array p1, v7, [I

    .line 181
    iget-object v1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mShaowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 182
    iget-object v1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 186
    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    aget v3, p1, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    int-to-float p1, p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mShadowOffset:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    iget-object p1, p0, Lcom/voxel/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method
