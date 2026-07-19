.class Lcom/voxel/launcher3/Launcher$8;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/app/WallpaperManager;)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$8;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$8;->val$wallpaperManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1857
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$8;->val$wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1859
    :try_start_1
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->isWallpaperDrawableValid(Landroid/graphics/drawable/Drawable;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_0

    .line 1861
    :try_start_2
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$8;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 1864
    :catch_1
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$8;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z

    :goto_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1852
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$8;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$8;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$8;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1852
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$8;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
