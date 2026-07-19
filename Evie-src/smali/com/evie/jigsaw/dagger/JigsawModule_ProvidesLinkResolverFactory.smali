.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesLinkResolverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/common/services/links/LinkResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private final eventsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/events/EventService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/events/EventService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    .line 27
    iput-object p2, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->eventsProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/events/EventService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)",
            "Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesLinkResolver(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/links/LinkResolver;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesLinkResolver(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/links/LinkResolver;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/common/services/links/LinkResolver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/common/services/links/LinkResolver;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->eventsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/common/services/events/EventService;

    iget-object v2, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->proxyProvidesLinkResolver(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/links/LinkResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->get()Lcom/evie/common/services/links/LinkResolver;

    move-result-object v0

    return-object v0
.end method
