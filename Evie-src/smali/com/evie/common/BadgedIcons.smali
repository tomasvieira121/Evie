.class public Lcom/evie/common/BadgedIcons;
.super Ljava/lang/Object;
.source "BadgedIcons.java"


# static fields
.field private static final SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/evie/common/BadgedIcons;->SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public static getBadgedIconUrl(Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 11

    int-to-float v0, p3

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 31
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v3

    .line 37
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    const/4 v4, 0x0

    .line 39
    invoke-virtual {v3, p0, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/facebook/datasource/DataSources;->waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/common/references/CloseableReference;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 44
    invoke-virtual {v5}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 45
    instance-of v7, v5, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v7, :cond_1

    .line 46
    check-cast v5, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 47
    new-instance v7, Landroid/graphics/Paint;

    sget-object v8, Lcom/evie/common/BadgedIcons;->SHORTCUT_BASE_ICON_PAINT:Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 48
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const p2, -0xbdbdbe

    .line 52
    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    div-int/lit8 p2, p3, 0x2

    int-to-float p2, p2

    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p3, 0x2

    int-to-float v10, v10

    invoke-virtual {v2, p2, v9, v10, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v6, v6, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    invoke-virtual {v2, v5, v8, p2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    return-object v4

    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 72
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 73
    invoke-virtual {v3, p0, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    .line 76
    :try_start_1
    invoke-static {p0}, Lcom/facebook/datasource/DataSources;->waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    if-eqz p1, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 79
    instance-of p2, p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz p2, :cond_3

    .line 80
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 81
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p2, v6, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, p3, v0

    .line 83
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_3
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 96
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getUrlFromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_4
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    return-object v4

    :goto_1
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 94
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 65
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    return-object v4

    :goto_2
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 69
    throw p1
.end method
