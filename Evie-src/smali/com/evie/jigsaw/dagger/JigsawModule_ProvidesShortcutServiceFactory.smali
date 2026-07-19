.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesShortcutServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/services/shortcuts/ShortcutService;",
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
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    .line 27
    iput-object p2, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->imageResolverProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->analyticsServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/dagger/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;)",
            "Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesShortcutService(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/services/shortcuts/ShortcutService;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesShortcutService(Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/services/shortcuts/ShortcutService;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->imageResolverProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/services/images/ImageResolver;

    iget-object v2, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/common/services/analytics/AnalyticsService;

    .line 34
    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->proxyProvidesShortcutService(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->get()Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    move-result-object v0

    return-object v0
.end method
