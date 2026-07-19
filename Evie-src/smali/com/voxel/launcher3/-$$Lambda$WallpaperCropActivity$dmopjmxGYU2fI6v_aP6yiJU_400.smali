.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dmopjmxGYU2fI6v_aP6yiJU_400;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/photos/BitmapRegionTileSource$BitmapSource$InBitmapProvider;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperCropActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperCropActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dmopjmxGYU2fI6v_aP6yiJU_400;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    return-void
.end method


# virtual methods
.method public final forPixelCount(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$dmopjmxGYU2fI6v_aP6yiJU_400;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->lambda$handleMessage$3(Lcom/voxel/launcher3/WallpaperCropActivity;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
