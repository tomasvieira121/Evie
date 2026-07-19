.class public Lcom/voxel/simplesearchlauncher/utils/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public static getColorDifference(II)D
    .locals 9

    .line 11
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getLab(III)[D

    move-result-object p0

    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getLab(III)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p1, v2

    aget-wide v7, p0, v2

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p1, v2

    aget-wide v7, p0, v2

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getD65Xyz([D)[D
    .locals 10

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 56
    aget-wide v2, p0, v1

    const-wide v4, 0x3fda65af8741a841L    # 0.4124564

    mul-double v2, v2, v4

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const-wide v7, 0x3fd6e286ddd532cdL    # 0.3575761

    mul-double v5, v5, v7

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v6, p0, v5

    const-wide v8, 0x3fc7189374bc6a7fL    # 0.1804375

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v1

    .line 57
    aget-wide v2, p0, v1

    const-wide v6, 0x3fcb38dd971f6bd6L    # 0.2126729

    mul-double v2, v2, v6

    aget-wide v6, p0, v4

    const-wide v8, 0x3fe6e286ddd532cdL    # 0.7151522

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    aget-wide v6, p0, v5

    const-wide v8, 0x3fb27a0f9096bb99L    # 0.072175

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v4

    .line 58
    aget-wide v1, p0, v1

    const-wide v6, 0x3f93cc4410d1089cL    # 0.0193339

    mul-double v1, v1, v6

    aget-wide v3, p0, v4

    const-wide v6, 0x3fbe835dedf1e083L    # 0.119192

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    aget-wide v3, p0, v5

    const-wide v6, 0x3fee68e424d8269dL    # 0.9503041

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    aput-wide v1, v0, v5

    return-object v0
.end method

.method private static getLab(III)[D
    .locals 3

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [D

    int-to-double v1, p0

    const/4 p0, 0x0

    aput-wide v1, v0, p0

    int-to-double p0, p1

    const/4 v1, 0x1

    aput-wide p0, v0, v1

    int-to-double p0, p2

    const/4 p2, 0x2

    aput-wide p0, v0, p2

    .line 18
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getScaledRgb([D)V

    .line 19
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getSrgb([D)V

    .line 20
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getD65Xyz([D)[D

    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getLab([D)[D

    move-result-object p0

    return-object p0
.end method

.method private static getLab([D)[D
    .locals 14

    const/4 v0, 0x3

    .line 70
    new-array v1, v0, [D

    const/4 v2, 0x0

    .line 73
    aget-wide v3, p0, v2

    const-wide v5, 0x3fee6a400fba8827L    # 0.95047

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    const/4 v3, 0x1

    .line 74
    aget-wide v4, p0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v6

    aput-wide v4, v1, v3

    const/4 v4, 0x2

    .line 75
    aget-wide v5, p0, v4

    const-wide v7, 0x3ff16bd9018e7579L    # 1.08883

    div-double/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 p0, 0x0

    .line 77
    :goto_0
    array-length v5, v1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const-wide/high16 v8, 0x405d000000000000L    # 116.0

    if-ge p0, v5, :cond_1

    .line 78
    aget-wide v10, v1, p0

    const-wide v12, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v5, v10, v12

    if-lez v5, :cond_0

    .line 79
    aget-wide v5, v1, p0

    const-wide v7, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    aput-wide v5, v1, p0

    goto :goto_1

    .line 81
    :cond_0
    aget-wide v10, v1, p0

    const-wide v12, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double v12, v12, v10

    add-double/2addr v12, v6

    div-double/2addr v12, v8

    aput-wide v12, v1, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-array p0, v0, [D

    .line 86
    aget-wide v10, v1, v3

    mul-double v10, v10, v8

    sub-double/2addr v10, v6

    aput-wide v10, p0, v2

    const-wide v5, 0x407f400000000000L    # 500.0

    .line 87
    aget-wide v7, v1, v2

    aget-wide v9, v1, v3

    sub-double/2addr v7, v9

    mul-double v7, v7, v5

    aput-wide v7, p0, v3

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    .line 88
    aget-wide v2, v1, v3

    aget-wide v0, v1, v4

    sub-double/2addr v2, v0

    mul-double v2, v2, v5

    aput-wide v2, p0, v4

    return-object p0
.end method

.method private static getScaledRgb([D)V
    .locals 5

    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 31
    aget-wide v1, p0, v0

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getSrgb([D)V
    .locals 6

    const/4 v0, 0x0

    .line 40
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 41
    aget-wide v1, p0, v0

    const-wide v3, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 42
    aget-wide v1, p0, v0

    const-wide v3, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v1, v3

    aput-wide v1, p0, v0

    goto :goto_1

    .line 44
    :cond_0
    aget-wide v1, p0, v0

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v1, v3

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v1, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    aput-wide v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static rgbToHsl(III)[F
    .locals 8

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    cmpg-float v1, p0, p2

    if-gez v1, :cond_2

    move v1, p0

    goto :goto_1

    :cond_2
    cmpg-float v1, p1, p2

    if-gez v1, :cond_3

    move v1, p1

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    const/4 v5, 0x0

    cmpl-float v6, v0, v1

    if-nez v6, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    sub-float v6, v0, v1

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_5

    sub-float v0, v3, v0

    sub-float/2addr v0, v1

    div-float v0, v6, v0

    goto :goto_2

    :cond_5
    div-float v0, v6, v2

    :goto_2
    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v2, p0, p1

    if-lez v2, :cond_7

    cmpl-float v2, p0, p2

    if-lez v2, :cond_7

    sub-float p0, p1, p2

    div-float/2addr p0, v6

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    const/high16 v5, 0x40c00000    # 6.0f

    :cond_6
    add-float/2addr p0, v5

    goto :goto_3

    :cond_7
    cmpl-float v2, p1, p2

    if-lez v2, :cond_8

    sub-float/2addr p2, p0

    div-float/2addr p2, v6

    add-float p0, p2, v3

    goto :goto_3

    :cond_8
    sub-float/2addr p0, p1

    div-float/2addr p0, v6

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p0, p1

    :goto_3
    div-float v5, p0, v1

    :goto_4
    const/4 p0, 0x3

    .line 177
    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v5, p0, p1

    const/4 p1, 0x1

    aput v0, p0, p1

    const/4 p1, 0x2

    aput v4, p0, p1

    return-object p0
.end method
