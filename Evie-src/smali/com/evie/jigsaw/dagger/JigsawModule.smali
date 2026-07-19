.class public Lcom/evie/jigsaw/dagger/JigsawModule;
.super Ljava/lang/Object;
.source "JigsawModule.java"


# instance fields
.field private final settings:Lcom/evie/jigsaw/JigsawSettings;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/JigsawSettings;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    return-void
.end method


# virtual methods
.method provideEventService(Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/events/EventService;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->application()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/evie/common/services/events/EventService;

    invoke-direct {v1, v0, p1}, Lcom/evie/common/services/events/EventService;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/evie/common/services/analytics/AnalyticsService;)V

    return-object v1
.end method

.method providesActionPreferences()Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->actionPreferenceStore()Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    move-result-object v0

    return-object v0
.end method

.method providesAnalyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;

    invoke-direct {v0}, Lcom/evie/common/services/analytics/BaseAnalyticsService;-><init>()V

    :goto_0
    return-object v0
.end method

.method providesApplication()Landroid/app/Application;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->application()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method providesImageAttributionService(Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/services/attribution/ImageAttributionService;
    .locals 1

    .line 109
    new-instance v0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;-><init>(Lcom/evie/jigsaw/services/images/ImageResolver;)V

    return-object v0
.end method

.method providesImageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/evie/jigsaw/services/images/ExternalImageResolver;

    invoke-direct {v1}, Lcom/evie/jigsaw/services/images/ExternalImageResolver;-><init>()V

    if-eqz v0, :cond_0

    .line 76
    new-instance v2, Lcom/evie/jigsaw/services/images/DelegatingImageResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/evie/jigsaw/services/images/ImageResolver;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lcom/evie/jigsaw/services/images/DelegatingImageResolver;-><init>([Lcom/evie/jigsaw/services/images/ImageResolver;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method providesLayoutService()Lcom/evie/jigsaw/services/layout/LayoutService;
    .locals 2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v1}, Lcom/evie/jigsaw/JigsawSettings;->layoutServices()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    new-instance v1, Lcom/evie/jigsaw/services/layout/DelegatingLayoutService;

    invoke-direct {v1, v0}, Lcom/evie/jigsaw/services/layout/DelegatingLayoutService;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method providesLinkResolver(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/links/LinkResolver;
    .locals 1

    .line 84
    new-instance v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-direct {v0, p1, p2}, Lcom/evie/common/services/links/LinkResolver;-><init>(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)V

    return-object v0
.end method

.method providesSettings()Lcom/evie/jigsaw/JigsawSettings;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    return-object v0
.end method

.method providesShortcutService(Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/services/shortcuts/ShortcutService;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule;->settings:Lcom/evie/jigsaw/JigsawSettings;

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->shortcuts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, p1, p2, v1}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;-><init>(Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;F)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
