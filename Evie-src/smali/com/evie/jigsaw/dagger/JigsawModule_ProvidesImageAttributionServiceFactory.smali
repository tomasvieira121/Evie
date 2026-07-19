.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesImageAttributionServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/services/attribution/ImageAttributionService;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    .line 23
    iput-object p2, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->imageResolverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;)",
            "Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesImageAttributionService(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/services/attribution/ImageAttributionService;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesImageAttributionService(Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/services/attribution/ImageAttributionService;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->imageResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/services/images/ImageResolver;

    invoke-static {v0, v1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->proxyProvidesImageAttributionService(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->get()Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    move-result-object v0

    return-object v0
.end method
