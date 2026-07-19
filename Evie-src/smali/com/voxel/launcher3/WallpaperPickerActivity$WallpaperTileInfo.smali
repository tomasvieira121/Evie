.class public abstract Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WallpaperTileInfo"
.end annotation


# instance fields
.field public mThumb:Landroid/graphics/drawable/Drawable;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    return-void
.end method

.method public onDelete(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    return-void
.end method

.method public onIndexUpdated(Ljava/lang/CharSequence;)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->isNamelessWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->mView:Landroid/view/View;

    return-void
.end method
