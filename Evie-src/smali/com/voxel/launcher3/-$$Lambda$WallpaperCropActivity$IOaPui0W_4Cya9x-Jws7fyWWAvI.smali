.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

.field private final synthetic f$1:Landroid/graphics/Point;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/graphics/Point;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$1:Landroid/graphics/Point;

    iput-boolean p3, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$2:Z

    iput-boolean p4, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$1:Landroid/graphics/Point;

    iget-boolean v2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$2:Z

    iget-boolean v3, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$IOaPui0W_4Cya9x-Jws7fyWWAvI;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/voxel/launcher3/WallpaperCropActivity;->lambda$setWallpaper$6(Lcom/voxel/launcher3/WallpaperCropActivity;Landroid/graphics/Point;ZZZ)V

    return-void
.end method
