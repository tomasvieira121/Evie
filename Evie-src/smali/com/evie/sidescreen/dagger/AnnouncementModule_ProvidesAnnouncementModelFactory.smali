.class public final Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;
.super Ljava/lang/Object;
.source "AnnouncementModule_ProvidesAnnouncementModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/announcement/AnnouncementModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/AnnouncementModule;

.field private final promptStoreModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;"
        }
    .end annotation
.end field

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final versionCodeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/AnnouncementModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/AnnouncementModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->module:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    .line 43
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->promptStoreModelProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->versionCodeProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/AnnouncementModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/AnnouncementModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;"
        }
    .end annotation

    .line 71
    new-instance v8, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;-><init>(Lcom/evie/sidescreen/dagger/AnnouncementModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvidesAnnouncementModel(Lcom/evie/sidescreen/dagger/AnnouncementModule;Landroid/content/Context;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/models/PromptStoreModel;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;)Lcom/evie/models/announcement/AnnouncementModel;
    .locals 0

    .line 90
    invoke-virtual/range {p0 .. p6}, Lcom/evie/sidescreen/dagger/AnnouncementModule;->providesAnnouncementModel(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/models/PromptStoreModel;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;)Lcom/evie/models/announcement/AnnouncementModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 89
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/announcement/AnnouncementModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/announcement/AnnouncementModel;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->module:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->promptStoreModelProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/PromptStoreModel;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->versionCodeProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evie/common/AbTestConfiguration;

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->proxyProvidesAnnouncementModel(Lcom/evie/sidescreen/dagger/AnnouncementModule;Landroid/content/Context;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/models/PromptStoreModel;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;)Lcom/evie/models/announcement/AnnouncementModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->get()Lcom/evie/models/announcement/AnnouncementModel;

    move-result-object v0

    return-object v0
.end method
