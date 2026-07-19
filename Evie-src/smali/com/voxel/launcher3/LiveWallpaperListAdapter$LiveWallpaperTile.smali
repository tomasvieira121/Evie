.class public Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveWallpaperTile"
.end annotation


# instance fields
.field mInfo:Landroid/app/WallpaperInfo;

.field mThumbnail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;Landroid/content/Intent;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-object p2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    .line 124
    iget-object v2, p0, Lcom/voxel/launcher3/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    .line 125
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x6

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    return-void
.end method
