.class public Lcom/voxel/launcher3/SavedWallpaperImages;
.super Landroid/widget/BaseAdapter;
.source "SavedWallpaperImages.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;,
        Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SavedWallpaperImages"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

.field mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;->moveFromCacheDirectoryIfNecessary(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    .line 102
    iput-object p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getImageFilenames(I)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "saved_wallpaper_images"

    const-string v0, "image_thumbnail"

    const-string v3, "image"

    .line 174
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "id = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 174
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 188
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private writeImage(Landroid/graphics/Bitmap;Ljava/io/InputStream;[Ljava/lang/Float;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "wallpaper"

    const-string v1, ""

    .line 225
    iget-object v2, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    const/16 v2, 0x1000

    .line 228
    new-array v2, v2, [B

    .line 230
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 231
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 234
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    const-string p2, "wallpaperthumb"

    const-string v1, ""

    .line 236
    iget-object v2, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 237
    iget-object v1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 239
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 240
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 242
    iget-object p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    invoke-virtual {p1}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 243
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "image_thumbnail"

    .line 244
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "image"

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p2, "extras"

    const-string v0, ","

    .line 247
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "saved_wallpaper_images"

    const/4 p3, 0x0

    .line 249
    invoke-virtual {p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public deleteImage(I)V
    .locals 5

    .line 195
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/SavedWallpaperImages;->getImageFilenames(I)Landroid/util/Pair;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 198
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 200
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "saved_wallpaper_images"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    .line 201
    new-array v3, v3, [Ljava/lang/String;

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/SavedWallpaperImages;->getItem(I)Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    iget-object v0, v0, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 166
    sget-object v1, Lcom/voxel/launcher3/SavedWallpaperImages;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding thumbnail for wallpaper #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p1, p2, p3, v0}, Lcom/voxel/launcher3/WallpaperPickerActivity;->createImageTileView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadThumbnailsAndImageIdList()V
    .locals 10

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mDb:Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SavedWallpaperImages$ImageDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "saved_wallpaper_images"

    const-string v0, "id"

    const-string v3, "image_thumbnail"

    const-string v4, "image"

    const-string v5, "extras"

    .line 109
    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "id DESC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 122
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 129
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v5, ","

    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    array-length v5, v2

    new-array v5, v5, [Ljava/lang/Float;

    const/4 v6, 0x0

    .line 133
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 135
    :try_start_0
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 143
    :catch_0
    :cond_2
    iget-object v2, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mImages:Ljava/util/ArrayList;

    new-instance v5, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v5, v3, v6, v7, v4}, Lcom/voxel/launcher3/SavedWallpaperImages$SavedWallpaperTile;-><init>(ILjava/io/File;Landroid/graphics/drawable/Drawable;[Ljava/lang/Float;)V

    .line 143
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public writeImage(Landroid/graphics/Bitmap;Landroid/net/Uri;[Ljava/lang/Float;)V
    .locals 1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/SavedWallpaperImages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/SavedWallpaperImages;->writeImage(Landroid/graphics/Bitmap;Ljava/io/InputStream;[Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    sget-object p2, Lcom/voxel/launcher3/SavedWallpaperImages;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed writing images to storage "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public writeImage(Landroid/graphics/Bitmap;[B)V
    .locals 2

    .line 210
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/voxel/launcher3/SavedWallpaperImages;->writeImage(Landroid/graphics/Bitmap;Ljava/io/InputStream;[Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    sget-object p2, Lcom/voxel/launcher3/SavedWallpaperImages;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed writing images to storage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
