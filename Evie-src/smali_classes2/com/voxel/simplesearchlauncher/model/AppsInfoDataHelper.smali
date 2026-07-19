.class public Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;
.super Ljava/lang/Object;
.source "AppsInfoDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;,
        Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsInfoDataHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 95
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 97
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 99
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 102
    :catch_0
    sget-object p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not write icon"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getAppsFor(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 254
    :try_start_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object v2

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    :try_start_2
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const-string v2, "Exception reading data from apps info DB."

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v1, :cond_0

    .line 261
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const-string p2, "Cursor is null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    monitor-exit p0

    return-object v0

    .line 266
    :cond_0
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->retrieveAppInfoFromCursor(Landroid/database/Cursor;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 273
    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 273
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private retrieveAppInfoFromCursor(Landroid/database/Cursor;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 285
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 286
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;-><init>()V

    const-string v2, "APP_LABEL"

    .line 287
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    const-string v2, "PACKAGE_NAME"

    .line 288
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "ACTIVITY_NAME"

    .line 289
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    const-string v2, "APP_VERSION"

    .line 290
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    const-string v2, "hidden"

    .line 291
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    const-string v2, "first_install_time"

    .line 292
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    const-string v2, "opened"

    .line 293
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    const-string v2, "label_override"

    .line 294
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    :try_start_0
    const-string v2, "icon"

    .line 298
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 299
    array-length v2, p1

    if-lez v2, :cond_3

    .line 300
    array-length v2, p1

    .line 301
    invoke-static {p1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->mContext:Landroid/content/Context;

    .line 300
    invoke-static {p1, v2}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 304
    iput-object v0, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    .line 305
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 306
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public declared-synchronized applyBatch(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 113
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 120
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    .line 121
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 123
    sget-object v4, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 144
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 138
    :pswitch_0
    iget-object v3, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v3, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 133
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 126
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal operation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 153
    :try_start_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearAllCustomIcons()V
    .locals 4

    .line 314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "icon"

    const/4 v2, 0x0

    .line 315
    move-object v3, v2

    check-cast v3, [B

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 317
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object v1

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized getAllApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v3, "PACKAGE_NAME=? AND ACTIVITY_NAME=?"

    const/4 v0, 0x2

    .line 192
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object p2, v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 196
    :try_start_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object v0

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    :try_start_2
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception reading data from apps info DB."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, p1

    :goto_0
    if-nez p2, :cond_0

    .line 203
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const-string v0, "Cursor is null."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    monitor-exit p0

    return-object p1

    .line 207
    :cond_0
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->retrieveAppInfoFromCursor(Landroid/database/Cursor;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object p1

    .line 209
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getApps(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v1, "PACKAGE_NAME=?"

    const/4 v0, 0x1

    .line 223
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 226
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAppsFor(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAppsWithCustomIcon()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "icon IS NOT NULL"

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAppsFor(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)Z
    .locals 6

    monitor-enter p0

    .line 179
    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating AppInfo into the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 182
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object v2

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v5, "_ID=?"

    invoke-virtual {v2, v3, p1, v5, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 185
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
