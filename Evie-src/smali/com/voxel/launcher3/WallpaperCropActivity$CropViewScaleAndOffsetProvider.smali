.class public Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropViewScaleAndOffsetProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParallaxOffset()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getScale(Landroid/graphics/Point;Landroid/graphics/RectF;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public updateCropView(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/android/photos/views/TiledImageRenderer$TileSource;)V
    .locals 6

    .line 489
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 488
    invoke-static {v0, v1}, Lcom/voxel/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 490
    invoke-interface {p2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-static {v1, p2, v2, v3, v4}, Lcom/android/gallery3d/common/Utils;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object p2

    .line 493
    invoke-virtual {p0, v0, p2}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;->getScale(Landroid/graphics/Point;Landroid/graphics/RectF;)F

    move-result v0

    .line 494
    iget-object v1, p1, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CropView;->getCenter()Landroid/graphics/PointF;

    move-result-object v1

    .line 500
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;->getParallaxOffset()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 501
    iget-object v3, p1, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v3}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 502
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v3

    mul-float v2, v2, v5

    add-float/2addr v4, v2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p2

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 503
    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2, v1}, Lcom/voxel/launcher3/CropView;->setScaleAndCenter(FFF)V

    return-void
.end method
