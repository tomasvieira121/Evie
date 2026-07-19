.class Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;
.super Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
.source "SavedWallpaperImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->getCropViewScaleAndOffsetProvider()Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;->this$0:Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCropView(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/android/photos/views/TiledImageRenderer$TileSource;)V
    .locals 3

    .line 79
    iget-object p1, p1, Lcom/voxel/launcher3/WallpaperCropActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    iget-object p2, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;->this$0:Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    invoke-static {p2}, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->access$000(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)[Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;->this$0:Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    invoke-static {v0}, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->access$000(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)[Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile$1;->this$0:Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    invoke-static {v1}, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->access$000(Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;)[Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/CropView;->setScaleAndCenter(FFF)V

    return-void
.end method
