.class Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;
.super Ljava/lang/Object;
.source "AppLaunchDAO_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->getMostRecentEntry()Lio/reactivex/Maybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

    iput-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/evie/models/frequentlyused/room/AppLaunchEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

    invoke-static {v0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;->access$000(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    .line 194
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "package_name"

    .line 195
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "class_name"

    .line 196
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    new-instance v4, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-direct {v4}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;-><init>()V

    .line 201
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 202
    invoke-virtual {v4, v1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setId(I)V

    .line 204
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v4, v1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setPackageName(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v4, v1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->setClassName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 214
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->call()Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
