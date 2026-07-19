.class public final Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;
.super Ljava/lang/Object;
.source "TopicDetailFollowPopupMenuHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;
    .locals 4

    .line 33
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/topics/TopicsModel;

    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/topics/TopicPersonalizationStore;

    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;-><init>(Lcom/evie/models/topics/TopicsModel;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->get()Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    move-result-object v0

    return-object v0
.end method
