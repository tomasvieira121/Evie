.class public Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWallpaperInfo"
.end annotation


# instance fields
.field protected mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->mFile:Ljava/io/File;

    .line 237
    iput-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;->getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object p0

    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 248
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCropViewScaleAndOffsetProvider()Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

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
    .locals 7

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    .line 243
    new-instance v2, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

    .line 244
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 245
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->getCropViewScaleAndOffsetProvider()Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

    move-result-object v5

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;

    invoke-direct {v6, v2, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;-><init>(Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setCropViewTileSource(Lcom/android/photos/BitmapRegionTileSource$BitmapSource;ZZLcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 3

    .line 259
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperParallaxOffset()F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->mFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaper(Landroid/net/Uri;ZZ)V

    return-void
.end method
