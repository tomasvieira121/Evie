.class public Lcom/voxel/launcher3/WallpaperCropActivity;
.super Lcom/voxel/launcher3/base/BaseActivity;
.source "WallpaperCropActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;,
        Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;
    }
.end annotation


# instance fields
.field protected mCropView:Lcom/voxel/launcher3/CropView;

.field mCurrentLoadRequest:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

.field private mLoaderHandler:Landroid/os/Handler;

.field private mLoaderThread:Landroid/os/HandlerThread;

.field private final mOnDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected mProgressView:Landroid/view/View;

.field mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mSetWallpaperButton:Landroid/view/View;

.field private mTempStorageForDecoding:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/voxel/launcher3/base/BaseActivity;-><init>()V

    const/16 v0, 0x4000

    .line 87
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mTempStorageForDecoding:[B

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    .line 92
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$8hk3JIXTSE7nqmF4Sy8M5x6FulU;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$8hk3JIXTSE7nqmF4Sy8M5x6FulU;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;)V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mOnDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static synthetic lambda$cropImageAndSetWallpaper$7(Lcom/voxel/launcher3/WallpaperCropActivity;ZZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, v0, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 340
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->setResult(I)V

    .line 341
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->finish()V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const p1, 0x7f010013

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$cropImageAndSetWallpaper$8(Lcom/voxel/launcher3/WallpaperCropActivity;IIZZZ)V
    .locals 0

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 437
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->setResult(I)V

    .line 438
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->finish()V

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    const p2, 0x7f010013

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/WallpaperCropActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$handleMessage$3(Lcom/voxel/launcher3/WallpaperCropActivity;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 184
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    monitor-enter v0

    const v1, 0x7fffffff

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v5, v5, v6

    if-lt v5, p1, :cond_0

    if-ge v5, v1, :cond_0

    move-object v3, v4

    move v1, v5

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 195
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public static synthetic lambda$handleMessage$4(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCurrentLoadRequest:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    if-ne p1, v0, :cond_1

    .line 217
    iget-object v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->src:Lcom/android/photos/BitmapRegionTileSource$BitmapSource;

    .line 218
    invoke-virtual {v0}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object v0

    sget-object v1, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->onLoadRequestComplete(Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;Z)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->addReusableBitmap(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/app/ActionBar;Landroid/net/Uri;Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/voxel/launcher3/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;ZZ)V

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;->getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object p1

    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1202cf

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 154
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->finish()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mSetWallpaperButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/content/DialogInterface;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    const p1, 0x7f0a02ee

    .line 95
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setCropViewTileSource$5(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCurrentLoadRequest:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    if-ne v0, p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mProgressView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setWallpaper$6(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/graphics/Point;ZZZ)V
    .locals 1

    .line 312
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 314
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->setResult(I)V

    .line 315
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->finish()V

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const p2, 0x7f010013

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/WallpaperCropActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method addReusableBitmap(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 236
    :try_start_0
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_KITKAT:Z

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/photos/BitmapRegionTileSource;

    if-eqz v1, :cond_0

    .line 237
    check-cast p1, Lcom/android/photos/BitmapRegionTileSource;

    invoke-virtual {p1}, Lcom/android/photos/BitmapRegionTileSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected cropImageAndSetWallpaper(Landroid/content/res/Resources;IZZ)V
    .locals 11

    .line 330
    invoke-static {p1, p2}, Lcom/android/gallery3d/common/BitmapUtils;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v5

    .line 331
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/voxel/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v1

    .line 333
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-static {v2, v0, v3, v4, v6}, Lcom/android/gallery3d/common/Utils;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v4

    .line 335
    new-instance v10, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;

    invoke-direct {v10, p0, p3, p4}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;ZZ)V

    .line 347
    new-instance p3, Lcom/android/gallery3d/common/BitmapCropTask;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object p4

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    .line 349
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getOnDialogCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/voxel/launcher3/NycWallpaperUtils;->executeCropTaskAfterPrompt(Landroid/content/Context;Landroid/os/AsyncTask;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;ZZ)V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 357
    iget-object v0, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 361
    iget-object v2, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CropView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 365
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 366
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 367
    iget v4, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 369
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 369
    invoke-static {v5, v8}, Lcom/voxel/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v5

    .line 372
    iget-object v8, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v8}, Lcom/voxel/launcher3/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v12

    .line 374
    iget-object v8, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v8}, Lcom/voxel/launcher3/CropView;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v8

    .line 376
    iget-object v9, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v9}, Lcom/voxel/launcher3/CropView;->getImageRotation()I

    move-result v13

    .line 377
    iget-object v9, v6, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v9}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v9, v10

    .line 380
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v11, v13

    .line 381
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v11, 0x2

    .line 382
    new-array v11, v11, [F

    iget v14, v8, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    aput v14, v11, v1

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v11, v3

    .line 383
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 384
    aget v8, v11, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v11, v1

    .line 385
    aget v8, v11, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v11, v3

    .line 390
    iget v8, v12, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v12, Landroid/graphics/RectF;->left:F

    .line 391
    aget v8, v11, v1

    iget v14, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v12, Landroid/graphics/RectF;->right:F

    .line 392
    iget v8, v12, Landroid/graphics/RectF;->top:F

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v12, Landroid/graphics/RectF;->top:F

    .line 393
    aget v8, v11, v3

    iget v10, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 400
    aget v1, v11, v1

    iget v10, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    iget v10, v12, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v8

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 402
    aget v1, v11, v1

    iget v10, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    goto :goto_2

    :cond_3
    iget v1, v12, Landroid/graphics/RectF;->left:F

    .line 405
    :goto_2
    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v10, v14

    .line 406
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz v0, :cond_4

    .line 409
    iget v0, v12, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 410
    iget v0, v12, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 413
    iget v0, v12, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 415
    :cond_5
    iget v0, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    :goto_3
    if-eqz v4, :cond_6

    .line 421
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v5, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 423
    :cond_6
    iget v0, v5, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 424
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    .line 425
    aget v1, v11, v3

    iget v2, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    .line 426
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v0, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 428
    iget v1, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, v12, Landroid/graphics/RectF;->top:F

    .line 429
    iget v1, v12, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, v12, Landroid/graphics/RectF;->bottom:F

    .line 431
    :goto_4
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 432
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 434
    new-instance v18, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v2, v14

    move v3, v15

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;IIZZ)V

    .line 444
    new-instance v0, Lcom/android/gallery3d/common/BitmapCropTask;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v18}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    if-eqz v7, :cond_7

    .line 447
    invoke-virtual {v0, v7}, Lcom/android/gallery3d/common/BitmapCropTask;->setOnBitmapCropped(Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;)V

    .line 449
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getOnDialogCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/voxel/launcher3/NycWallpaperUtils;->executeCropTaskAfterPrompt(Landroid/content/Context;Landroid/os/AsyncTask;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public enableRotation()Z
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getOnDialogCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mOnDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    .line 181
    :try_start_0
    iget-object v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->src:Lcom/android/photos/BitmapRegionTileSource$BitmapSource;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dmopjmxGYU2fI6v_aP6yiJU_400;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dmopjmxGYU2fI6v_aP6yiJU_400;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/photos/BitmapRegionTileSource$BitmapSource;->loadInBackground(Lcom/android/photos/BitmapRegionTileSource$BitmapSource$InBitmapProvider;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    new-instance v0, Lcom/android/photos/BitmapRegionTileSource;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->src:Lcom/android/photos/BitmapRegionTileSource$BitmapSource;

    iget-object v4, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mTempStorageForDecoding:[B

    invoke-direct {v0, v2, v3, v4}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/android/photos/BitmapRegionTileSource$BitmapSource;[B)V

    iput-object v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 215
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$ObVGik7LJHDntanQPdeXiLdzvtc;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$ObVGik7LJHDntanQPdeXiLdzvtc;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v1

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 210
    :cond_0
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected init()V
    .locals 8

    const v0, 0x7f0d0133

    .line 116
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->setContentView(I)V

    const v0, 0x7f0a00b9

    .line 118
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CropView;

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    const v0, 0x7f0a018e

    .line 119
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mProgressView:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Launcher3.CropActivity"

    const-string v1, "No URI passed in intent, exiting WallpaperCropActivity"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->finish()V

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d001c

    .line 133
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 134
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$Xd-mPfSmAd0JINazc8Pltff1HKo;

    invoke-direct {v3, p0, v1, v0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$Xd-mPfSmAd0JINazc8Pltff1HKo;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/app/ActionBar;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0262

    .line 144
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mSetWallpaperButton:Landroid/view/View;

    .line 147
    new-instance v3, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

    .line 148
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 149
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mSetWallpaperButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 150
    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dkkLoDe8H66Yt2fVIKRZVWly2k8;

    invoke-direct {v7, p0, v3}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dkkLoDe8H66Yt2fVIKRZVWly2k8;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 159
    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/WallpaperCropActivity;->setCropViewTileSource(Lcom/android/photos/BitmapRegionTileSource$BitmapSource;ZZLcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected isActivityDestroyed()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 230
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/voxel/launcher3/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "wallpaper_loader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderThread:Landroid/os/HandlerThread;

    .line 106
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderHandler:Landroid/os/Handler;

    .line 109
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->init()V

    .line 110
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->enableRotation()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->destroy()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 170
    :cond_1
    invoke-super {p0}, Lcom/voxel/launcher3/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onLoadRequestComplete(Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCurrentLoadRequest:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    if-eqz p2, :cond_3

    .line 252
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/CropView;->getTileSource()Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-result-object p2

    .line 253
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    iget-object v2, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-virtual {v1, v2, v0}, Lcom/voxel/launcher3/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    iget-boolean v1, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->touchEnabled:Z

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CropView;->setTouchEnabled(Z)V

    .line 255
    iget-boolean v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->moveToLeft:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->moveToLeft()V

    .line 258
    :cond_0
    iget-object v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->scaleAndOffsetProvider:Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->scaleAndOffsetProvider:Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    iget-object v1, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-virtual {v0, p0, v1}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;->updateCropView(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/android/photos/views/TiledImageRenderer$TileSource;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 266
    invoke-interface {p2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getPreview()Lcom/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->yield()V

    .line 268
    :cond_2
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/WallpaperCropActivity;->addReusableBitmap(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V

    .line 270
    :cond_3
    iget-object p2, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->postExecute:Ljava/lang/Runnable;

    if-eqz p2, :cond_4

    .line 271
    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->postExecute:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mProgressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setCropViewTileSource(Lcom/android/photos/BitmapRegionTileSource$BitmapSource;ZZLcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;Ljava/lang/Runnable;)V
    .locals 1

    .line 278
    new-instance v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    invoke-direct {v0}, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;-><init>()V

    .line 279
    iput-boolean p3, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->moveToLeft:Z

    .line 280
    iput-object p1, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->src:Lcom/android/photos/BitmapRegionTileSource$BitmapSource;

    .line 281
    iput-boolean p2, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->touchEnabled:Z

    .line 282
    iput-object p5, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->postExecute:Ljava/lang/Runnable;

    .line 283
    iput-object p4, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->scaleAndOffsetProvider:Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    .line 284
    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mCurrentLoadRequest:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    .line 287
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mLoaderHandler:Landroid/os/Handler;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperCropActivity;->mProgressView:Landroid/view/View;

    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;

    invoke-direct {p2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setWallpaper(Landroid/net/Uri;ZZ)V
    .locals 11

    .line 307
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/common/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 308
    new-instance v0, Lcom/android/gallery3d/common/BitmapCropTask;

    .line 309
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    .line 310
    invoke-virtual {v0}, Lcom/android/gallery3d/common/BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object p1

    .line 311
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;-><init>(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/graphics/Point;ZZ)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/BitmapCropTask;->setOnEndRunnable(Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    const/4 p1, 0x1

    .line 322
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/BitmapCropTask;->setNoCrop(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getOnDialogCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/voxel/launcher3/NycWallpaperUtils;->executeCropTaskAfterPrompt(Landroid/content/Context;Landroid/os/AsyncTask;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected updateWallpaperDimensions(II)V
    .locals 3

    const-string v0, "com.voxel.launcher3.WallpaperCropActivity"

    .line 454
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, "wallpaper.width"

    .line 457
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "wallpaper.height"

    .line 458
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string p1, "wallpaper.width"

    .line 460
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "wallpaper.height"

    .line 461
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 464
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 465
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 464
    invoke-static {p1, v0, p2, v1, v2}, Lcom/voxel/launcher3/util/WallpaperUtils;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V

    return-void
.end method
