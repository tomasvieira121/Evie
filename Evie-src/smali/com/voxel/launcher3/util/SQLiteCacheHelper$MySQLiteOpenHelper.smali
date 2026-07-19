.class Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/util/SQLiteCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySQLiteOpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/util/SQLiteCacheHelper;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/voxel/launcher3/util/SQLiteCacheHelper;

    const/4 p1, 0x0

    .line 102
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/voxel/launcher3/util/SQLiteCacheHelper;

    invoke-static {v1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->access$100(Lcom/voxel/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/voxel/launcher3/util/SQLiteCacheHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
