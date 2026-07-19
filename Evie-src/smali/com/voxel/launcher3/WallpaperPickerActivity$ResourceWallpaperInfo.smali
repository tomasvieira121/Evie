.class public Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceWallpaperInfo"
.end annotation


# instance fields
.field private mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    .line 278
    iput p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    .line 279
    iput-object p3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;->getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object p0

    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 300
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    :cond_0
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
    .locals 7

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    .line 285
    new-instance v2, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;

    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    invoke-direct {v2, v0, v1}, Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;-><init>(Landroid/content/res/Resources;I)V

    .line 287
    new-instance v5, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;

    invoke-direct {v5, p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;

    invoke-direct {v6, v2, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;-><init>(Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setCropViewTileSource(Lcom/android/photos/BitmapRegionTileSource$BitmapSource;ZZLcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->cropImageAndSetWallpaper(Landroid/content/res/Resources;IZZ)V

    return-void
.end method
