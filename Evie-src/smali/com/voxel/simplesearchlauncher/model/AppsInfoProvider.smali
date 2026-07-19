.class public Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;
.super Landroid/content/ContentProvider;
.source "AppsInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppsInfoProvider"

.field private static volatile sApplicationContext:Landroid/content/Context;

.field private static sContentUri:Landroid/net/Uri;

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentObservable:Landroid/database/ContentObservable;

.field private mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 104
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;-><init>(Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    .line 105
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mContentObservable:Landroid/database/ContentObservable;

    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .line 58
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static closeDB(Landroid/content/Context;)V
    .locals 2

    .line 203
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    .line 204
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    move-result-object p0

    const-string v0, "close_db"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static declared-synchronized getContentUri()Landroid/net/Uri;
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sContentUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/appsInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sContentUri:Landroid/net/Uri;

    .line 195
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDbPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//data//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "//databases//"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "APPS_INFO_DB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;
    .locals 2

    .line 93
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->INSTANCE:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    return-object v0
.end method

.method public static getProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "is.shortcut.provider.appsInfo"

    return-object v0
.end method

.method private static declared-synchronized getUriMatcher()Landroid/content/UriMatcher;
    .locals 5

    const-class v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    .line 180
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 183
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "appsInfo"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "appsInfo/*"

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setApplicationContext(Landroid/app/Application;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->sApplicationContext:Landroid/content/Context;

    return-void
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

    .line 116
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->bulkInsert([Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 153
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

    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dispatchChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 164
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "vnd.android.cursor.item/vnd.is.shortcut.provider.appsInfo"

    return-object p1

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/vnd.is.shortcut.provider.appsInfo"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->insert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public registerObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->mDatabaseHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
