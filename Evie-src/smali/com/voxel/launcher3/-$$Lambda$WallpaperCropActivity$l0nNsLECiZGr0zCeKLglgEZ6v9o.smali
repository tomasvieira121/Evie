.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperCropActivity;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$1:Z

    iput-boolean p3, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$1:Z

    iget-boolean v2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$l0nNsLECiZGr0zCeKLglgEZ6v9o;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->lambda$cropImageAndSetWallpaper$7(Lcom/voxel/launcher3/WallpaperCropActivity;ZZZ)V

    return-void
.end method
