.class public abstract Lcom/android/photos/BitmapRegionTileSource$BitmapSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/BitmapRegionTileSource$BitmapSource$InBitmapProvider;,
        Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
    }
.end annotation


# instance fields
.field private mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

.field private mPreview:Landroid/graphics/Bitmap;

.field private mRotation:I

.field private mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return-void
.end method


# virtual methods
.method public getBitmapRegionDecoder()Lcom/android/photos/SimpleBitmapRegionDecoder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    return-object v0
.end method

.method public getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mRotation:I

    return v0
.end method

.method public abstract loadBitmapRegionDecoder()Lcom/android/photos/SimpleBitmapRegionDecoder;
.end method

.method public loadInBackground(Lcom/android/photos/BitmapRegionTileSource$BitmapSource$InBitmapProvider;)Z
    .locals 7

    .line 165
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->readExif(Lcom/android/gallery3d/exif/ExifInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v0

    iput v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mRotation:I

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->loadBitmapRegionDecoder()Lcom/android/photos/SimpleBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    .line 173
    iget-object v0, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 174
    sget-object p1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return v1

    .line 177
    :cond_1
    invoke-interface {v0}, Lcom/android/photos/SimpleBitmapRegionDecoder;->getWidth()I

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/photos/SimpleBitmapRegionDecoder;

    invoke-interface {v2}, Lcom/android/photos/SimpleBitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 180
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    .line 182
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/high16 v5, 0x44800000    # 1024.0f

    .line 184
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 185
    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 186
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz p1, :cond_2

    .line 190
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v5

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v5

    mul-int v0, v0, v2

    .line 191
    invoke-interface {p1, v0}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$InBitmapProvider;->forPixelCount(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 194
    iput-object p1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 196
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BitmapRegionTileSource"

    const-string v2, "Unable to reuse bitmap"

    .line 198
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 199
    iput-object p1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 200
    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    .line 204
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 208
    sget-object p1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    return v1

    .line 214
    :cond_4
    :try_start_1
    invoke-static {p1}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    .line 215
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    .line 216
    sget-object p1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "BitmapRegionTileSource"

    const-string v2, "Image cannot be rendered on a GL surface"

    .line 218
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    sget-object p1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    iput-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    .line 221
    :goto_1
    iget-object p1, p0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public abstract loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract readExif(Lcom/android/gallery3d/exif/ExifInterface;)Z
.end method
