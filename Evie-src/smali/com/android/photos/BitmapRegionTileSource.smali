.class public Lcom/android/photos/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/photos/views/TiledImageRenderer$TileSource;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;,
        Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;,
        Lcom/android/photos/BitmapRegionTileSource$BitmapSource;
    }
.end annotation


# instance fields
.field mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

.field mHeight:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

.field private final mRotation:I

.field mTileSize:I

.field private mWantRegion:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/photos/BitmapRegionTileSource$BitmapSource;[B)V
    .locals 4

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    .line 401
    invoke-static {p1}, Lcom/android/photos/views/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mTileSize:I

    .line 402
    invoke-virtual {p2}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mRotation:I

    .line 403
    invoke-virtual {p2}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->getBitmapRegionDecoder()Lcom/android/photos/SimpleBitmapRegionDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    .line 404
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    if-eqz p1, :cond_3

    .line 405
    invoke-interface {p1}, Lcom/android/photos/SimpleBitmapRegionDecoder;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    .line 406
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    invoke-interface {p1}, Lcom/android/photos/SimpleBitmapRegionDecoder;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    .line 407
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 408
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 409
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 410
    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 412
    invoke-virtual {p2}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const/16 p3, 0x800

    if-gt p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-gt p2, p3, :cond_0

    .line 415
    new-instance p2, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/photos/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    goto :goto_2

    :cond_0
    const-string p2, "BitmapRegionTileSource"

    const-string p3, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    const/4 v1, 0x4

    .line 417
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const/4 v2, -0x1

    if-nez p1, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x3

    if-nez p1, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 417
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    instance-of v1, v0, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mWidth:I

    return v0
.end method

.method public getPreview()Lcom/android/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mRotation:I

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 458
    invoke-virtual {p0}, Lcom/android/photos/BitmapRegionTileSource;->getTileSize()I

    move-result v0

    shl-int v1, v0, p1

    .line 460
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v3, p2, v1

    add-int/2addr v1, p3

    invoke-virtual {v2, p2, p3, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_0

    .line 463
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 466
    :cond_0
    iget-object p2, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 p3, 0x1

    shl-int p1, p3, p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 467
    iput-object p4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 470
    :try_start_0
    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    invoke-interface {p3, v0, p2}, Lcom/android/photos/SimpleBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p3, p2, :cond_1

    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    .line 473
    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "BitmapRegionTileSource"

    const-string p3, "fail in decoding region"

    .line 478
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 472
    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq p3, p4, :cond_3

    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_3

    .line 473
    iget-object p3, p0, Lcom/android/photos/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 475
    :cond_3
    throw p2
.end method

.method public getTileSize()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource;->mTileSize:I

    return v0
.end method
