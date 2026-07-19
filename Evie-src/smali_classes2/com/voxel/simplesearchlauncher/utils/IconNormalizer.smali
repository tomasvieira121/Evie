.class public Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;
.super Ljava/lang/Object;
.source "IconNormalizer.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sIconNormalizer:Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mLeftBorder:[F

.field private final mMaxSize:I

.field private final mPixels:[B

.field private final mRightBorder:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    .line 59
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    mul-int v1, v0, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mPixels:[B

    .line 63
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mLeftBorder:[F

    .line 64
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mRightBorder:[F

    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .locals 8

    .line 199
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 201
    new-array v0, v0, [F

    add-int/lit8 v1, p2, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, -0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, -0x1

    :goto_0
    if-gt v1, p3, :cond_5

    .line 209
    aget v5, p0, v1

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto :goto_3

    :cond_0
    cmpl-float v5, v3, v2

    if-nez v5, :cond_1

    move v4, p2

    goto :goto_1

    .line 217
    :cond_1
    aget v5, p0, v1

    aget v6, p0, v4

    sub-float/2addr v5, v6

    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v5, v3

    int-to-float v3, p1

    mul-float v5, v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_2
    if-le v4, p2, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 224
    aget v5, p0, v1

    aget v7, p0, v4

    sub-float/2addr v5, v7

    sub-int v7, v1, v4

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 225
    aget v7, v0, v4

    sub-float/2addr v5, v7

    mul-float v5, v5, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 233
    :cond_3
    :goto_1
    aget v3, p0, v1

    aget v5, p0, v4

    sub-float/2addr v3, v5

    sub-int v5, v1, v4

    int-to-float v5, v5

    div-float/2addr v3, v5

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_4

    .line 236
    aput v3, v0, v5

    .line 237
    aget v6, p0, v4

    sub-int v7, v5, v4

    int-to-float v7, v7

    mul-float v7, v7, v3

    add-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static getInstance()Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;
    .locals 2

    .line 244
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->sIconNormalizer:Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->sIconNormalizer:Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;

    .line 248
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->sIconNormalizer:Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;

    return-object v0

    :catchall_0
    move-exception v1

    .line 248
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v3, :cond_2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    if-gt v3, v5, :cond_1

    iget v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    if-le v4, v5, :cond_6

    .line 88
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 89
    iget v6, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    mul-int v6, v6, v3

    div-int v3, v6, v5

    .line 90
    iget v6, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    mul-int v6, v6, v4

    div-int v4, v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    if-lez v3, :cond_3

    .line 85
    iget v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    if-le v3, v5, :cond_4

    :cond_3
    iget v3, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    :cond_4
    if-lez v4, :cond_5

    .line 86
    iget v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    if-le v4, v5, :cond_6

    :cond_5
    iget v4, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    .line 93
    :cond_6
    :goto_1
    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 94
    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 104
    iget v0, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 114
    iget v7, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mMaxSize:I

    sub-int/2addr v7, v3

    const/4 v8, -0x1

    move v13, v0

    const/4 v0, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_2
    if-ge v0, v4, :cond_c

    move v14, v12

    const/4 v6, -0x1

    const/4 v12, 0x0

    const/4 v15, -0x1

    :goto_3
    if-ge v12, v3, :cond_9

    .line 121
    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mPixels:[B

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    move/from16 v16, v3

    const/16 v3, 0x28

    if-le v5, v3, :cond_8

    if-ne v15, v8, :cond_7

    move v15, v12

    :cond_7
    move v6, v12

    :cond_8
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    move/from16 v16, v3

    add-int v12, v14, v7

    .line 131
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mLeftBorder:[F

    int-to-float v5, v15

    aput v5, v3, v0

    .line 132
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mRightBorder:[F

    int-to-float v5, v6

    aput v5, v3, v0

    if-eq v15, v8, :cond_b

    if-ne v9, v8, :cond_a

    move v9, v0

    .line 141
    :cond_a
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 142
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v11, v0

    move v13, v3

    move v10, v5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v16

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    move/from16 v16, v3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eq v9, v8, :cond_13

    if-ne v10, v8, :cond_d

    goto/16 :goto_8

    .line 151
    :cond_d
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mLeftBorder:[F

    const/4 v5, 0x1

    invoke-static {v3, v5, v9, v11}, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->convertToConvexArray([FIII)V

    .line 152
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mRightBorder:[F

    invoke-static {v3, v8, v9, v11}, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->convertToConvexArray([FIII)V

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v3, v4, :cond_f

    .line 157
    iget-object v6, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mLeftBorder:[F

    aget v6, v6, v3

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    goto :goto_5

    .line 160
    :cond_e
    iget-object v6, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mRightBorder:[F

    aget v6, v6, v3

    iget-object v7, v1, Lcom/voxel/simplesearchlauncher/utils/IconNormalizer;->mLeftBorder:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    add-float/2addr v6, v0

    add-float/2addr v5, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    add-int/lit8 v3, v11, 0x1

    sub-int/2addr v3, v9

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v6, v13

    mul-int v3, v3, v6

    int-to-float v3, v3

    div-float v3, v5, v3

    const v6, 0x3f490fdb

    cmpg-float v6, v3, v6

    if-gez v6, :cond_10

    const v3, 0x3f28e38e

    goto :goto_6

    :cond_10
    const v6, 0x3f26aaab

    const v7, 0x3d25ae4f

    sub-float v3, v0, v3

    mul-float v3, v3, v7

    add-float/2addr v3, v6

    :goto_6
    if-eqz v2, :cond_11

    int-to-float v6, v13

    move/from16 v7, v16

    int-to-float v8, v7

    div-float/2addr v6, v8

    .line 175
    iput v6, v2, Landroid/graphics/RectF;->left:F

    int-to-float v6, v10

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    .line 176
    iput v6, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, v9

    int-to-float v8, v4

    div-float/2addr v6, v8

    .line 178
    iput v6, v2, Landroid/graphics/RectF;->top:F

    int-to-float v6, v11

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    .line 179
    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    :cond_11
    move/from16 v7, v16

    :goto_7
    mul-int v2, v7, v4

    int-to-float v2, v2

    div-float/2addr v5, v2

    cmpl-float v2, v5, v3

    if-lez v2, :cond_12

    div-float/2addr v3, v5

    float-to-double v2, v3

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float v0, v2

    .line 185
    :cond_12
    monitor-exit p0

    return v0

    .line 148
    :cond_13
    :goto_8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
