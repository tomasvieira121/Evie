.class Lcom/voxel/launcher3/Launcher$5;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->refreshBlurredImage()V
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
        "Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;
    .locals 12

    .line 1145
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1149
    :cond_0
    new-instance p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p1, v1}, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 1151
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1152
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->isLiveWallpaper:Z

    .line 1156
    :try_start_0
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 1163
    :goto_0
    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->isWallpaperDrawableValid(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1165
    iput-boolean v3, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->isLiveWallpaper:Z

    move-object v1, v0

    .line 1168
    :cond_1
    iget-boolean v2, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->isLiveWallpaper:Z

    if-eqz v2, :cond_2

    .line 1171
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1172
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1174
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1176
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1178
    iput-object v0, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 1180
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1184
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1185
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    if-lez v3, :cond_6

    if-gtz v2, :cond_3

    goto/16 :goto_3

    .line 1192
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1193
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1196
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1199
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1200
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    mul-int v8, v6, v2

    mul-int v9, v3, v7

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    if-le v8, v9, :cond_4

    int-to-float v2, v2

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v3, v3

    int-to-float v6, v6

    mul-float v6, v6, v2

    sub-float/2addr v3, v6

    mul-float v3, v3, v11

    goto :goto_1

    :cond_4
    int-to-float v3, v3

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v2, v2

    int-to-float v6, v7

    mul-float v6, v6, v3

    sub-float/2addr v2, v6

    mul-float v2, v2, v11

    move v10, v2

    move v2, v3

    const/4 v3, 0x0

    .line 1210
    :goto_1
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr v3, v11

    float-to-int v2, v3

    int-to-float v2, v2

    add-float/2addr v10, v11

    float-to-int v3, v10

    int-to-float v3, v3

    .line 1211
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1212
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1213
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1214
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1215
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1217
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1219
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1220
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v4, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1221
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1223
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    const/16 v3, 0x19

    const v4, 0x3f333333    # 0.7f

    invoke-static {v2, v0, v3, v4}, Lcom/voxel/simplesearchlauncher/utils/Blur;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1225
    iput-object v0, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1228
    :goto_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_5

    .line 1231
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->refreshSubtleBackgroundDrawable(Landroid/graphics/drawable/Drawable;Z)V

    :cond_5
    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$5;->doInBackground([Ljava/lang/Void;)Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iget-object v1, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1243
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iget-object v1, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1244
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-boolean v1, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->isLiveWallpaper:Z

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->access$1402(Lcom/voxel/launcher3/Launcher;Z)Z

    .line 1245
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Hotseat;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->enableBlurredBackground(Z)V

    .line 1250
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    const v2, 0x7f0800cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$5;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher;->access$1602(Lcom/voxel/launcher3/Launcher;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1141
    check-cast p1, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$5;->onPostExecute(Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;)V

    return-void
.end method
