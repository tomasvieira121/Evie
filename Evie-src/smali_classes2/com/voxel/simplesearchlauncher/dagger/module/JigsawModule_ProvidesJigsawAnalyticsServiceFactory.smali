.class public final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesJigsawAnalyticsServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionPreferenceStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 32
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->applicationProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->actionPreferenceStoreProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesJigsawAnalyticsService(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/app/Application;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->providesJigsawAnalyticsService(Landroid/app/Application;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 60
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->applicationProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->actionPreferenceStoreProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->proxyProvidesJigsawAnalyticsService(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/app/Application;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawAnalyticsServiceFactory;->get()Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    move-result-object v0

    return-object v0
.end method
