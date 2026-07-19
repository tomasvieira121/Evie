.class public Lcom/voxel/launcher3/WallpaperPickerActivity;
.super Lcom/voxel/launcher3/WallpaperCropActivity;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$PickImageInfo;,
        Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field mActionModeCallback:Landroid/view/ActionMode$Callback;

.field mIgnoreNextTap:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSavedImages:Lcom/voxel/launcher3/SavedWallpaperImages;

.field mSelectedIndex:I

.field mSelectedTile:Landroid/view/View;

.field mTempWallpaperTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

.field private mWallpaperParallaxOffset:F

.field mWallpaperScrollContainer:Landroid/widget/HorizontalScrollView;

.field mWallpaperStrip:Landroid/view/View;

.field mWallpapersView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    return-void
.end method

.method private addLongPressHandler(Landroid/view/View;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private addTemporaryWallpaperTile(Landroid/net/Uri;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 940
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 942
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 943
    instance-of v4, v3, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

    invoke-static {v3}, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->access$000(Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 952
    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 953
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0136

    iget-object v3, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    .line 957
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 958
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 959
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 960
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const v1, 0x7f0a02ea

    .line 964
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    .line 965
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v7

    .line 966
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 967
    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$6;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 998
    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1000
    new-instance v0, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;-><init>(Landroid/net/Uri;)V

    .line 1001
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity$UriWallpaperInfo;->setView(Landroid/view/View;)V

    .line 1003
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addLongPressHandler(Landroid/view/View;)V

    .line 1004
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->updateTileIndices()V

    .line 1005
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_3

    .line 1007
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private addWallpapers(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1197
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    .line 1198
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    const-string v3, "drawable"

    .line 1199
    invoke-virtual {p2, v2, v3, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_small"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-virtual {p2, v2, v4, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    new-instance v4, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;

    .line 1205
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v4, p2, v3, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    .line 1206
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, "WallpaperPickerActivity"

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createImageTileView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0d0136

    const/4 v0, 0x0

    .line 1245
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const p0, 0x7f0a02ea

    .line 1250
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 1253
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 1254
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_1
    return-object p1
.end method

.method static createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 14

    move-object v0, p0

    .line 899
    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 900
    iget v12, v0, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_0

    .line 904
    new-instance v10, Lcom/android/gallery3d/common/BitmapCropTask;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p6

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    move-object v9, v10

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 907
    new-instance v9, Lcom/android/gallery3d/common/BitmapCropTask;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p3

    move/from16 v3, p6

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>([BLandroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    goto :goto_0

    .line 910
    :cond_1
    new-instance v13, Lcom/android/gallery3d/common/BitmapCropTask;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, p6

    move v6, v11

    move v7, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/gallery3d/common/BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLcom/android/gallery3d/common/BitmapCropTask$OnEndCropHandler;)V

    move-object v9, v13

    .line 913
    :goto_0
    invoke-virtual {v9}, Lcom/android/gallery3d/common/BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 914
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_4

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 918
    :cond_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v3, p6

    int-to-float v3, v3

    .line 919
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x2

    .line 920
    new-array v3, v3, [F

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    .line 921
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 922
    aget v0, v3, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v3, v5

    .line 923
    aget v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v3, v4

    .line 925
    aget v0, v3, v5

    float-to-int v0, v0

    aget v2, v3, v4

    float-to-int v2, v2

    move/from16 v3, p7

    invoke-static {v0, v2, v11, v12, v3}, Lcom/android/gallery3d/common/Utils;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 927
    invoke-virtual {v9, v0}, Lcom/android/gallery3d/common/BitmapCropTask;->setCropBounds(Landroid/graphics/RectF;)V

    .line 929
    invoke-virtual {v9, v4}, Lcom/android/gallery3d/common/BitmapCropTask;->cropBitmap(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    invoke-virtual {v9}, Lcom/android/gallery3d/common/BitmapCropTask;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private findBundledWallpapers()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;",
            ">;"
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1031
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1033
    invoke-static {v0}, Lcom/voxel/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/voxel/launcher3/Partner;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1035
    invoke-virtual {v0}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "partner_wallpapers"

    const-string v5, "array"

    .line 1037
    invoke-virtual {v0}, Lcom/voxel/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1036
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1039
    invoke-virtual {v0}, Lcom/voxel/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addWallpapers(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 1043
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/launcher3/Partner;->getWallpaperDirectory()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1044
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1045
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1046
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    .line 1050
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const-string v10, ""

    const/4 v11, -0x1

    if-lt v9, v11, :cond_2

    .line 1053
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1054
    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v9, "_small"

    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 1062
    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_small"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1065
    new-instance v9, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v9, v7, v10}, Lcom/voxel/launcher3/WallpaperPickerActivity$FileWallpaperInfo;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1071
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWallpaperArrayResourceId()Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1075
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1076
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addWallpapers(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 1081
    invoke-virtual {v0}, Lcom/voxel/launcher3/Partner;->hideDefaultWallpaper()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1083
    :cond_7
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_KITKAT:Z

    if-eqz v0, :cond_8

    .line 1084
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultWallpaper()Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getPreKKDefaultWallpaperInfo()Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_9

    .line 1086
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_9
    return-object v1
.end method

.method private getDefaultThumbFile()Ljava/io/File;
    .locals 4

    .line 1108
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "default_thumb2.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;
    .locals 3

    .line 891
    new-instance v0, Landroid/graphics/Point;

    const v1, 0x7f07027d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07027c

    .line 892
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getDefaultWallpaper()Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1152
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbFile()Ljava/io/File;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1156
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_1

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1160
    invoke-static {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    .line 1161
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v4 .. v9}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1164
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1166
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1167
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v2, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1168
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1169
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 1172
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->saveDefaultWallpaperThumb(Landroid/graphics/Bitmap;)Z

    move-result v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1176
    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity$DefaultWallpaperInfo;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_3
    return-object v3
.end method

.method private getPreKKDefaultWallpaperInfo()Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;
    .locals 10

    .line 1125
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v0, "default_wallpaper"

    const-string v1, "drawable"

    const-string v2, "android"

    .line 1126
    invoke-virtual {v8, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1128
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbFile()Ljava/io/File;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1136
    invoke-static {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v1

    .line 1137
    invoke-static {v0, v9}, Lcom/android/gallery3d/common/BitmapUtils;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v6

    .line 1139
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    move v5, v9

    .line 1138
    invoke-static/range {v0 .. v7}, Lcom/voxel/launcher3/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1141
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->saveDefaultWallpaperThumb(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1145
    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v8, v9, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity$ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$init$1(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/view/View;)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    .line 523
    invoke-virtual {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 524
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->selectTile(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 525
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setWallpaperButtonEnabled(Z)V

    .line 527
    :cond_2
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->onClick(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/view/View;)Z
    .locals 3

    .line 531
    check-cast p1, Lcom/voxel/launcher3/CheckableFrameLayout;

    .line 532
    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckableFrameLayout;->toggle()V

    .line 534
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    .line 539
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 541
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$init$3(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/app/ActionBar;Landroid/view/View;)V
    .locals 1

    .line 637
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/CropView;->getTileSource()Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 639
    iget-object p2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 640
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 642
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    .line 643
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->onSave(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    goto :goto_0

    :cond_0
    const-string p1, "WallpaperPickerActivity"

    const-string p2, "\"Set wallpaper\" was clicked when no tile was selected"

    .line 647
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setSystemWallpaperVisiblity$0(Lcom/voxel/launcher3/WallpaperPickerActivity;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->changeWallpaperFlags(Z)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CropView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private saveDefaultWallpaperThumb(Landroid/graphics/Bitmap;)Z
    .locals 5

    .line 1114
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "default_thumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1115
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "default_thumb2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/16 v0, 0x10

    .line 1117
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 1118
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "default_thumb2.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getDefaultThumbFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->writeImageToFileAsJpeg(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method private writeImageToFileAsJpeg(Ljava/io/File;Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1094
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1096
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1097
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1098
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    const-string v1, "WallpaperPickerActivity"

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while writing bitmap to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v0
.end method


# virtual methods
.method changeWallpaperFlags(Z)V
    .locals 2

    const/high16 v0, 0x100000

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 449
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v0

    if-eq p1, v1, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method

.method public enableRotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCropView()Lcom/voxel/launcher3/CropView;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    return-object v0
.end method

.method public getSavedImages()Lcom/voxel/launcher3/SavedWallpaperImages;
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSavedImages:Lcom/voxel/launcher3/SavedWallpaperImages;

    return-object v0
.end method

.method protected getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;
    .locals 10

    .line 781
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 782
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 781
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v6, "datetaken"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "datetaken DESC LIMIT 1"

    invoke-static/range {v4 .. v9}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 799
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 800
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 801
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v4, v5, v6, v1, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 804
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3
.end method

.method public getWallpaperArrayResourceId()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1186
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1189
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperParallaxOffset()F
    .locals 1

    .line 747
    iget v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperParallaxOffset:F

    return v0
.end method

.method protected init()V
    .locals 5

    const v0, 0x7f0d0134

    .line 467
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setContentView(I)V

    const v0, 0x7f0a00b9

    .line 469
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CropView;

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    .line 470
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CropView;->setVisibility(I)V

    const v0, 0x7f0a018e

    .line 472
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mProgressView:Landroid/view/View;

    const v0, 0x7f0a02ed

    .line 473
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperScrollContainer:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a02ee

    .line 474
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    .line 475
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$1;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CropView;->setTouchCallback(Lcom/voxel/launcher3/CropView$TouchCallback;)V

    .line 514
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$kTokmGYwEwBmNkp9BRYRdlVRSOE;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$kTokmGYwEwBmNkp9BRYRdlVRSOE;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    .line 530
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$w_9preD-RsrDbWUpm6_-NWIJMLc;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$w_9preD-RsrDbWUpm6_-NWIJMLc;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 547
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.voxel.launcher3.WALLPAPER_OFFSET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperParallaxOffset:F

    .line 550
    invoke-direct {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findBundledWallpapers()Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x7f0a02ec

    .line 551
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    .line 552
    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity$SimpleWallpapersAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 553
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    .line 556
    new-instance v0, Lcom/voxel/launcher3/SavedWallpaperImages;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/SavedWallpaperImages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSavedImages:Lcom/voxel/launcher3/SavedWallpaperImages;

    .line 557
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSavedImages:Lcom/voxel/launcher3/SavedWallpaperImages;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SavedWallpaperImages;->loadThumbnailsAndImageIdList()V

    .line 558
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSavedImages:Lcom/voxel/launcher3/SavedWallpaperImages;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/voxel/launcher3/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    const v0, 0x7f0a018d

    .line 562
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 563
    new-instance v1, Lcom/voxel/launcher3/LiveWallpaperListAdapter;

    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/voxel/launcher3/LiveWallpaperListAdapter;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance v4, Lcom/voxel/launcher3/WallpaperPickerActivity$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity$2;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/widget/LinearLayout;Lcom/voxel/launcher3/LiveWallpaperListAdapter;)V

    invoke-virtual {v1, v4}, Lcom/voxel/launcher3/LiveWallpaperListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const v0, 0x7f0a02b6

    .line 575
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 576
    new-instance v1, Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter;

    .line 577
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/voxel/launcher3/ThirdPartyWallpaperPickerListAdapter;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V

    const v0, 0x7f0a019b

    .line 581
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 582
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0135

    .line 583
    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 584
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 587
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0a02ea

    .line 590
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 591
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06011c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 593
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/WallpaperPickerActivity$PickImageInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/WallpaperPickerActivity$PickImageInfo;-><init>()V

    .line 597
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity$PickImageInfo;->setView(Landroid/view/View;)V

    .line 599
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$3;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$3;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CropView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 618
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->updateTileIndices()V

    .line 621
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->initializeScrollForRtl()V

    .line 624
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const-wide/16 v1, 0x0

    .line 626
    invoke-virtual {v0, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 627
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 628
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 632
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d001c

    .line 633
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 634
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$l8psbcdjh_bFPhtYdsn4GuBeGe4;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$l8psbcdjh_bFPhtYdsn4GuBeGe4;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0262

    .line 650
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSetWallpaperButton:Landroid/view/View;

    .line 653
    new-instance v0, Lcom/voxel/launcher3/WallpaperPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$4;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method initializeScrollForRtl()V
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperScrollContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 769
    new-instance v1, Lcom/voxel/launcher3/WallpaperPickerActivity$5;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/WallpaperPickerActivity$5;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 1013
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 1015
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addTemporaryWallpaperTile(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 1020
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setResult(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLoadRequestComplete(Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;Z)V
    .locals 0

    .line 459
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/WallpaperCropActivity;->onLoadRequestComplete(Lcom/voxel/launcher3/WallpaperCropActivity$LoadRequest;Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 461
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->setSystemWallpaperVisiblity(Z)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "TEMP_WALLPAPER_TILES"

    .line 824
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x1

    .line 826
    invoke-direct {p0, v1, v2}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addTemporaryWallpaperTile(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "SELECTED_INDEX"

    const/4 v1, -0x1

    .line 828
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TEMP_WALLPAPER_TILES"

    .line 819
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "SELECTED_INDEX"

    .line 820
    iget v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 810
    invoke-super {p0}, Lcom/voxel/launcher3/WallpaperCropActivity;->onStop()V

    const v0, 0x7f0a02ee

    .line 811
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    .line 812
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 814
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 834
    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 835
    invoke-virtual {p2, v0, v1, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 836
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 837
    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    .line 838
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->setView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 841
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->addLongPressHandler(Landroid/view/View;)V

    .line 843
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method selectTile(Landroid/view/View;)V
    .locals 5

    .line 752
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    .line 756
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedTile:Landroid/view/View;

    const/4 v0, 0x1

    .line 757
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 758
    iget-object v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSelectedIndex:I

    .line 762
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120035

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setSystemWallpaperVisiblity(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CropView;->setVisibility(I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WallpaperPickerActivity;->changeWallpaperFlags(Z)V

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mCropView:Lcom/voxel/launcher3/CropView;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$Czzje--dKEg7TWQ9pGJUBiVVTmU;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$Czzje--dKEg7TWQ9pGJUBiVVTmU;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/CropView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setWallpaperButtonEnabled(Z)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mSetWallpaperButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/voxel/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method updateTileIndices()V
    .locals 18

    const v0, 0x7f0a019b

    move-object/from16 v1, p0

    .line 849
    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 850
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v5, v7, :cond_5

    move v9, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 858
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    if-eqz v11, :cond_0

    add-int/lit8 v10, v6, 0x1

    move-object v11, v0

    move v12, v10

    move v10, v6

    goto :goto_2

    .line 868
    :cond_0
    check-cast v10, Landroid/widget/LinearLayout;

    .line 870
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    move v12, v11

    move-object v11, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_3

    .line 874
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;

    .line 875
    invoke-virtual {v13}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->isNamelessWallpaper()Z

    move-result v14

    if-eqz v14, :cond_2

    if-nez v5, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    const v14, 0x7f1202cb

    .line 879
    new-array v15, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    .line 880
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 879
    invoke-virtual {v3, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 881
    invoke-virtual {v13, v14}, Lcom/voxel/launcher3/WallpaperPickerActivity$WallpaperTileInfo;->onIndexUpdated(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    :cond_5
    return-void
.end method
