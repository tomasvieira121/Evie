.class Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;
.super Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;->onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;

.field final synthetic val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;

    iput-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getParallaxOffset()F
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperParallaxOffset()F

    move-result v0

    return v0
.end method

.method public getScale(Landroid/graphics/Point;Landroid/graphics/RectF;)F
    .locals 0

    .line 291
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    return p1
.end method
