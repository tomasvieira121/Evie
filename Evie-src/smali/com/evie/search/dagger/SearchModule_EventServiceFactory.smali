.class public final Lcom/evie/search/dagger/SearchModule_EventServiceFactory;
.super Ljava/lang/Object;
.source "SearchModule_EventServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/common/services/events/EventService;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/search/dagger/SearchModule;


# direct methods
.method public constructor <init>(Lcom/evie/search/dagger/SearchModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/search/dagger/SearchModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->module:Lcom/evie/search/dagger/SearchModule;

    .line 22
    iput-object p2, p0, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->analyticsServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/search/dagger/SearchModule;Ljavax/inject/Provider;)Lcom/evie/search/dagger/SearchModule_EventServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/search/dagger/SearchModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)",
            "Lcom/evie/search/dagger/SearchModule_EventServiceFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;-><init>(Lcom/evie/search/dagger/SearchModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyEventService(Lcom/evie/search/dagger/SearchModule;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/events/EventService;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/search/dagger/SearchModule;->eventService(Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/events/EventService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/common/services/events/EventService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/common/services/events/EventService;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->module:Lcom/evie/search/dagger/SearchModule;

    iget-object v1, p0, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-static {v0, v1}, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->proxyEventService(Lcom/evie/search/dagger/SearchModule;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/events/EventService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->get()Lcom/evie/common/services/events/EventService;

    move-result-object v0

    return-object v0
.end method
