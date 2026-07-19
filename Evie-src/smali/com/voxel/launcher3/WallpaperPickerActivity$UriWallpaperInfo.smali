.class public Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;
.super Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriWallpaperInfo"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;)Landroid/net/Uri;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic lambda$onClick$0(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 1

    .line 163
    invoke-virtual {p1}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;->getLoadingState()Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object p1

    sget-object v0, Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->selectTile(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12016c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onSave$1(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;[BLandroid/graphics/Rect;)V
    .locals 9

    .line 181
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p2

    .line 184
    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 186
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getSavedImages()Lcom/voxel/launcher3/SavedWallpaperImages;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/voxel/launcher3/SavedWallpaperImages;->writeImage(Landroid/graphics/Bitmap;[B)V

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v2

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 192
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5, v6, v7, p2}, Lcom/android/gallery3d/common/Utils;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v4

    .line 193
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 194
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-object v4, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    .line 197
    invoke-static {p3, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    .line 199
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    invoke-virtual {v4, v3, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 203
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 205
    iget p3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    :cond_1
    iget-object p3, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {p3}, Lcom/voxel/launcher3/CropView;->getCenter()Landroid/graphics/PointF;

    move-result-object p3

    const/4 v2, 0x3

    .line 211
    new-array v2, v2, [Ljava/lang/Float;

    iget-object v3, p1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    .line 212
    invoke-virtual {v3}, Lcom/voxel/launcher3/CropView;->getScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p2

    iget p2, p3, Landroid/graphics/PointF;->x:F

    .line 213
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v0

    const/4 p2, 0x2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 214
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v2, p2

    .line 216
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getSavedImages()Lcom/voxel/launcher3/SavedWallpaperImages;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v2}, Lcom/voxel/launcher3/SavedWallpaperImages;->writeImage(Landroid/graphics/Bitmap;Landroid/net/Uri;[Ljava/lang/Float;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 7

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    .line 160
    new-instance v2, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;

    .line 161
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v0, v1}, Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 162
    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$rMUQrRMlP-1SeTqJaAFlK-Rsq2Y;

    invoke-direct {v6, p0, v2, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$rMUQrRMlP-1SeTqJaAFlK-Rsq2Y;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/android/photos/BitmapRegionTileSource$UriBitmapSource;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setCropViewTileSource(Lcom/android/photos/BitmapRegionTileSource$BitmapSource;ZZLcom/voxel/launcher3/WallpaperCropActivity$CropViewScaleAndOffsetProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 4

    .line 179
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$UriWallpaperInfo$p-2yE8VWio8YcAFiWumi51I_8Sg;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    .line 219
    invoke-virtual {p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperParallaxOffset()F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/gallery3d/common/BitmapCropTask$OnBitmapCroppedHandler;ZZ)V

    return-void
.end method
