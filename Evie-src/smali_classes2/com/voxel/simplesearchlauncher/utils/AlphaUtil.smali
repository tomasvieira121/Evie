.class public Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;
.super Ljava/lang/Object;
.source "AlphaUtil.java"


# direct methods
.method public static applyAlphaToColor(FI)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p0

    invoke-static {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->applyAlphaToColor(II)I

    move-result p0

    return p0
.end method

.method public static applyAlphaToColor(II)I
    .locals 1

    shl-int/lit8 p0, p0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static floatToIntAlpha(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p0, p0, v0

    .line 16
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static intToFloatAlpha(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static limitAlpha(F)F
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
