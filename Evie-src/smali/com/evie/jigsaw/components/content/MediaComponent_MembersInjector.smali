.class public final Lcom/evie/jigsaw/components/content/MediaComponent_MembersInjector;
.super Ljava/lang/Object;
.source "MediaComponent_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectAnalyticsService(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/common/services/analytics/AnalyticsService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-void
.end method

.method public static injectAttributionService(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    return-void
.end method

.method public static injectLinkResolver(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method
