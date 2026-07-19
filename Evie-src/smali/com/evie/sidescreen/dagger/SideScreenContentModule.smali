.class public Lcom/evie/sidescreen/dagger/SideScreenContentModule;
.super Ljava/lang/Object;
.source "SideScreenContentModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesSideScreenContentAPI(Lokhttp3/OkHttpClient;Lretrofit2/Retrofit;)Lcom/evie/models/sidescreen/SideScreenContentAPI;
    .locals 0

    .line 45
    const-class p1, Lcom/evie/models/sidescreen/SideScreenContentAPI;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/sidescreen/SideScreenContentAPI;

    return-object p1
.end method

.method public providesSideScreenRelatedContentModel(Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
    .locals 8

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 58
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 60
    new-instance p1, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 67
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x2

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;-><init>(Lcom/evie/models/sidescreen/SideScreenContentAPI;ILcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;Ljava/lang/String;I)V

    return-object p1
.end method

.method public providesSidescreenApiVersionCode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
