.class public Lcom/voxel/launcher3/graphics/ShadowGenerator;
.super Ljava/lang/Object;
.source "ShadowGenerator.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sShadowGenerator:Lcom/voxel/launcher3/graphics/ShadowGenerator;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    iput v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mIconSize:I

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v3, v3

    const v4, 0x3c2aaaab

    mul-float v3, v3, v4

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static createPillWithShadow(III)Landroid/graphics/Bitmap;
    .locals 10

    int-to-float v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    div-float v1, v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v0, v2

    .line 98
    div-int/lit8 p2, p2, 0x2

    .line 100
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 101
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 102
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v1, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 104
    div-int/lit8 p1, p1, 0x2

    int-to-float v5, p1

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, p2

    add-float/2addr v1, v6

    add-float/2addr v1, v0

    .line 105
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 106
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v5, v1, 0x2

    .line 108
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 109
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v7, v1, p1

    sub-int v8, v1, p2

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    const/16 p2, 0x1e

    .line 117
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    new-instance p2, Landroid/graphics/RectF;

    int-to-float v7, v7

    int-to-float v8, v8

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-direct {p2, v7, v8, p1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    invoke-virtual {v2, p2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 p2, 0x3d

    .line 123
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    new-instance p2, Landroid/graphics/RectF;

    add-float v9, v8, v0

    add-float/2addr v0, v1

    invoke-direct {p2, v7, v9, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 125
    invoke-virtual {v2, p2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v7, v8, p1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 131
    invoke-virtual {v2, p0, v6, v6, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v5
.end method

.method public static getInstance()Lcom/voxel/launcher3/graphics/ShadowGenerator;
    .locals 2

    .line 85
    sget-object v0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/voxel/launcher3/graphics/ShadowGenerator;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/voxel/launcher3/graphics/ShadowGenerator;

    invoke-direct {v1}, Lcom/voxel/launcher3/graphics/ShadowGenerator;-><init>()V

    sput-object v1, Lcom/voxel/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/voxel/launcher3/graphics/ShadowGenerator;

    .line 89
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/voxel/launcher3/graphics/ShadowGenerator;

    return-object v0

    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x2

    .line 63
    :try_start_0
    new-array v0, v0, [I

    .line 64
    iget-object v1, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    iget v2, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mIconSize:I

    iget v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v5, v0, v4

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v7, v0, v6

    int-to-float v7, v7

    iget-object v8, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    aget v4, v0, v4

    int-to-float v4, v4

    aget v0, v0, v6

    int-to-float v0, v0

    const v5, 0x3caaaaab

    iget v6, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    add-float/2addr v0, v6

    iget-object v5, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object p1, p0, Lcom/voxel/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
