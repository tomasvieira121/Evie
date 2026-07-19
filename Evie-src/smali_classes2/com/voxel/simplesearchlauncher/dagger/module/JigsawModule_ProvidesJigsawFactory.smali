.class public final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesJigsawFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/Jigsaw;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;",
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

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/search/local/ContactManager;",
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

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

.field private final preferenceStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/search/local/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 39
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->applicationProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->imageResolverProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->preferenceStoreProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/search/local/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;"
        }
    .end annotation

    .line 64
    new-instance v7, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static proxyProvidesJigsaw(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/app/Application;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/search/local/ContactManager;Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;)Lcom/evie/jigsaw/Jigsaw;
    .locals 0

    .line 81
    invoke-virtual/range {p0 .. p5}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->providesJigsaw(Landroid/app/Application;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/search/local/ContactManager;Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;)Lcom/evie/jigsaw/Jigsaw;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 80
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/Jigsaw;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/Jigsaw;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->applicationProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->imageResolverProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/jigsaw/services/images/ImageResolver;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->preferenceStoreProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/search/local/ContactManager;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->analyticsProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->proxyProvidesJigsaw(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/app/Application;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/search/local/ContactManager;Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;)Lcom/evie/jigsaw/Jigsaw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesJigsawFactory;->get()Lcom/evie/jigsaw/Jigsaw;

    move-result-object v0

    return-object v0
.end method
