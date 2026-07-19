.class Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;


# direct methods
.method constructor <init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl$2;->this$0:Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `app_launch_entries` WHERE `id` = ?"

    return-object v0
.end method
