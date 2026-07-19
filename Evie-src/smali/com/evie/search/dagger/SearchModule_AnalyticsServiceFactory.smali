.class public final Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;
.super Ljava/lang/Object;
.source "SearchModule_AnalyticsServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/common/services/analytics/AnalyticsService;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/search/dagger/SearchModule;


# direct methods
.method public constructor <init>(Lcom/evie/search/dagger/SearchModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;->module:Lcom/evie/search/dagger/SearchModule;

    return-void
.end method

.method public static create(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;

    invoke-direct {v0, p0}, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;-><init>(Lcom/evie/search/dagger/SearchModule;)V

    return-object v0
.end method

.method public static proxyAnalyticsService(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/evie/search/dagger/SearchModule;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/common/services/analytics/AnalyticsService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;->module:Lcom/evie/search/dagger/SearchModule;

    invoke-static {v0}, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;->proxyAnalyticsService(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;->get()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method
