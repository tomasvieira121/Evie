.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperCropActivity;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$1:I

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$2:I

    iput-boolean p4, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$3:Z

    iput-boolean p5, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$1:I

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$2:I

    iget-boolean v3, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$3:Z

    iget-boolean v4, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$7njoxc4A1MtZuif8P5B-I9l5DOk;->f$4:Z

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/WallpaperCropActivity;->lambda$cropImageAndSetWallpaper$8(Lcom/voxel/launcher3/WallpaperCropActivity;IIZZZ)V

    return-void
.end method
