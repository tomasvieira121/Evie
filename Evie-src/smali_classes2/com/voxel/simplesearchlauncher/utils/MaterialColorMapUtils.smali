.class public Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# static fields
.field private static final PRIMARY_COLORS:[I

.field private static final SECONDARY_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf

    .line 27
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->PRIMARY_COLORS:[I

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->SECONDARY_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x24bbc9
        -0x16e19d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xbd7a0c
        -0xfc641b
        -0xff6859
        -0xff6978
        -0xf062a8
        -0x9760c8
        -0x109400
        -0xa8de
        -0x8a8a8b
        -0x9f8275
    .end array-data

    :array_1
    .array-data 4
        -0x3ac6d7
        -0x3de7a5
        -0x84e05e
        -0xaed258
        -0xcfc061
        -0xcc982a
        -0xfd8843
        -0xff9f9c
        -0xff8695
        -0xf47fbd
        -0xcc96e2
        -0x19af00
        -0x19b5e7
        -0xbdbdbe
        -0xbaa59c
    .end array-data
.end method

.method public static calculatePrimaryAndSecondaryColor(IZ)Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "calculatePrimaryAndSecondaryColor"

    .line 53
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->hue(I)F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    :goto_0
    sget-object v3, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->PRIMARY_COLORS:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 61
    aget v3, v3, v1

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->hue(I)F

    move-result v3

    sub-float/2addr v3, p0

    .line 65
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_1

    move v2, v1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 76
    :cond_3
    new-instance p0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;

    sget-object p1, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->PRIMARY_COLORS:[I

    aget p1, p1, v2

    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->SECONDARY_COLORS:[I

    aget v0, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object p0
.end method

.method public static getPrimaryColor(I)I
    .locals 2

    .line 132
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->PRIMARY_COLORS:[I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->PRIMARY_COLORS:[I

    array-length v1, v1

    rem-int/2addr p0, v1

    aget p0, v0, p0

    return p0
.end method

.method public static getSecondaryColor(I)I
    .locals 2

    .line 136
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->SECONDARY_COLORS:[I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->SECONDARY_COLORS:[I

    array-length v1, v1

    rem-int/2addr p0, v1

    aget p0, v0, p0

    return p0
.end method

.method public static hue(I)F
    .locals 7

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v3, v2, v3

    int-to-float v3, v3

    sub-int v5, v2, v0

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-int v6, v2, v1

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-int p0, v2, p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    if-ne v0, v2, :cond_1

    sub-float/2addr p0, v6

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v5, v0

    sub-float p0, v5, p0

    goto :goto_0

    :cond_2
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v6, p0

    sub-float p0, v6, v5

    :goto_0
    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p0, v0

    cmpg-float v0, p0, v4

    if-gez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v4, p0, v0

    goto :goto_1

    :cond_3
    move v4, p0

    :goto_1
    return v4
.end method
