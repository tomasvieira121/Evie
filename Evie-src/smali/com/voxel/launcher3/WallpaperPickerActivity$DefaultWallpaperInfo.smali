.class public Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultWallpaperInfo"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getDefaultWallpaperCropTask(Lcom/voxel/launcher3/WallpaperPickerActivity;Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)Lcom/android/gallery3d/common/BitmapCropTask;
    .locals 13

    .line 378
    new-instance v12, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    return-object v12
.end method

.method static synthetic lambda$onSave$0(Lcom/voxel/launcher3/WallpaperPickerActivity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 364
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setResult(I)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 8

    .line 328
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getCropView()Lcom/voxel/launcher3/CropView;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 330
    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v7}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "WallpaperPickerActivity"

    const-string v1, "Null default wallpaper encountered."

    .line 332
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 333
    invoke-virtual {v0, p1, p1}, Lcom/voxel/launcher3/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    return-void

    .line 337
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    invoke-direct {v0}, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;-><init>()V

    const/4 v2, 0x0

    .line 338
    iput-boolean v2, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->moveToLeft:Z

    .line 339
    iput-boolean v2, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->touchEnabled:Z

    .line 340
    new-instance v2, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    invoke-direct {v2}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;-><init>()V

    iput-object v2, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->scaleAndOffsetProvider:Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    .line 341
    new-instance v2, Lcom/voxel/launcher3/DrawableTileSource;

    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v1, v4}, Lcom/voxel/launcher3/DrawableTileSource;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    iput-object v2, v0, Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;->result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    const/4 v1, 0x1

    .line 343
    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->onLoadRequestComplete(Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;Z)V

    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 4

    .line 348
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 350
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clear()V

    .line 351
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WallpaperPickerActivity"

    const-string v3, "Setting wallpaper to default threw exception"

    .line 355
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setResult(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "WallpaperPickerActivity"

    const-string v2, "Setting wallpaper to default threw exception"

    .line 353
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :goto_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->finish()V

    goto :goto_1

    .line 361
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$DefaultWallpaperInfo$VKuPb_7OFhF5QgkvTkKxlJMaGKE;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$DefaultWallpaperInfo$VKuPb_7OFhF5QgkvTkKxlJMaGKE;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    .line 368
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;->getDefaultWallpaperCropTask(Lcom/voxel/launcher3/WallpaperPickerActivity;Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)Lcom/android/gallery3d/common/BitmapCropTask;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getOnDialogCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 370
    invoke-static {p1, v0, v1}, Lcom/voxel/launcher3/NycWallpaperUtils;->executeCropTaskAfterPrompt(Landroid/content/Context;Landroid/os/AsyncTask;Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    return-void
.end method
