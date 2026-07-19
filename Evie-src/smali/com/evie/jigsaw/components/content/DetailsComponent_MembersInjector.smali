.class public final Lcom/evie/jigsaw/components/content/DetailsComponent_MembersInjector;
.super Ljava/lang/Object;
.source "DetailsComponent_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectActionPreferenceStore(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-void
.end method

.method public static injectAttributionService(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    return-void
.end method

.method public static injectLinkResolver(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method
