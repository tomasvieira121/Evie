.class public Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;
.super Lcom/android/photos/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceBitmapSource"
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    .line 352
    iput p2, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcom/android/photos/SimpleBitmapRegionDecoder;
    .locals 2

    .line 360
    invoke-direct {p0}, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    invoke-static {v0, v1}, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/io/InputStream;Z)Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;

    move-result-object v1

    .line 363
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/android/photos/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/android/photos/DumbBitmapRegionDecoder;

    move-result-object v1

    .line 367
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    return-object v1
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readExif(Lcom/android/gallery3d/exif/ExifInterface;)Z
    .locals 2

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 380
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "BitmapRegionTileSource"

    const-string v1, "Error reading resource"

    .line 383
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method
