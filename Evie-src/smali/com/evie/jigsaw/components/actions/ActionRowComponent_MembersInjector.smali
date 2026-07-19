.class public final Lcom/evie/jigsaw/components/actions/ActionRowComponent_MembersInjector;
.super Ljava/lang/Object;
.source "ActionRowComponent_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectAnalyticsService(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/common/services/analytics/AnalyticsService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-void
.end method

.method public static injectLinkResolver(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method

.method public static injectPreferences(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-void
.end method
