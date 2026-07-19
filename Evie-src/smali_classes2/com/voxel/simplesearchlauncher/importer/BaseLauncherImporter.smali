.class public abstract Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.super Ljava/lang/Object;
.source "BaseLauncherImporter.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;
    }
.end annotation


# instance fields
.field mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWorkspaceScreensUri()Landroid/net/Uri;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getBaseContentUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getBaseContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "workspaceScreens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public canImport(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected getBaseContentUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContainerColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "container"

    return-object v0
.end method

.method public getCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getFavoritesContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    const-string v1, "LauncherImporter"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resolving cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during import for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "LauncherImporter"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting cursor from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite Exception for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v1, "LauncherImporter"

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting cursor from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_0

    .line 230
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getCursorItemIndexes(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "LauncherImporter"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting cursor indices for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting cursor indices for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    :goto_2
    return-object p1
.end method

.method public getCursorItemIndexes(Landroid/database/Cursor;)V
    .locals 2

    .line 334
    new-instance v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;-><init>()V

    const-string v1, "_id"

    .line 335
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->idIndex:I

    const-string v1, "title"

    .line 336
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->titleIndex:I

    const-string v1, "intent"

    .line 337
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->intentIndex:I

    const-string v1, "itemType"

    .line 338
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->itemTypeIndex:I

    const-string v1, "iconType"

    .line 339
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconTypeIndex:I

    const-string v1, "iconPackage"

    .line 340
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconPackageIndex:I

    const-string v1, "iconResource"

    .line 341
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconResourceIndex:I

    const-string v1, "icon"

    .line 342
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconIndex:I

    .line 343
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getContainerColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->containerIndex:I

    .line 344
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getScreenColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->screenIdIndex:I

    const-string v1, "cellX"

    .line 345
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->cellXIndex:I

    const-string v1, "cellY"

    .line 346
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->cellYIndex:I

    const-string v1, "spanX"

    .line 347
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->spanXIndex:I

    const-string v1, "spanY"

    .line 348
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->spanYIndex:I

    const-string v1, "appWidgetId"

    .line 349
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->appWidgetIdIndex:I

    const-string v1, "appWidgetProvider"

    .line 350
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->appWidgetProviderIndex:I

    const-string v1, "flags"

    .line 351
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->flagsIndex:I

    .line 352
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;

    return-void
.end method

.method protected getFavoritesContentUri()Landroid/net/Uri;
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getBaseContentUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getBaseContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .line 409
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 411
    :try_start_0
    array-length v0, p1

    .line 412
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 411
    invoke-static {p1, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMainScreenId(Ljava/util/TreeMap;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method protected getScreenColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "screen"

    return-object v0
.end method

.method protected loadFolderInfoFromCursor(Lcom/voxel/launcher3/FolderInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 378
    iput p2, p1, Lcom/voxel/launcher3/FolderInfo;->spanX:I

    .line 379
    iput p2, p1, Lcom/voxel/launcher3/FolderInfo;->spanY:I

    :cond_0
    return-void
.end method

.method public loadItem(Landroid/database/Cursor;Landroid/content/Context;)Lcom/voxel/launcher3/ItemInfo;
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getCursorItemIndexes(Landroid/database/Cursor;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;

    .line 154
    iget v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->itemTypeIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 157
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadUnknownItemType(ILandroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    return-object p1

    .line 170
    :pswitch_0
    new-instance p2, Lcom/voxel/launcher3/FolderInfo;

    invoke-direct {p2}, Lcom/voxel/launcher3/FolderInfo;-><init>()V

    .line 171
    iget v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->titleIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 172
    iget-object v1, p2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const-string v1, ""

    .line 173
    iput-object v1, p2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 175
    :cond_1
    invoke-virtual {p0, p2, p1, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadItemFromCursor(Lcom/voxel/launcher3/ItemInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;

    invoke-virtual {p0, p2, p1, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadFolderInfoFromCursor(Lcom/voxel/launcher3/FolderInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V

    return-object p2

    .line 167
    :pswitch_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadShortcutInfoFromCursor(Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p1

    return-object p1

    .line 160
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadShortcutInfoFromCursor(Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 162
    iput p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    :cond_2
    return-object p1

    :cond_3
    return-object v3

    .line 180
    :cond_4
    iget p2, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->appWidgetIdIndex:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 181
    iget v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->appWidgetProviderIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 184
    iget v1, v0, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->appWidgetProviderIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 186
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_6

    return-object v3

    .line 192
    :cond_6
    new-instance v2, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v2, p2, v1}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 193
    invoke-virtual {p0, v2, p1, v0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadItemFromCursor(Lcom/voxel/launcher3/ItemInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V

    const/4 p1, 0x7

    .line 194
    iput p1, v2, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected loadItemFromCursor(Lcom/voxel/launcher3/ItemInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V
    .locals 3

    .line 356
    iget v0, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->idIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 357
    iget v0, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->containerIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 358
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->cellXIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 359
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->cellYIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 360
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->spanXIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 361
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->spanYIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 362
    iget p3, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->screenIdIndex:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-wide/16 v1, 0x0

    const/16 p3, -0x65

    if-ne v0, p3, :cond_0

    const-wide/16 p2, -0x65

    .line 364
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 365
    iput-wide v1, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_0

    :cond_0
    const/16 p3, -0x64

    if-ne v0, p3, :cond_1

    const-wide/16 v0, -0x64

    .line 367
    iput-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    int-to-long p2, p2

    .line 368
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_0

    :cond_1
    int-to-long p2, v0

    .line 371
    iput-wide p2, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 372
    iput-wide v1, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    :goto_0
    return-void
.end method

.method public loadScreens(Landroid/content/ContentResolver;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getWorkspaceScreensUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getWorkspaceScreensUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :try_start_1
    const-string v1, "_id"

    .line 130
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screenRank"

    .line 131
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 132
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 134
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_0
    return-object v1

    :catch_1
    return-object v1
.end method

.method protected final loadShortcutInfoFromCursor(Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ShortcutInfo;
    .locals 5

    .line 250
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 252
    invoke-virtual {p0, v0, p1, p3}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadItemFromCursor(Lcom/voxel/launcher3/ItemInfo;Landroid/database/Cursor;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V

    .line 254
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->intentIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 260
    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v3

    .line 263
    :goto_0
    iget v4, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->titleIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 264
    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 266
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    return-object v3

    .line 269
    :cond_1
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 271
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 272
    iget-object v4, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, ""

    .line 274
    iput-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 280
    :cond_2
    :goto_1
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconTypeIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 283
    :cond_3
    iget v1, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconTypeIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_2
    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    .line 290
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 291
    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget v4, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconPackageIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 292
    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget v4, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconResourceIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 293
    iget v2, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconIndex:I

    invoke-virtual {p0, p1, v2, p2}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 298
    :cond_4
    iget v2, p3, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconIndex:I

    invoke-virtual {p0, p1, v2, p2}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 299
    iget-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 300
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_3

    .line 302
    :cond_5
    iput-boolean v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    .line 308
    :goto_3
    iput v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    .line 309
    iput v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    .line 311
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->onLoadShortcutInfoFromCursor(Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V

    .line 313
    iget-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez p1, :cond_6

    return-object v3

    :cond_6
    return-object v0
.end method

.method protected loadUnknownItemType(ILandroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onLoadShortcutInfoFromCursor(Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V
    .locals 0

    return-void
.end method
