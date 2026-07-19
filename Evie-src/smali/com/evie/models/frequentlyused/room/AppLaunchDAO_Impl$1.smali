.class Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppLaunchDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;


# direct methods
.method constructor <init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$1;->this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 3

    .line 43
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 44
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-virtual {p0, p1, p2}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `app_launch_entries`(`id`,`package_name`,`class_name`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method
