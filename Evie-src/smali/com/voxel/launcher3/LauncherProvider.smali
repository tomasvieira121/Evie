.class public Lcom/voxel/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;,
        Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;,
        Lcom/voxel/launcher3/LauncherProvider$SqlArguments;,
        Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;,
        Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field private static sJustLoadedFromOldDb:Z


# instance fields
.field private mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.voxel.launcher3.settings/appWidgetReset"

    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherProvider;->shouldImportLauncher2Database(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 0

    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 75
    sput-boolean p0, Lcom/voxel/launcher3/LauncherProvider;->sJustLoadedFromOldDb:Z

    return p0
.end method

.method static synthetic access$600(Landroid/content/ContentValues;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "modified"

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 3

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2348
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 2349
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    const-string v2, " OR "

    .line 2351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2354
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static closeDB(Landroid/content/Context;)V
    .locals 3

    .line 414
    invoke-static {}, Lcom/voxel/launcher3/LauncherProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "close_db"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 2386
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static dbInsertAndCheck(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    if-eqz p4, :cond_1

    const-string v0, "_id"

    .line 157
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p2, p4}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 161
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to insert null values"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {p1, p2, v0}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p1

    .line 166
    new-instance p2, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    iget-object p1, p2, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v0, p2, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.voxel.launcher3"

    .line 2376
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    .line 2380
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.voxel.launcher3"

    .line 2362
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2365
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.voxel.launcher3.settings/launcher"

    .line 267
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDbPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//data//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "//databases//"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "launcher.db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultWorkspaceResourceId()I
    .locals 2

    .line 378
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->defaultNoAllAppsLayoutId:I

    return v0

    .line 383
    :cond_0
    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->defaultLayoutId:I

    return v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "notify"

    .line 271
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->dataChanged(Landroid/content/Context;)V

    return-void
.end method

.method private static shouldImportLauncher2Database(Landroid/content/Context;)Z
    .locals 1

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 223
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    .line 224
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 228
    throw p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 196
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 198
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    :try_start_0
    array-length v2, p2

    .line 202
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    .line 203
    invoke-static {v5}, Lcom/voxel/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 204
    iget-object v6, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v7, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v1, v7, v8, v5}, Lcom/voxel/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 214
    array-length p1, p2

    return p1

    :catchall_0
    move-exception p1

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 211
    throw p1

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x41233025

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "close_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 259
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->close()V

    .line 260
    new-instance p1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized createEmptyDB()V
    .locals 2

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 233
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 236
    iget-object p3, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p2, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method

.method public deleteDatabase()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->close()V

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 406
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    return-void
.end method

.method public generateNewItemId()J
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    iget-object p1, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 172
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    const-string v1, "isExternalAdd"

    .line 175
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "true"

    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->access$000(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 183
    invoke-static {p2}, Lcom/voxel/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 184
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3, v1, v0, v2, p2}, Lcom/voxel/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-gtz p2, :cond_1

    return-object v2

    .line 187
    :cond_1
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    return-object p1
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 5

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EMPTY_DATABASE_CREATED"

    .line 339
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherProvider"

    const-string v2, "loading default workspace"

    .line 340
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;

    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 362
    invoke-static {}, Lcom/voxel/launcher3/LauncherProvider;->getDefaultWorkspaceResourceId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;-><init>(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/res/Resources;I)V

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v3, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->access$100(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;)I

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public migrateLauncher2Shortcuts()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120189

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 373
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->access$200(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    .line 119
    invoke-static {p0}, Lcom/voxel/launcher3/LauncherAppState;->setLauncherProvider(Lcom/voxel/launcher3/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 141
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 143
    iget-object p3, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 145
    iget-object p3, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 146
    iget-object v4, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 147
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 244
    new-instance v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    invoke-static {p2}, Lcom/voxel/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 247
    iget-object p3, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 248
    iget-object p4, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/voxel/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p3, p4, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method

.method public updateMaxItemId(J)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->updateMaxItemId(J)V

    return-void
.end method

.method public updateMaxScreenId(J)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider;->mOpenHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->updateMaxScreenId(J)V

    return-void
.end method
