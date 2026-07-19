.class public final Lcom/voxel/launcher3/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static sDefaultWallpaperSize:Landroid/graphics/Point;


# direct methods
.method public static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 97
    sget-object v0, Lcom/voxel/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 99
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 100
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 102
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 103
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 105
    sget-boolean v2, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v2, :cond_0

    .line 106
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 107
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 108
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x2d0

    if-lt p0, p1, :cond_1

    int-to-float p0, v1

    .line 116
    invoke-static {v1, v0}, Lcom/voxel/launcher3/util/WallpaperUtils;->wallpaperTravelToScreenWidthRatio(II)F

    move-result p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    .line 119
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 122
    :goto_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object p1, Lcom/voxel/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    .line 124
    :cond_2
    sget-object p0, Lcom/voxel/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V
    .locals 2

    .line 43
    invoke-static {p0, p2}, Lcom/voxel/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object p0

    const-string p2, "wallpaper.width"

    const/4 v0, -0x1

    .line 46
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "wallpaper.height"

    .line 47
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p2, v0, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-nez p4, :cond_1

    return-void

    .line 53
    :cond_1
    iget p2, p0, Landroid/graphics/Point;->x:I

    .line 54
    iget p1, p0, Landroid/graphics/Point;->y:I

    .line 58
    :cond_2
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result p0

    if-ne p2, p0, :cond_3

    .line 59
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result p0

    if-eq p1, p0, :cond_4

    .line 60
    :cond_3
    invoke-virtual {p3, p2, p1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    :cond_4
    return-void
.end method

.method public static wallpaperTravelToScreenWidthRatio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3e9d89d7

    mul-float p0, p0, p1

    const p1, 0x3f80fc10

    add-float/2addr p0, p1

    return p0
.end method
