.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesAnalyticsServiceFactory.java"

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
.field private final module:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V

    return-object v0
.end method

.method public static proxyProvidesAnalyticsService(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesAnalyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/common/services/analytics/AnalyticsService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    invoke-static {v0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;->proxyProvidesAnalyticsService(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;->get()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method
