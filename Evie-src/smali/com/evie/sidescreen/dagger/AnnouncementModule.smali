.class public Lcom/evie/sidescreen/dagger/AnnouncementModule;
.super Ljava/lang/Object;
.source "AnnouncementModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAnnouncementModel(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/models/PromptStoreModel;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;)Lcom/evie/models/announcement/AnnouncementModel;
    .locals 8

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 33
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-class p1, Lcom/evie/models/announcement/AnnouncementAPI;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/evie/models/announcement/AnnouncementAPI;

    .line 38
    new-instance p1, Lcom/evie/models/announcement/AnnouncementModel;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/models/announcement/AnnouncementModel;-><init>(Lcom/evie/models/announcement/AnnouncementAPI;Ljava/lang/String;Ljava/lang/String;Lcom/evie/models/PromptStoreModel;ILjava/lang/String;Lcom/evie/common/AbTestConfiguration;)V

    return-object p1
.end method
