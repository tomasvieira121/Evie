.class Lcom/voxel/launcher3/WallpaperPickerActivity$6;
.super Landroid/os/AsyncTask;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;->addTemporaryWallpaperTile(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultSize:Landroid/graphics/Point;

.field final synthetic val$image:Landroid/widget/ImageView;

.field final synthetic val$pickedImageThumbnail:Landroid/widget/FrameLayout;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iput-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$defaultSize:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$image:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$pickedImageThumbnail:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    .line 970
    :try_start_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/gallery3d/common/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 971
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$defaultSize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 974
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 980
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->cancel(Z)Z

    const/4 p1, 0x0

    return-object p1

    .line 983
    :cond_0
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 967
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 989
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 991
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 992
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 993
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$pickedImageThumbnail:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "WallpaperPickerActivity"

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading thumbnail for uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 967
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
