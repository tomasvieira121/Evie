.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

.field private final synthetic f$1:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;->f$1:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;->f$0:Lcom/voxel/launcher3/WallpaperCropActivity;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$WallpaperCropActivity$YcgonMuHkdeUBQqI1HlxrQs4Avk;->f$1:Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/WallpaperCropActivity;->lambda$setCropViewTileSource$5(Lcom/voxel/launcher3/WallpaperCropActivity;Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;)V

    return-void
.end method
