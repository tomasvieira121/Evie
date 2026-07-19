.class Lcom/evie/search/local/SearchDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SearchDbHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "LocalSearch.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 16
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS item (_id INTEGER PRIMARY KEY AUTOINCREMENT, link TEXT NOT NULL UNIQUE, label TEXT NOT NULL, note TEXT, type TEXT NOT NULL, usage REAL)"

    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS recents (_id INTEGER PRIMARY KEY AUTOINCREMENT, last_used INTEGER NOT NULL, link TEXT NOT NULL UNIQUE, label TEXT NOT NULL, item_type TEXT NOT NULL, image_url TEXT)"

    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS search (_id INTEGER PRIMARY KEY AUTOINCREMENT, search_keyword TEXT NOT NULL, match_keyword TEXT NOT NULL, keyword_type TEXT,item_id INTEGER NOT NULL, FOREIGN KEY (item_id) REFERENCES item(_id) ON UPDATE CASCADE ON DELETE CASCADE)"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX search_index ON search (search_keyword)"

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX id_index ON search (item_id,keyword_type)"

    .line 59
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/search/local/SearchDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS search"

    .line 65
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS recents"

    .line 66
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS item"

    .line 67
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/evie/search/local/SearchDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
