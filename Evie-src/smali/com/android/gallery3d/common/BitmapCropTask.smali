.class public Lcom/android/gallery3d/common/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;,
        Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCropBounds:Landroid/graphics/RectF;

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field mInUri:Landroid/net/Uri;

.field mNoCrop:Z

.field mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

.field mOnEndCropHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;

.field mOutHeight:I

.field mOutWidth:I

.field mResources:Landroid/content/res/Resources;

.field mRotation:I

.field mSaveCroppedBitmap:Z

.field mSetWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V
    .locals 9

    move-object v8, p0

    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 65
    iput v1, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    .line 66
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object v0, p1

    .line 97
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    move v0, p3

    .line 98
    iput v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    move-object v0, p2

    .line 99
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mResources:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/common/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V
    .locals 9

    move-object v8, p0

    .line 87
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 65
    iput v1, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    .line 66
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object v0, p1

    .line 88
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    move-object v0, p2

    .line 89
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 90
    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/common/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    return-void
.end method

.method public constructor <init>([BLandroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V
    .locals 9

    move-object v8, p0

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 65
    iput v1, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    .line 66
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object v0, p1

    .line 80
    iput-object v0, v8, Lcom/android/gallery3d/common/BitmapCropTask;->mInImageBytes:[B

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 81
    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/common/BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    return-void
.end method

.method private init(Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 107
    iput p2, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    .line 108
    iput p3, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    .line 109
    iput p4, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    .line 110
    iput-boolean p5, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mSetWallpaper:Z

    .line 111
    iput-boolean p6, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mSaveCroppedBitmap:Z

    .line 112
    iput-object p7, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOnEndCropHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;

    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInImageBytes:[B

    if-nez v0, :cond_0

    const-string v0, "BitmapCropTask"

    const-string v1, "cannot read original file, no input URI, resource ID, or image byte array given"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInImageBytes:[B

    if-eqz v0, :cond_3

    .line 140
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInImageBytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 142
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BitmapCropTask"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Landroid/graphics/Rect;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-nez v0, :cond_0

    .line 423
    iget-object p2, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Lcom/voxel/launcher3/NycWallpaperUtils;->setStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cropBitmap(I)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 175
    iget-boolean v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mSetWallpaper:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mNoCrop:Z

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 178
    invoke-direct {v1, v0, v3, v2}, Lcom/android/gallery3d/common/BitmapCropTask;->setWallpaper(Ljava/io/InputStream;Landroid/graphics/Rect;I)V

    .line 179
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BitmapCropTask"

    const-string v3, "cannot write stream to wallpaper"

    .line 181
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x1

    :goto_0
    xor-int/lit8 v0, v5, 0x1

    return v0

    .line 185
    :cond_0
    iget-boolean v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mSetWallpaper:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    if-lez v0, :cond_3

    iget v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    if-lez v0, :cond_3

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 188
    iget-object v6, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 192
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_1

    :try_start_2
    const-string v0, "BitmapCropTask"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get input stream for uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    .line 198
    :cond_1
    :try_start_3
    iget-object v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    iget v8, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    iget v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 199
    invoke-direct {v1, v6, v0, v2}, Lcom/android/gallery3d/common/BitmapCropTask;->setWallpaper(Ljava/io/InputStream;Landroid/graphics/Rect;I)V

    .line 201
    iget-object v2, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

    invoke-interface {v2, v3, v0}, Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;->onBitmapCropped([BLandroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :cond_2
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v3

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    :try_start_4
    const-string v2, "BitmapCropTask"

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open region decoder for file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_9

    :goto_2
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 210
    throw v0

    .line 213
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 214
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 215
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v8

    .line 218
    iget v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    if-lez v9, :cond_5

    int-to-float v9, v9

    .line 219
    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 220
    iget v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 222
    iget-object v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 223
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    if-nez v8, :cond_4

    const-string v0, "BitmapCropTask"

    const-string v2, "cannot get bounds for image"

    .line 226
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 231
    :cond_4
    new-array v9, v10, [F

    iget v12, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    aput v12, v9, v5

    iget v12, v8, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    aput v12, v9, v4

    .line 232
    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 233
    aget v12, v9, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v9, v5

    .line 234
    aget v12, v9, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v9, v4

    .line 236
    iget-object v12, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    aget v13, v9, v5

    neg-float v13, v13

    div-float/2addr v13, v11

    aget v9, v9, v4

    neg-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v12, v13, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 237
    iget-object v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 238
    iget-object v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/Point;->x:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    iget v12, v8, Landroid/graphics/Point;->y:I

    div-int/2addr v12, v10

    int-to-float v12, v12

    invoke-virtual {v0, v9, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 241
    :cond_5
    iget-object v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_6

    goto/16 :goto_b

    .line 250
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    div-int/2addr v0, v9

    .line 251
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v12, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    div-int/2addr v9, v12

    .line 250
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 256
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v12, :cond_7

    :try_start_6
    const-string v0, "BitmapCropTask"

    .line 258
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot get input stream for uri="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 267
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    .line 262
    :cond_7
    :try_start_7
    invoke-static {v12, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 263
    :try_start_8
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 267
    :goto_3
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v13, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v12, v3

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object v12, v3

    move-object v13, v12

    :goto_4
    :try_start_9
    const-string v14, "BitmapCropTask"

    .line 265
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot open region decoder for file: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :goto_5
    if-eqz v13, :cond_9

    .line 274
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-le v9, v4, :cond_8

    .line 276
    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 278
    :cond_8
    invoke-virtual {v13, v6, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    invoke-virtual {v13}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_6

    :cond_9
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_10

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/common/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 287
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-le v9, v4, :cond_a

    .line 289
    iput v9, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 291
    :cond_a
    invoke-static {v11, v3, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 292
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_7

    :cond_b
    move-object v9, v3

    :goto_7
    if-eqz v9, :cond_10

    .line 296
    iget v0, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v0, v8

    .line 297
    iget-object v8, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    div-float/2addr v11, v0

    iput v11, v8, Landroid/graphics/RectF;->left:F

    .line 298
    iget-object v8, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v11, v0

    iput v11, v8, Landroid/graphics/RectF;->top:F

    .line 299
    iget-object v8, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v11, v0

    iput v11, v8, Landroid/graphics/RectF;->bottom:F

    .line 300
    iget-object v8, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->right:F

    div-float/2addr v11, v0

    iput v11, v8, Landroid/graphics/RectF;->right:F

    .line 301
    iget-object v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v0, v8, :cond_c

    .line 306
    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 308
    :cond_c
    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v0, v8, :cond_d

    .line 310
    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v0, v8

    neg-int v0, v0

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 312
    :cond_d
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v0, v8, :cond_e

    .line 314
    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 316
    :cond_e
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v0, v8, :cond_f

    .line 318
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v0, v8

    neg-int v0, v0

    invoke-virtual {v6, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 321
    :cond_f
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 322
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 323
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 321
    invoke-static {v9, v0, v8, v11, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_11

    const-string v0, "BitmapCropTask"

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot decode file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 332
    :cond_11
    iget v6, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    if-lez v6, :cond_12

    iget v6, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    if-gtz v6, :cond_13

    :cond_12
    iget v6, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    if-lez v6, :cond_17

    .line 333
    :cond_13
    new-array v6, v10, [F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v4

    .line 334
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 335
    aget v7, v6, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v6, v5

    .line 336
    aget v7, v6, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v6, v4

    .line 338
    iget v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    if-lez v7, :cond_14

    iget v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    if-gtz v7, :cond_15

    .line 339
    :cond_14
    aget v7, v6, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    .line 340
    aget v7, v6, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    .line 343
    :cond_15
    new-instance v7, Landroid/graphics/RectF;

    aget v8, v6, v5

    aget v9, v6, v4

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 344
    new-instance v8, Landroid/graphics/RectF;

    iget v9, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutWidth:I

    int-to-float v9, v9

    iget v11, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOutHeight:I

    int-to-float v11, v11

    invoke-direct {v8, v10, v10, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 346
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    iget v10, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    if-nez v10, :cond_16

    .line 348
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v7, v8, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_8

    .line 350
    :cond_16
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v10, v11, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 352
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 353
    iget v13, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mRotation:I

    int-to-float v13, v13

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 354
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    aget v14, v6, v5

    div-float/2addr v14, v12

    aget v6, v6, v4

    div-float/2addr v6, v12

    invoke-virtual {v13, v14, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 356
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 357
    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 359
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 360
    invoke-virtual {v7, v11, v10}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 361
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    invoke-virtual {v10, v6, v13}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 363
    invoke-virtual {v9, v10, v7}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 366
    :goto_8
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 367
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 366
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 369
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 371
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 372
    invoke-virtual {v7, v0, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v0, v6

    .line 377
    :cond_17
    iget-boolean v6, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mSaveCroppedBitmap:Z

    if-eqz v6, :cond_18

    .line 378
    iput-object v0, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 382
    :cond_18
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x800

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 383
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 385
    iget-boolean v7, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mSetWallpaper:Z

    if-eqz v7, :cond_1a

    .line 387
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 388
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7, v3, v2}, Lcom/android/gallery3d/common/BitmapCropTask;->setWallpaper(Ljava/io/InputStream;Landroid/graphics/Rect;I)V

    .line 389
    iget-object v2, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

    if-eqz v2, :cond_1a

    .line 390
    iget-object v2, v1, Lcom/android/gallery3d/common/BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

    new-instance v3, Landroid/graphics/Rect;

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v3, v5, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    invoke-interface {v2, v6, v3}, Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;->onBitmapCropped([BLandroid/graphics/Rect;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    const-string v2, "BitmapCropTask"

    const-string v3, "cannot write stream to wallpaper"

    .line 394
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x1

    goto :goto_9

    :cond_19
    const-string v0, "BitmapCropTask"

    const-string v2, "cannot compress bitmap"

    .line 399
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_1a
    :goto_9
    xor-int/lit8 v0, v5, 0x1

    return v0

    :catchall_3
    move-exception v0

    .line 267
    :goto_a
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 269
    throw v0

    :cond_1b
    :goto_b
    const-string v0, "BitmapCropTask"

    const-string v2, "crop has bad values for full size image"

    .line 244
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 408
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/BitmapCropTask;->cropBitmap(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/BitmapCropTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 4

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/common/BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 155
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 157
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 158
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v0, :cond_0

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 413
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mContext:Landroid/content/Context;

    const v1, 0x7f1202d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOnEndCropHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;->run(Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/BitmapCropTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public setNoCrop(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mNoCrop:Z

    return-void
.end method

.method public setOnBitmapCropped(Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;

    return-void
.end method

.method public setOnEndRunnable(Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/common/BitmapCropTask;->mOnEndCropHandler:Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;

    return-void
.end method
