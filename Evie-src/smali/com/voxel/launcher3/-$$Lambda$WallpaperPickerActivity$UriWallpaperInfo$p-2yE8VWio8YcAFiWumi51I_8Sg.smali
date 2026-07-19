.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

.field private final synthetic f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;->f$0:Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    return-void
.end method


# virtual methods
.method public final onBitmapCropped([BLandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;->f$0:Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;->f$1:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->lambda$onSave$1(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;[BLandroid/graphics/Rect;)V

    return-void
.end method
