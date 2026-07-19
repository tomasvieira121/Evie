.class public abstract Lcom/evie/sidescreen/dagger/ConfigModule;
.super Ljava/lang/Object;
.source "ConfigModule.java"


# direct methods
.method static providesAbTestConfigurationModel(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/content/Context;Ljava/lang/Integer;)Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;
    .locals 10

    .line 48
    new-instance v9, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    .line 54
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 56
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;-><init>(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;ILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method static providesConfigModel(Lretrofit2/Retrofit;)Lcom/evie/models/config/ConfigModel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/evie/models/config/ConfigAPI;

    .line 34
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/config/ConfigAPI;

    .line 36
    new-instance v0, Lcom/evie/models/config/ConfigModel;

    invoke-direct {v0, p0}, Lcom/evie/models/config/ConfigModel;-><init>(Lcom/evie/models/config/ConfigAPI;)V

    return-object v0
.end method

.method static sideScreenConfigurationModel(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/Integer;Landroid/content/Context;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)Lcom/evie/sidescreen/SideScreenConfigurationModel;
    .locals 12

    .line 73
    new-instance v11, Lcom/evie/sidescreen/SideScreenConfigurationModel;

    .line 80
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenConfigurationModel;-><init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;ILjava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V

    move-object/from16 v0, p8

    .line 85
    invoke-virtual {v0, v11}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v11
.end method
