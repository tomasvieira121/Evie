.class public Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;
.super Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;
.source "FrequentlyUsedAnalyticsFilter.java"


# instance fields
.field private final mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;


# direct methods
.method public constructor <init>(Lcom/evie/models/frequentlyused/FrequentlyUsedModel;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    return-void
.end method


# virtual methods
.method public filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "event"

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x43aeefb9

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x26034fdf    # 4.5558E-16f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ev_app_launch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "ev_host_launcher_app_launch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v1, "properties"

    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "launch_package_name"

    .line 36
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "launch_class_name"

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    .line 39
    invoke-interface {v4}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->getFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object v4

    invoke-virtual {v4}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 41
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 42
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    invoke-virtual {v7}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "predicted_rank"

    add-int/2addr v6, v5

    .line 48
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedAnalyticsFilter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    new-instance v4, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-direct {v4, v0, v2, v3}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->addAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object p1

    :catch_0
    const-string v1, "Skipping attaching frequently used index to app launch event due to missing properties."

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
