.class public Lcom/android/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static ceilLog2(F)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Utils"

    const-string v1, "close fail "

    .line 88
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static floorLog2(F)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    shl-int v1, v2, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v0, v2

    return v0
.end method

.method public static getMaxCropRect(IIIIZ)Landroid/graphics/RectF;
    .locals 5

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float p0, p0

    int-to-float p1, p1

    div-float v1, p0, p1

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v2, p2, p3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 113
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 114
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v2, p1

    sub-float p1, p0, v2

    div-float/2addr p1, v3

    .line 115
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 116
    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    if-eqz p4, :cond_1

    .line 118
    iget p0, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 119
    iput v4, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 122
    :cond_0
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 123
    iput p0, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr p3, p2

    mul-float p3, p3, p0

    sub-float p0, p1, p3

    div-float/2addr p0, v3

    .line 124
    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 125
    iget p0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static nextPowerOf2(I)I
    .locals 3

    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prevPowerOf2(I)I
    .locals 0

    if-lez p0, :cond_0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
