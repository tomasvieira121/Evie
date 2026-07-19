.class public Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "ThirdPartyWallpaperPickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdPartyWallpaperTile"
.end annotation


# instance fields
.field mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 4

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.voxel.launcher3.WALLPAPER_OFFSET"

    .line 61
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperParallaxOffset()F

    move-result v3

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const/4 v0, 0x6

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    return-void
.end method
