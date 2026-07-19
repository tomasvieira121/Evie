.class public final Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;
.super Ljava/lang/Object;
.source "AppLaunchDAO_Impl.java"

# interfaces
.implements Lcom/evie/models/frequentlyused/room/AppLaunchDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAppLaunchEntry:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfAppLaunchEntry:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAllOlderThanLimit:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance v0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$1;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__insertionAdapterOfAppLaunchEntry:Landroidx/room/EntityInsertionAdapter;

    .line 56
    new-instance v0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$2;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__deletionAdapterOfAppLaunchEntry:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 67
    new-instance v0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$3;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__preparedStmtOfDeleteAllOlderThanLimit:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public deleteAllOlderThanLimit(J)I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__preparedStmtOfDeleteAllOlderThanLimit:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 104
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 105
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 106
    iget-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 110
    iget-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__preparedStmtOfDeleteAllOlderThanLimit:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 109
    iget-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 110
    iget-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__preparedStmtOfDeleteAllOlderThanLimit:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 111
    throw p1
.end method

.method public getAllEntries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM app_launch_entries ORDER BY id ASC"

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 120
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "package_name"

    .line 121
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "class_name"

    .line 122
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 123
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    new-instance v6, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-direct {v6}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;-><init>()V

    .line 128
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 129
    invoke-virtual {v6, v7}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setId(I)V

    .line 131
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v6, v7}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setPackageName(Ljava/lang/String;)V

    .line 134
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-virtual {v6, v7}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setClassName(Ljava/lang/String;)V

    .line 136
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v2

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 142
    throw v2

    return-void
.end method

.method public getMostRecentEntry()Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM app_launch_entries ORDER BY id DESC LIMIT 1"

    const/4 v1, 0x0

    .line 188
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1}, Lio/reactivex/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public insertAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__insertionAdapterOfAppLaunchEntry:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 84
    throw p1
.end method
