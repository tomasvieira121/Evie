.class public Lcom/voxel/launcher3/graphics/IconPalette;
.super Ljava/lang/Object;
.source "IconPalette.java"


# static fields
.field private static sBadgePalette:Lcom/voxel/launcher3/graphics/IconPalette;


# instance fields
.field public final backgroundColor:I

.field public final backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final dominantColor:I

.field public final saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final secondaryColor:I

.field public final textColor:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->dominantColor:I

    if-eqz p2, :cond_0

    .line 57
    iget p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->dominantColor:I

    const v0, 0x3f5eb852    # 0.87f

    invoke-static {p1, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->getMutedColor(IF)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->dominantColor:I

    :goto_0
    iput p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColor:I

    .line 58
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 59
    iget v0, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v0, p1}, Lcom/voxel/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 60
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez p2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    iput-object p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    goto :goto_1

    .line 65
    :cond_1
    iget p2, p0, Lcom/voxel/launcher3/graphics/IconPalette;->dominantColor:I

    const v0, 0x3f0a3d71    # 0.54f

    invoke-static {p2, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->getMutedColor(IF)I

    move-result p2

    invoke-static {p2, p1}, Lcom/voxel/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 66
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p2, p0, Lcom/voxel/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 68
    :goto_1
    iget p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {p1}, Lcom/voxel/launcher3/graphics/IconPalette;->getTextColorForBackground(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->textColor:I

    .line 69
    iget p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {p1}, Lcom/voxel/launcher3/graphics/IconPalette;->getLowContrastColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/graphics/IconPalette;->secondaryColor:I

    return-void
.end method

.method private static ensureTextContrast(II)I
    .locals 3

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4012000000000000L    # 4.5

    .line 162
    invoke-static {p0, p1, v0, v1, v2}, Lcom/voxel/launcher3/graphics/IconPalette;->findContrastColor(IIZD)I

    move-result p0

    return p0
.end method

.method private static findContrastColor(IIZD)I
    .locals 21

    if-eqz p2, :cond_0

    move/from16 v0, p0

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    :goto_0
    if-eqz p2, :cond_1

    move/from16 v1, p1

    goto :goto_1

    :cond_1
    move/from16 v1, p0

    .line 179
    :goto_1
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v4, v2, p3

    if-ltz v4, :cond_2

    return p0

    :cond_2
    const/4 v2, 0x3

    .line 183
    new-array v2, v2, [D

    if-eqz p2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    .line 184
    :goto_2
    invoke-static {v3, v2}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 186
    aget-wide v6, v2, v5

    const/4 v8, 0x1

    .line 187
    aget-wide v15, v2, v8

    const/4 v8, 0x2

    aget-wide v17, v2, v8

    :goto_3
    const/16 v2, 0xf

    if-ge v5, v2, :cond_6

    sub-double v8, v6, v3

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v8, v10

    if-lez v2, :cond_6

    add-double v8, v3, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v19, v8, v10

    if-eqz p2, :cond_4

    move-wide/from16 v9, v19

    move-wide v11, v15

    move-wide/from16 v13, v17

    .line 191
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, v19

    move-wide v11, v15

    move-wide/from16 v13, v17

    .line 193
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v1

    .line 195
    :goto_4
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v2, v8, p3

    if-lez v2, :cond_5

    move-wide/from16 v3, v19

    goto :goto_5

    :cond_5
    move-wide/from16 v6, v19

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move-wide v9, v3

    move-wide v11, v15

    move-wide/from16 v13, v17

    .line 201
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static fromDominantColor(IZ)Lcom/voxel/launcher3/graphics/IconPalette;
    .locals 1

    .line 91
    new-instance v0, Lcom/voxel/launcher3/graphics/IconPalette;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/graphics/IconPalette;-><init>(IZ)V

    return-object v0
.end method

.method public static getBadgePalette(Landroid/content/res/Resources;)Lcom/voxel/launcher3/graphics/IconPalette;
    .locals 1

    const v0, 0x7f06002c

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/voxel/launcher3/graphics/IconPalette;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/voxel/launcher3/graphics/IconPalette;

    move-result-object p0

    sput-object p0, Lcom/voxel/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/voxel/launcher3/graphics/IconPalette;

    .line 107
    :cond_1
    sget-object p0, Lcom/voxel/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/voxel/launcher3/graphics/IconPalette;

    return-object p0
.end method

.method private static getLighterOrDarkerVersionOfColor(IF)I
    .locals 3

    const/4 v0, -0x1

    .line 218
    invoke-static {v0, p0, p1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v1

    const/high16 v2, -0x1000000

    .line 219
    invoke-static {v2, p0, p1}, Landroidx/core/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result p1

    if-ltz v1, :cond_0

    .line 222
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 224
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 228
    :cond_1
    :goto_0
    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private static getLowContrastColor(I)I
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 214
    invoke-static {p0, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result p0

    return p0
.end method

.method private static getMutedColor(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, -0x1

    .line 205
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 206
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private static getTextColorForBackground(I)I
    .locals 1

    const/high16 v0, 0x40900000    # 4.5f

    .line 210
    invoke-static {p0, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result p0

    return p0
.end method

.method private static resolveColor(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0600ca

    .line 143
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lcom/voxel/launcher3/graphics/IconPalette;->resolveColor(Landroid/content/Context;I)I

    move-result p0

    .line 121
    invoke-static {p0, p2}, Lcom/voxel/launcher3/graphics/IconPalette;->ensureTextContrast(II)I

    move-result p0

    return p0
.end method
