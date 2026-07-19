.class Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleWallpapersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0136

    .line 1227
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1228
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1232
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v1, "WallpaperPickerActivity"

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding thumbnail for wallpaper #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p1, p2, p3, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->createImageTileView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
