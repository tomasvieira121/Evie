.class public Lcom/voxel/launcher3/DrawableTileSource;
.super Ljava/lang/Object;
.source "DrawableTileSource.java"

# interfaces
.implements Lcom/android/photos/views/TiledImageRenderer$TileSource;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreview:Lcom/android/gallery3d/glrenderer/BitmapTexture;

.field private mPreviewSize:I

.field private mTileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/photos/views/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/DrawableTileSource;->mTileSize:I

    .line 42
    iput-object p2, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0x400

    .line 43
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/DrawableTileSource;->mPreviewSize:I

    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getPreview()Lcom/android/gallery3d/glrenderer/BasicTexture;
    .locals 8

    .line 68
    iget v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mPreviewSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/voxel/launcher3/DrawableTileSource;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    .line 73
    invoke-virtual {p0}, Lcom/voxel/launcher3/DrawableTileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    const/high16 v3, 0x44800000    # 1024.0f

    cmpl-float v4, v0, v3

    if-gtz v4, :cond_2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    float-to-int v0, v0

    float-to-int v2, v2

    .line 78
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v5, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    new-instance v0, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 85
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/voxel/launcher3/DrawableTileSource;->getTileSize()I

    move-result p1

    if-nez p4, :cond_0

    .line 92
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 94
    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/voxel/launcher3/DrawableTileSource;->getImageWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/DrawableTileSource;->getImageHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p2, p2

    neg-int p3, p3

    .line 96
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 97
    iget-object p2, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object p2, p0, Lcom/voxel/launcher3/DrawableTileSource;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p4
.end method

.method public getTileSize()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/voxel/launcher3/DrawableTileSource;->mTileSize:I

    return v0
.end method
