.class public final Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;
.super Ljava/lang/Object;
.source "TopicsModule_ProvidesTopicPersonalizationStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/topics/TopicPersonalizationStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/TopicsModule;

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;-><init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesTopicPersonalizationStore(Lcom/evie/sidescreen/dagger/TopicsModule;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lcom/evie/models/topics/TopicPersonalizationStore;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/dagger/TopicsModule;->providesTopicPersonalizationStore(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lcom/evie/models/topics/TopicPersonalizationStore;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 48
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/topics/TopicPersonalizationStore;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/topics/TopicPersonalizationStore;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    .line 34
    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->proxyProvidesTopicPersonalizationStore(Lcom/evie/sidescreen/dagger/TopicsModule;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lcom/evie/models/topics/TopicPersonalizationStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->get()Lcom/evie/models/topics/TopicPersonalizationStore;

    move-result-object v0

    return-object v0
.end method
