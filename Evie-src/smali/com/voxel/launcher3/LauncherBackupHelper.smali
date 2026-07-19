.class public Lcom/voxel/launcher3/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;
    }
.end annotation


# static fields
.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static mIconCache:Lcom/voxel/launcher3/IconCache;

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoreEnabled:Z

.field private mWidgetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 99
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "_id"

    const-string v2, "modified"

    const-string v3, "intent"

    const-string v4, "appWidgetProvider"

    const-string v5, "appWidgetId"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string v8, "container"

    const-string v9, "icon"

    const-string v10, "iconPackage"

    const-string v11, "iconResource"

    const-string v12, "iconType"

    const-string v13, "itemType"

    const-string v14, "screen"

    const-string v15, "spanX"

    const-string v16, "spanY"

    const-string v17, "title"

    const-string v18, "profileId"

    .line 104
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "modified"

    const-string v2, "screenRank"

    .line 144
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 164
    iput-boolean p2, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mRestoreEnabled:Z

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    return-void
.end method

.method private backupFavorites(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Landroid/app/backup/BackupDataOutput;",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;",
            "Lorg/json/JSONObject;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    const/4 v6, 0x1

    .line 325
    invoke-direct {v1, v6, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;->getSavedIdsByType(ILcom/voxel/launcher3/backup/BackupProtos$Journal;)Ljava/util/Set;

    move-result-object v7

    .line 329
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 331
    sget-object v9, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/voxel/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 331
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    new-instance v9, Ljava/util/HashSet;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, -0x1

    .line 335
    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 336
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 337
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 338
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 339
    invoke-direct {v1, v6, v10, v11}, Lcom/voxel/launcher3/LauncherBackupHelper;->getKey(IJ)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v14

    move-object/from16 v15, p4

    .line 340
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-direct {v1, v14}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_1

    :try_start_1
    iget-wide v0, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    cmp-long v17, v12, v0

    if-ltz v17, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "LauncherBackupHelper"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "favorite "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " was too old: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v10, p6

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    :cond_1
    :goto_1
    move/from16 v10, p6

    move-object/from16 v1, p0

    .line 344
    :try_start_2
    invoke-direct {v1, v8, v10}, Lcom/voxel/launcher3/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;Z)[B

    move-result-object v0

    if-eqz v4, :cond_2

    .line 346
    invoke-direct {v1, v14, v0, v4, v3}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BLcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;)V

    :cond_2
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 349
    array-length v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v0, v13, v11, v12}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    :try_start_3
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_4
    const-string v0, "LauncherBackupHelper"

    const-string v11, "Error creating favorites json output."

    .line 353
    invoke-static {v0, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 361
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 366
    invoke-interface {v7, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_5

    .line 368
    iget v0, v4, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-direct {v1, v7, v3}, Lcom/voxel/launcher3/LauncherBackupHelper;->removeDeletedKeysFromBackup(Ljava/util/Set;Landroid/app/backup/BackupDataOutput;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 361
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 362
    throw v0

    return-void
.end method

.method private backupIcons(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Landroid/app/backup/BackupDataOutput;",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->initializeIconCache()Z

    move-result v4

    if-nez v4, :cond_0

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->dataChanged()V

    return-void

    .line 513
    :cond_0
    iget-object v4, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 514
    iget-object v4, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 515
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v11

    const/4 v12, 0x3

    move-object/from16 v6, p1

    .line 518
    invoke-direct {v1, v12, v6}, Lcom/voxel/launcher3/LauncherBackupHelper;->getSavedIdsByType(ILcom/voxel/launcher3/backup/BackupProtos$Journal;)Ljava/util/Set;

    move-result-object v13

    .line 522
    iget v14, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(itemType=0 OR itemType=1) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    sget-object v6, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/voxel/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 530
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    const/4 v7, -0x1

    .line 532
    :try_start_0
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    .line 534
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x2

    .line 535
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :try_start_1
    invoke-static {v10, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 538
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 542
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v12, v10}, Lcom/voxel/launcher3/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v15

    .line 543
    invoke-direct {v1, v15}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    .line 544
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v10, "LauncherBackupHelper"

    .line 546
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "empty intent on application favorite: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 548
    :goto_1
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v7, "LauncherBackupHelper"

    .line 549
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 p1, v6

    :try_start_2
    const-string v6, "already saved icon "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v14

    goto/16 :goto_2

    :cond_2
    move-object/from16 p1, v6

    if-eqz v10, :cond_4

    .line 555
    iget v6, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    sub-int/2addr v6, v14

    const/16 v12, 0xa

    if-ge v6, v12, :cond_3

    const-string v6, "LauncherBackupHelper"

    .line 556
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v14

    :try_start_3
    const-string v14, "saving icon "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v6, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v6, v7, v11}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 558
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_5

    .line 559
    sget-object v7, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v7, v6, v11}, Lcom/voxel/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 560
    invoke-direct {v1, v4, v6}, Lcom/voxel/launcher3/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 561
    invoke-direct {v1, v15, v6, v2, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BLcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;)V

    goto :goto_2

    :cond_3
    move/from16 v16, v14

    const-string v6, "LauncherBackupHelper"

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deferring icon backup "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->dataChanged()V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    move/from16 v16, v14

    goto :goto_2

    :catch_0
    move-object/from16 p1, v6

    :catch_1
    move/from16 v16, v14

    :catch_2
    :try_start_4
    const-string v6, "LauncherBackupHelper"

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to save application icon for favorite: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-object/from16 p1, v6

    :catch_4
    move/from16 v16, v14

    :catch_5
    const-string v6, "LauncherBackupHelper"

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid URI on application favorite: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_2
    move-object/from16 v6, p1

    move/from16 v14, v16

    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_6
    move-object/from16 p1, v6

    .line 577
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, p1

    .line 582
    invoke-interface {v13, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 583
    iget v3, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-direct {v1, v13, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->removeDeletedKeysFromBackup(Ljava/util/Set;Landroid/app/backup/BackupDataOutput;)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    return-void

    :catchall_0
    move-exception v0

    .line 577
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 578
    throw v0

    return-void
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 794
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Key;->parseFrom([B)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    .line 795
    iget-wide v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->checkKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-object v0

    .line 797
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key read from stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;-><init>(Lcom/voxel/launcher3/LauncherBackupHelper;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 803
    new-instance v0, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;

    invoke-direct {v0, p0, p1, v1}, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;-><init>(Lcom/voxel/launcher3/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/voxel/launcher3/LauncherBackupHelper$1;)V

    throw v0

    :catch_1
    move-exception p1

    .line 801
    new-instance v0, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;

    invoke-direct {v0, p0, p1, v1}, Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException;-><init>(Lcom/voxel/launcher3/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/voxel/launcher3/LauncherBackupHelper$1;)V

    throw v0
.end method

.method private backupScreens(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Landroid/app/backup/BackupDataOutput;",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    .line 431
    invoke-direct {v1, v4, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->getSavedIdsByType(ILcom/voxel/launcher3/backup/BackupProtos$Journal;)Ljava/util/Set;

    move-result-object v5

    .line 435
    iget-object v6, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 436
    sget-object v8, Lcom/voxel/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/voxel/launcher3/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    const/4 v8, -0x1

    .line 440
    :try_start_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 442
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    .line 443
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x1

    .line 444
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 445
    invoke-direct {v1, v4, v8, v9}, Lcom/voxel/launcher3/LauncherBackupHelper;->getKey(IJ)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v12

    move-object/from16 v13, p4

    .line 446
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-direct {v1, v12}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v14

    .line 448
    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-wide v14, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    cmp-long v16, v10, v14

    if-ltz v16, :cond_0

    goto :goto_1

    :cond_0
    const-string v12, "LauncherBackupHelper"

    .line 453
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "screen "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " was too old: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_1
    :goto_1
    invoke-direct {v1, v6}, Lcom/voxel/launcher3/LauncherBackupHelper;->packScreen(Landroid/database/Cursor;)[B

    move-result-object v8

    .line 451
    invoke-direct {v1, v12, v8, v3, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BLcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 463
    iget v0, v3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-direct {v1, v5, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;->removeDeletedKeysFromBackup(Ljava/util/Set;Landroid/app/backup/BackupDataOutput;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    return-void

    :catchall_0
    move-exception v0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    throw v0

    return-void
.end method

.method private backupWidgets(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Landroid/app/backup/BackupDataOutput;",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 645
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->initializeIconCache()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 650
    :cond_0
    iget-object v5, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 651
    new-instance v5, Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v7, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-direct {v5, v7, v12}, Lcom/voxel/launcher3/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V

    .line 652
    iget-object v7, v1, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v13, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 653
    invoke-virtual {v4}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    const/4 v4, 0x4

    move-object/from16 v7, p1

    .line 658
    invoke-direct {v1, v4, v7}, Lcom/voxel/launcher3/LauncherBackupHelper;->getSavedIdsByType(ILcom/voxel/launcher3/backup/BackupProtos$Journal;)Ljava/util/Set;

    move-result-object v14

    .line 661
    iget v15, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    .line 663
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemType=4 AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 665
    sget-object v7, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/voxel/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 667
    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    const/4 v8, -0x1

    .line 669
    :try_start_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 670
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    .line 671
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x3

    .line 672
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xe

    .line 673
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    const/16 v11, 0xf

    .line 674
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 675
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 679
    invoke-direct {v1, v4, v10}, Lcom/voxel/launcher3/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v8

    .line 680
    invoke-direct {v1, v8}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v9

    .line 681
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v10, "LauncherBackupHelper"

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "empty intent on appwidget: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 685
    :goto_1
    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "LauncherBackupHelper"

    .line 686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "already saved widget "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_4

    .line 692
    iget v4, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    sub-int/2addr v4, v15

    const/4 v10, 0x5

    if-ge v4, v10, :cond_3

    const-string v4, "LauncherBackupHelper"

    .line 693
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saving widget "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    sget-object v4, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-direct {v1, v13, v5, v4, v11}, Lcom/voxel/launcher3/LauncherBackupHelper;->packWidget(ILcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/IconCache;Landroid/content/ComponentName;)[B

    move-result-object v4

    .line 695
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-direct {v1, v8, v4, v2, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BLcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;)V

    goto :goto_2

    :cond_3
    const-string v4, "LauncherBackupHelper"

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deferring widget backup "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->dataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    const/4 v4, 0x4

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 706
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    invoke-interface {v14, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 712
    iget v3, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-direct {v1, v14, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->removeDeletedKeysFromBackup(Ljava/util/Set;Landroid/app/backup/BackupDataOutput;)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    return-void

    :catchall_0
    move-exception v0

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 707
    throw v0

    :cond_6
    :goto_3
    const-string v0, "LauncherBackupHelper"

    const-string v2, "Failed to get icon cache during restore"

    .line 647
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)J
    .locals 6

    .line 835
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 836
    iget v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 837
    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 838
    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 839
    iget-object v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 840
    iget-object p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 842
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private dataChanged()V
    .locals 2

    .line 169
    sget-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 172
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method private findAppWidgetProviderInfo(Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    .line 1233
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mWidgetMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 1235
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 1236
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mWidgetMap:Ljava/util/HashMap;

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1238
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mWidgetMap:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mWidgetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    return-object p1
.end method

.method private geKeyType(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;
    .locals 0

    .line 817
    iget p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "anonymous"

    return-object p1

    :pswitch_0
    const-string p1, "widget"

    return-object p1

    :pswitch_1
    const-string p1, "icon"

    return-object p1

    :pswitch_2
    const-string p1, "screen"

    return-object p1

    :pswitch_3
    const-string p1, "favorite"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getKey(IJ)Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 1

    .line 761
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Key;-><init>()V

    .line 762
    iput p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    .line 763
    iput-wide p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    .line 764
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->checkKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;
    .locals 1

    .line 775
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Key;-><init>()V

    .line 776
    iput p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    .line 777
    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    .line 778
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->checkKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private getKeyName(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;
    .locals 2

    .line 808
    iget-object v0, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-wide v0, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 811
    :cond_0
    iget-object p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    return-object p1
.end method

.method private getSavedIdsByType(ILcom/voxel/launcher3/backup/BackupProtos$Journal;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/voxel/launcher3/backup/BackupProtos$Journal;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1163
    :goto_0
    iget-object v2, p2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1164
    iget-object v2, p2, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    aget-object v2, v2, v1

    .line 1165
    iget v3, v2, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    if-ne v3, p1, :cond_0

    .line 1166
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUserSelectionArg()Ljava/lang/String;
    .locals 3

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 1283
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeIconCache()Z
    .locals 4

    .line 1246
    sget-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1250
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1252
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LauncherBackupHelper"

    const-string v3, "Failed to get app state during backup/restore"

    .line 1254
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 1257
    :cond_1
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 1258
    sget-object v0, Lcom/voxel/launcher3/LauncherBackupHelper;->mIconCache:Lcom/voxel/launcher3/IconCache;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;
    .locals 1

    .line 786
    invoke-static {p1}, Lcom/voxel/launcher3/backup/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private launcherIsReady()Z
    .locals 7

    .line 1264
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1265
    sget-object v2, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/voxel/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1270
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1272
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->initializeIconCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->dataChanged()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private packFavorite(Landroid/database/Cursor;Z)[B
    .locals 4

    .line 849
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;-><init>()V

    const/4 v1, 0x0

    .line 850
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    const/16 v2, 0xd

    .line 851
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    const/4 v2, 0x7

    .line 852
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    const/4 v2, 0x5

    .line 853
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    const/4 v2, 0x6

    .line 854
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    const/16 v2, 0xe

    .line 855
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    const/16 v2, 0xf

    .line 856
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    const/16 v2, 0xb

    .line 857
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-eqz p2, :cond_1

    .line 860
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/voxel/launcher3/LauncherModel;->getScreenPosition(J)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 864
    :cond_0
    iput p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    .line 867
    :cond_1
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-nez p2, :cond_3

    const/16 p2, 0x9

    .line 868
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 869
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 870
    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    :cond_2
    const/16 p2, 0xa

    .line 872
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 873
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 874
    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 877
    :cond_3
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const/16 p2, 0x8

    .line 878
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 879
    array-length v2, p2

    if-lez v2, :cond_4

    .line 880
    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    :cond_4
    const/16 p2, 0x10

    .line 883
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 884
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 885
    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    :cond_5
    const/4 p2, 0x2

    .line 887
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 888
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 890
    :try_start_0
    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "profile"

    .line 891
    invoke-virtual {p2, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "LauncherBackupHelper"

    const-string v2, "Invalid intent"

    .line 894
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    const/16 p2, 0xc

    .line 897
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    .line 898
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_7

    .line 899
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    const/4 p2, 0x3

    .line 900
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 902
    iput-object p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 906
    :cond_7
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method private packIcon(ILandroid/graphics/Bitmap;)[B
    .locals 3

    .line 1011
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;-><init>()V

    .line 1012
    iput p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 1013
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1014
    sget-object v1, Lcom/voxel/launcher3/LauncherBackupHelper;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p2, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1015
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    .line 1017
    :cond_0
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method private packScreen(Landroid/database/Cursor;)[B
    .locals 3

    .line 986
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Screen;-><init>()V

    const/4 v1, 0x0

    .line 987
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->id:J

    const/4 v1, 0x2

    .line 988
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->rank:I

    .line 990
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method private packWidget(ILcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/IconCache;Landroid/content/ComponentName;)[B
    .locals 2

    .line 1036
    invoke-direct {p0, p4}, Lcom/voxel/launcher3/LauncherBackupHelper;->findAppWidgetProviderInfo(Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 1037
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Widget;-><init>()V

    .line 1038
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1039
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1040
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->configure:Z

    .line 1041
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v1, :cond_1

    .line 1042
    new-instance v1, Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    .line 1043
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p3, p4, p2}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1044
    iget-object p3, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1045
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1046
    sget-object p4, Lcom/voxel/launcher3/LauncherBackupHelper;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x4b

    invoke-virtual {p2, p4, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1047
    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iput-object p3, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    .line 1048
    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    iput p1, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 1051
    :cond_1
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method public static postRestoreWidgets(Landroid/content/Context;)V
    .locals 5

    .line 373
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "restored"

    const/4 v2, 0x7

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "itemType = ?"

    const/4 v2, 0x1

    .line 380
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 383
    sget-object v3, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string v0, "LauncherBackupHelper"

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post restored widgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readCheckedBytes([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1222
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1223
    invoke-static {v0, p0, p1, p2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    .line 1224
    new-instance p0, Ljava/util/zip/CRC32;

    invoke-direct {p0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1225
    iget-object p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 1226
    iget-wide p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-nez p0, :cond_0

    .line 1229
    iget-object p0, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    return-object p0

    .line 1227
    :cond_0
    new-instance p0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string p1, "checksum does not match"

    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/voxel/launcher3/backup/BackupProtos$Journal;
    .locals 10

    .line 1075
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 1079
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1081
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p1

    const v2, 0xf4240

    if-ge p1, v2, :cond_3

    .line 1084
    new-array v2, p1, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v2

    move-object v8, v4

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-lez p1, :cond_2

    .line 1094
    :try_start_1
    invoke-virtual {v1, v6, v7, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_1

    sub-int/2addr p1, v9

    add-int/2addr v7, v9

    goto :goto_1

    :cond_1
    const-string p1, "LauncherBackupHelper"

    const-string v9, "unexpected end of file while reading journal."

    .line 1102
    invoke-static {p1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-object v6, v4

    const/4 p1, 0x0

    .line 1113
    :goto_1
    :try_start_2
    invoke-static {v6, v5, v7}, Lcom/voxel/launcher3/LauncherBackupHelper;->readCheckedBytes([BII)[B

    move-result-object v9

    invoke-static {v0, v9}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string p1, "LauncherBackupHelper"

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes of journal"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v8, p1

    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v8

    .line 1121
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->clear()Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string p1, "LauncherBackupHelper"

    const-string v2, "could not find a valid journal"

    .line 1126
    invoke-static {p1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1133
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string v1, "LauncherBackupHelper"

    const-string v2, "failed to close the journal"

    .line 1135
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    :try_start_6
    const-string v2, "LauncherBackupHelper"

    const-string v3, "failed to close the journal"

    .line 1130
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1133
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_3
    return-object v0

    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    const-string v1, "LauncherBackupHelper"

    const-string v2, "failed to close the journal"

    .line 1135
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    :goto_5
    throw p1

    return-void
.end method

.method private removeDeletedKeysFromBackup(Ljava/util/Set;Landroid/app/backup/BackupDataOutput;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/BackupDataOutput;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "LauncherBackupHelper"

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropping deleted item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 1177
    invoke-virtual {p2, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private restoreFavorite(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            "[BI",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;ZZ)V"
        }
    .end annotation

    const-string p4, "LauncherBackupHelper"

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unpacking favorite "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-boolean p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mRestoreEnabled:Z

    if-nez p1, :cond_0

    const-string p1, "LauncherBackupHelper"

    const-string p2, "restore not enabled: skipping database mutation"

    .line 404
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 410
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/LauncherBackupHelper;->unpackFavorite([BIIZZ)Landroid/content/ContentValues;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 412
    sget-object p3, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LauncherBackupHelper"

    const-string p3, "failed to decode favorite"

    .line 415
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreIcon(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            "[BI",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    const-string p4, "LauncherBackupHelper"

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unpacking icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    .line 602
    :try_start_0
    invoke-static {p2, p4, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->unpackIcon([BII)Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    move-result-object p2

    .line 613
    iget-object p3, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    iget-object v0, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    array-length v0, v0

    invoke-static {p3, p4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p4, "LauncherBackupHelper"

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to unpack icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-boolean p4, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mRestoreEnabled:Z

    if-nez p4, :cond_1

    const-string p2, "LauncherBackupHelper"

    const-string p3, "restore not enabled: skipping database mutation"

    .line 620
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p4, "LauncherBackupHelper"

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saving restored icon as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object p4, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget p2, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    invoke-static {p4, v0, p3, p2}, Lcom/voxel/launcher3/IconCache;->preloadIcon(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "LauncherBackupHelper"

    .line 628
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to save restored icon for: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private restoreScreen(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            "[BI",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    const-string p4, "LauncherBackupHelper"

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unpacking screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-boolean p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mRestoreEnabled:Z

    if-nez p1, :cond_0

    const-string p1, "LauncherBackupHelper"

    const-string p2, "restore not enabled: skipping database mutation"

    .line 482
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 487
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p4, 0x0

    .line 488
    invoke-direct {p0, p2, p4, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->unpackScreen([BII)Landroid/content/ContentValues;

    move-result-object p2

    .line 489
    sget-object p3, Lcom/voxel/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LauncherBackupHelper"

    const-string p3, "failed to decode screen"

    .line 491
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private restoreWidget(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            "[BI",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/backup/BackupProtos$Key;",
            ">;)V"
        }
    .end annotation

    const-string p4, "LauncherBackupHelper"

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unpacking widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    .line 730
    :try_start_0
    invoke-direct {p0, p2, p4, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->unpackWidget([BII)Lcom/voxel/launcher3/backup/BackupProtos$Widget;

    move-result-object p2

    .line 732
    iget-object p3, p2, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    iget-object p3, p3, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    if-eqz p3, :cond_1

    .line 733
    iget-object p3, p2, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    iget-object p3, p3, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    iget-object v0, p2, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    iget-object v0, v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    array-length v0, v0

    .line 734
    invoke-static {p3, p4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p2, "LauncherBackupHelper"

    .line 736
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to unpack widget icon for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object p4, p2, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    iget-object p2, p2, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->icon:Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    iget p2, p2, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    invoke-static {p1, p4, p3, p2}, Lcom/voxel/launcher3/IconCache;->preloadIcon(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Bitmap;I)V

    .line 743
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mRestoreEnabled:Z

    if-nez p1, :cond_2

    const-string p1, "LauncherBackupHelper"

    const-string p2, "restore not enabled: skipping database mutation"

    .line 744
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "LauncherBackupHelper"

    const-string p3, "failed to decode widget"

    .line 750
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private unpackFavorite([BIIZZ)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 915
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;-><init>()V

    .line 916
    invoke-static {p1, p2, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->readCheckedBytes([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    const-string p1, "LauncherBackupHelper"

    .line 917
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unpacked favorite "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 918
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 917
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    .line 921
    iget p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->getScreenIdAtPosition(I)J

    move-result-wide p1

    const-wide/16 p3, -0x1

    cmp-long v1, p1, p3

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    long-to-int p1, p1

    .line 925
    iput p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    :cond_2
    if-eqz p5, :cond_3

    .line 929
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;

    .line 930
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherProvider;->generateNewItemId()J

    move-result-wide p1

    .line 931
    iput-wide p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    .line 934
    :cond_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "_id"

    .line 935
    iget-wide p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->id:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "screen"

    .line 936
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->screen:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "container"

    .line 937
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->container:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellX"

    .line 938
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellY"

    .line 939
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanX"

    .line 940
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 941
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconType"

    .line 942
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-nez p2, :cond_4

    const-string p2, "iconPackage"

    .line 944
    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "iconResource"

    .line 945
    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_4
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->iconType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    const-string p2, "icon"

    .line 948
    iget-object p4, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 950
    :cond_5
    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "title"

    .line 951
    iget-object p4, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p2, "title"

    const-string p4, ""

    .line 953
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_1
    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "intent"

    .line 956
    iget-object p4, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p2, "itemType"

    .line 958
    iget p4, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    .line 961
    iget-object p4, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 962
    invoke-static {p4}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide p4

    const-string p2, "profileId"

    .line 963
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 965
    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 p4, 0x4

    if-ne p2, p4, :cond_9

    .line 966
    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "appWidgetProvider"

    .line 967
    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p2, "appWidgetId"

    .line 969
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "restored"

    const/4 p3, 0x7

    .line 971
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 970
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_9
    const-string p2, "restored"

    .line 976
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    return-object p1
.end method

.method private static unpackIcon([BII)Lcom/voxel/launcher3/backup/BackupProtos$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1025
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Resource;-><init>()V

    .line 1026
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherBackupHelper;->readCheckedBytes([BII)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    const-string p0, "LauncherBackupHelper"

    .line 1027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unpacked icon "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->dpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/voxel/launcher3/backup/BackupProtos$Resource;->data:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private unpackScreen([BII)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 998
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Screen;-><init>()V

    .line 999
    invoke-static {p1, p2, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->readCheckedBytes([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    const-string p1, "LauncherBackupHelper"

    .line 1000
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unpacked screen "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->id:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->rank:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "_id"

    .line 1002
    iget-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "screenRank"

    .line 1003
    iget p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Screen;->rank:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method private unpackWidget([BII)Lcom/voxel/launcher3/backup/BackupProtos$Widget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1059
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Widget;-><init>()V

    .line 1060
    invoke-static {p1, p2, p3}, Lcom/voxel/launcher3/LauncherBackupHelper;->readCheckedBytes([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    const-string p1, "LauncherBackupHelper"

    .line 1061
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unpacked widget "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 3

    .line 1209
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1210
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 1211
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 1212
    iget-object v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {p1, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 1213
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 1214
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/voxel/launcher3/backup/BackupProtos$Journal;)V
    .locals 2

    .line 1195
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1196
    invoke-direct {p0, p2}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    .line 1197
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1198
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string p2, "LauncherBackupHelper"

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes of journal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LauncherBackupHelper"

    const-string v0, "failed to write backup journal"

    .line 1201
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private writeRowToBackup(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BLcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1143
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    array-length v1, p2

    invoke-virtual {p4, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1145
    array-length v1, p2

    invoke-virtual {p4, p2, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 1146
    iget p4, p3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    .line 1147
    iget-wide v1, p3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    array-length p4, p2

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-string p3, "LauncherBackupHelper"

    .line 1148
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saving "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->geKeyType(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->getKeyName(Lcom/voxel/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1148
    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getSerializedFavorites()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v1, Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v1}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupFavorites(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)V

    return-object v7
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 9

    const-string v0, "LauncherBackupHelper"

    const-string v1, "onBackup"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;-><init>()V

    .line 195
    iget-wide v1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    const/4 v3, 0x0

    .line 197
    iput v3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    const-wide/16 v3, 0x0

    .line 198
    iput-wide v3, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    const-string v3, "LauncherBackupHelper"

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastBackupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherBackupHelper;->launcherIsReady()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, v1

    .line 205
    :try_start_0
    invoke-direct/range {v2 .. v8}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupFavorites(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)V

    .line 206
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupScreens(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V

    .line 207
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupIcons(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V

    .line 208
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupWidgets(Lcom/voxel/launcher3/backup/BackupProtos$Journal;Landroid/app/backup/BackupDataOutput;Lcom/voxel/launcher3/backup/BackupProtos$Journal;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LauncherBackupHelper"

    const-string v2, "launcher backup has failed"

    .line 210
    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    iput-object p1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-object p1, v0

    .line 217
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/voxel/launcher3/backup/BackupProtos$Journal;)V

    const-string p2, "LauncherBackupHelper"

    .line 218
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBackup: wrote "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->bytes:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "b in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->rows:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 9

    const-string v0, "LauncherBackupHelper"

    const-string v1, "restoreEntity"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x200

    .line 231
    new-array v0, v0, [B

    .line 232
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v5

    .line 234
    array-length v2, v0

    if-ge v2, v5, :cond_0

    .line 235
    new-array v0, v5, [B

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v0, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p1, v4, v0, v5}, Landroid/app/backup/BackupDataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LauncherBackupHelper"

    const-string v2, "failed to read entity from restore data"

    .line 243
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :goto_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v3

    .line 247
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget p1, v3, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "LauncherBackupHelper"

    goto :goto_2

    .line 262
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreWidget(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V

    goto :goto_3

    .line 258
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreIcon(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V

    goto :goto_3

    .line 254
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreScreen(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;)V

    goto :goto_3

    .line 250
    :pswitch_3
    iget-object v6, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreFavorite(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;ZZ)V

    goto :goto_3

    .line 266
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown restore entity type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/voxel/launcher3/backup/BackupProtos$Key;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "LauncherBackupHelper"

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unparsable backup key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restoreSerializedFavorites(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 303
    array-length v3, v0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v7

    .line 305
    :try_start_0
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/voxel/launcher3/backup/BackupProtos$Key;

    move-result-object v6

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreFavorite(Lcom/voxel/launcher3/backup/BackupProtos$Key;[BILjava/util/ArrayList;ZZ)V
    :try_end_0
    .catch Lcom/voxel/launcher3/LauncherBackupHelper$KeyParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherBackupHelper"

    const-string v2, "Exception parsing key."

    .line 307
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 284
    new-instance v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/voxel/launcher3/backup/BackupProtos$Journal;-><init>()V

    const-wide/16 v1, 0x0

    .line 285
    iput-wide v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->t:J

    .line 286
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/voxel/launcher3/backup/BackupProtos$Key;

    iput-object v1, v0, Lcom/voxel/launcher3/backup/BackupProtos$Journal;->key:[Lcom/voxel/launcher3/backup/BackupProtos$Key;

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/voxel/launcher3/backup/BackupProtos$Journal;)V

    const-string p1, "LauncherBackupHelper"

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestore: read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
