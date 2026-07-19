.class public Lcom/evie/sidescreen/dagger/TopicsModule;
.super Ljava/lang/Object;
.source "TopicsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesPersonalizationSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.evie.models.topics.TopicPersonalizationSharedPrefStore.prefs"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public providesTopicPersonalizationStore(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lcom/evie/models/topics/TopicPersonalizationStore;
    .locals 1

    .line 37
    new-instance v0, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;

    invoke-direct {v0, p1, p2}, Lcom/evie/models/topics/TopicPersonalizationSharedPrefStore;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public providesTopicsModel(Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/topics/TopicsModel;
    .locals 6

    .line 49
    const-class v0, Lcom/evie/models/topics/TopicsAPI;

    .line 50
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/evie/models/topics/TopicsAPI;

    .line 51
    new-instance p1, Lcom/evie/models/topics/TopicsModel;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/evie/models/topics/TopicsModel;-><init>(Lcom/evie/models/topics/TopicsAPI;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    return-object p1
.end method
