.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;

.field private final synthetic f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;->f$0:Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;->f$0:Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$ResourceWallpaperInfo$ygAF1T3RUwL_OGef3HMXo5ew-Rw;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->lambda$onClick$0(Lcom/android/photos/BitmapRegionTileSource$ResourceBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    return-void
.end method
