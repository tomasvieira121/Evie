.class Lcom/voxel/launcher3/Launcher$4;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V
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

    .line 1037
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1040
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 1041
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 1042
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p2}, Lcom/voxel/launcher3/Launcher;->access$1400(Lcom/voxel/launcher3/Launcher;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 1044
    :try_start_0
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1046
    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->isWallpaperDrawableValid(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1048
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z

    move-object p1, v0

    .line 1050
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p2, p2, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$4;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$1500(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method
