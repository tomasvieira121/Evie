.class public final Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "TopicDetailHeaderPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final menuHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->menuHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
            ">;)",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;
    .locals 4

    .line 32
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->menuHelperProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->get()Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;

    move-result-object v0

    return-object v0
.end method
