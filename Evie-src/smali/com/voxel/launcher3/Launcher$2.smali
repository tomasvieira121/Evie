.class Lcom/voxel/launcher3/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$2;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$2;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$2;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$2;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    return-void
.end method
