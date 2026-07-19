.class public Lcom/evie/sidescreen/analytics/AnalyticsModel;
.super Ljava/lang/Object;
.source "AnalyticsModel.java"


# instance fields
.field private final mHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel;->mHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method

.method private static unpackThingProperties(Lorg/schema/Thing;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lorg/schema/Thing;->getAnalytics()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 141
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->getProps()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add analytics property to JSONObject."

    const/4 v2, 0x0

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public flushEvents()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel;->mHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync(Z)V

    return-void
.end method

.method public startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel;->mHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3306bb6e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x54f1a423

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ev_ss_article_impression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ev_ss_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 44
    :pswitch_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    .line 47
    sget-object v1, Lcom/evie/sidescreen/analytics/data/EventData;->VERBATIM_ATTRIBUTES:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 49
    :try_start_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->getProps()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string v6, "Failed to add analytics property to JSONObject."

    .line 52
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "attribute_announcement"

    .line 57
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "attribute_announcement"

    .line 59
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/announcement/data/Announcement;

    const-string v2, "entity_id"

    .line 60
    invoke-virtual {v1}, Lcom/evie/models/announcement/data/Announcement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_4
    const-string v1, "attribute_breakingnews"

    .line 64
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "attribute_breakingnews"

    .line 66
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/breakingnews/data/BreakingNews;

    const-string v2, "entity_id"

    .line 67
    invoke-virtual {v1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_5
    const-string v1, "attribute_frequently_used_app"

    .line 72
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "attribute_frequently_used_app"

    .line 74
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    const-string v2, "entity_id"

    .line 76
    iget-object v3, v1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "class_name"

    .line 77
    iget-object v1, v1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_6
    const-string v1, "attribute_news_article"

    .line 81
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "attribute_news_article"

    .line 82
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/NewsArticle;

    const-string v2, "entity_id"

    .line 83
    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 85
    invoke-static {v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->unpackThingProperties(Lorg/schema/Thing;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :cond_7
    const-string v1, "attribute_news_channel"

    .line 89
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "attribute_news_channel"

    .line 90
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/evie/NewsChannel;

    const-string v2, "entity_id"

    .line 91
    invoke-virtual {v1}, Lorg/schema/evie/NewsChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 92
    invoke-static {v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->unpackThingProperties(Lorg/schema/Thing;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :cond_8
    const-string v1, "attribute_thing"

    .line 96
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "attribute_thing"

    .line 97
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/Thing;

    .line 98
    invoke-static {v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->unpackThingProperties(Lorg/schema/Thing;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :cond_9
    const-string v1, "attribute_content_tile"

    .line 102
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "attribute_content_tile"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "attribute_content_tile"

    .line 103
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const-string v2, "ui_type"

    .line 104
    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/models/sidescreen/data/TileType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "item_position"

    .line 105
    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_a
    const-string v1, "attribute_topic"

    .line 108
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "attribute_topic"

    .line 109
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/evie/topics/Topic;

    const-string v2, "entity_id"

    .line 110
    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 111
    invoke-static {v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->unpackThingProperties(Lorg/schema/Thing;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :cond_b
    const-string v1, "attribute_screen_info"

    .line 114
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "attribute_screen_info"

    .line 115
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    if-eqz v1, :cond_c

    const-string v2, "screen_type"

    .line 117
    invoke-virtual {v1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "screen_id"

    .line 118
    invoke-virtual {v1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "screen_subtype"

    .line 119
    invoke-virtual {v1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 123
    :cond_c
    iget-object v1, p0, Lcom/evie/sidescreen/analytics/AnalyticsModel;->mHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v1, p1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :goto_4
    const-string v0, "ev_ss_tap"

    if-ne p1, v0, :cond_e

    const-string p1, "item_type"

    .line 128
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "trending_article"

    if-eq p1, p2, :cond_d

    const-string p2, "trending_video"

    if-ne p1, p2, :cond_e

    .line 130
    :cond_d
    invoke-virtual {p0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->flushEvents()V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
