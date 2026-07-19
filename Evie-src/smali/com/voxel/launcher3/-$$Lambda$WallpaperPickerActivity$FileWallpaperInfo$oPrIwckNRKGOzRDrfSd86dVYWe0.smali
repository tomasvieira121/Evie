.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

.field private final synthetic f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;->f$0:Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;->f$0:Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$FileWallpaperInfo$oPrIwckNRKGOzRDrfSd86dVYWe0;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;->lambda$onClick$0(Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    return-void
.end method
