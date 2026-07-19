.class Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/photos/SimpleBitmapRegionDecoder;


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method private constructor <init>(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;
    .locals 2

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    new-instance p1, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;

    invoke-direct {p1, p0}, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;-><init>(Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "BitmapRegionTileSource"

    const-string v1, "getting decoder failed"

    .line 77
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/photos/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    return v0
.end method
