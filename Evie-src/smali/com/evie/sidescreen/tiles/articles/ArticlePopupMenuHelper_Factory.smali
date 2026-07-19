.class public final Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;
.super Ljava/lang/Object;
.source "ArticlePopupMenuHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenContentModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final topicPersonalizationStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->sideScreenContentModelProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;"
        }
    .end annotation

    .line 56
    new-instance v6, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;
    .locals 7

    .line 42
    new-instance v6, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/models/topics/TopicsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->sideScreenContentModelProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/models/topics/TopicPersonalizationStore;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;-><init>(Lcom/evie/models/topics/TopicsModel;Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->get()Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    move-result-object v0

    return-object v0
.end method
