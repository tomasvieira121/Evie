.class public abstract Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule;
.super Ljava/lang/Object;
.source "AppDatabaseModule.java"


# direct methods
.method public static providesAppDatabase(Landroid/content/Context;)Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;
    .locals 2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    const-string v1, "app_database"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    return-object p0
.end method
