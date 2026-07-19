.class public Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;
.source "SavedWallpaperImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/SavedWallpaperImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedWallpaperTile"
.end annotation


# instance fields
.field private mDbId:I

.field private mExtras:[Ljava/lang/Float;


# direct methods
.method public constructor <init>(ILjava/io/File;Landroid/graphics/drawable/Drawable;[Ljava/lang/Float;)V
    .locals 0

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    .line 64
    iput p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    if-eqz p4, :cond_0

    .line 65
    array-length p1, p4

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mExtras:[Ljava/lang/Float;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)[Ljava/lang/Float;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mExtras:[Ljava/lang/Float;

    return-object p0
.end method


# virtual methods
.method protected getCropViewScaleAndOffsetProvider()Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mExtras:[Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;-><init>(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDelete(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getSavedImages()Lcom/voxel/launcher3/SavedWallpaperImages;

    move-result-object p1

    iget v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/SavedWallpaperImages;->deleteImage(I)V

    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mExtras:[Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperParallaxOffset()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;ZZ)V

    :goto_1
    return-void
.end method
