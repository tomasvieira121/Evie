.class Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;
.super Lcom/android/gallery3d/common/BitmapCropTask;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;->getDefaultWallpaperCropTask(Lcom/voxel/launcher3/WallpaperPickerActivity;Lcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)Lcom/android/gallery3d/common/BitmapCropTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;

.field final synthetic val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 379
    iput-object v0, v10, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 382
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 386
    :try_start_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    .line 387
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getBuiltInDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 388
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 389
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 390
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 393
    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-virtual {v3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    invoke-static {v3, v4, p1, v2, v1}, Lcom/voxel/launcher3/NycWallpaperUtils;->setStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->val$a:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-static {v1, p1}, Lcom/voxel/launcher3/NycWallpaperUtils;->clear(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WallpaperPickerActivity"

    const-string v1, "Setting wallpaper to default threw exception"

    .line 404
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "WallpaperPickerActivity"

    const-string v2, "Setting wallpaper to default threw exception"

    .line 401
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 408
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
