.class Lcom/evie/search/local/ContactUpdater;
.super Ljava/lang/Object;
.source "ContactUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;
    }
.end annotation


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContactManager:Lcom/evie/search/local/ContactManager;

.field private mContactUpdateTask:Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    invoke-static {p2}, Lcom/evie/search/local/ContactManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/local/ContactUpdater;->mContactManager:Lcom/evie/search/local/ContactManager;

    .line 29
    invoke-direct {p0}, Lcom/evie/search/local/ContactUpdater;->updateContacts()V

    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/evie/search/local/ContactUpdater$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/evie/search/local/ContactUpdater$1;-><init>(Lcom/evie/search/local/ContactUpdater;Landroid/os/Handler;)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/search/local/ContactUpdater;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/evie/search/local/ContactUpdater;->updateContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/evie/search/local/ContactUpdater;->mContactManager:Lcom/evie/search/local/ContactManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/evie/search/local/ContactUpdater;->delete(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/evie/search/local/ContactUpdater;->updateLink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/evie/search/local/ContactUpdater;->updateRecentItemLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private delete(Ljava/lang/String;Z)V
    .locals 6

    .line 201
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2}, Lcom/evie/search/local/LocalSearchManager;->delete(Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item"

    const-string v2, "link =?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 211
    iget-object p2, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "recents"

    const-string v1, "link =?"

    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v5

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized updateContacts()V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/evie/search/local/ContactUpdater;->mContactUpdateTask:Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/evie/search/local/ContactUpdater;->mContactUpdateTask:Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->cancel(Z)Z

    .line 51
    :cond_0
    new-instance v0, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;-><init>(Lcom/evie/search/local/ContactUpdater;Lcom/evie/search/local/ContactUpdater$1;)V

    iput-object v0, p0, Lcom/evie/search/local/ContactUpdater;->mContactUpdateTask:Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;

    .line 52
    iget-object v0, p0, Lcom/evie/search/local/ContactUpdater;->mContactUpdateTask:Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "link"

    .line 183
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item"

    const-string v3, "link=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "link"

    .line 192
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recents"

    const-string v2, "link=?"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateRecentItemLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 220
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1, p2}, Lcom/evie/search/local/LocalSearchManager;->updateRecentItemLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "label"

    .line 225
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/evie/search/local/ContactUpdater;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recents"

    const-string v2, "link=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method
