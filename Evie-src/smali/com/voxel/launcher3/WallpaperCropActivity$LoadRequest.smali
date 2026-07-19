.class Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadRequest"
.end annotation


# instance fields
.field moveToLeft:Z

.field postExecute:Ljava/lang/Runnable;

.field result:Lcom/android/photos/views/TiledImageRenderer$TileSource;

.field scaleAndOffsetProvider:Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;

.field src:Lcom/android/photos/BitmapRegionTileSource$BitmapSource;

.field touchEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
