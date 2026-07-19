.class public Lcom/evie/search/dagger/SearchModule;
.super Ljava/lang/Object;
.source "SearchModule.java"


# instance fields
.field private adapter:Lcom/evie/search/SearchAdapter;

.field private analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/common/services/analytics/AnalyticsService;Lcom/evie/search/SearchAdapter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/evie/search/dagger/SearchModule;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/evie/search/dagger/SearchModule;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    .line 26
    iput-object p3, p0, Lcom/evie/search/dagger/SearchModule;->adapter:Lcom/evie/search/SearchAdapter;

    return-void
.end method


# virtual methods
.method analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/search/dagger/SearchModule;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-object v0
.end method

.method eventService(Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/events/EventService;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/search/dagger/SearchModule;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/evie/common/services/events/EventService;

    invoke-direct {v1, v0, p1}, Lcom/evie/common/services/events/EventService;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/evie/common/services/analytics/AnalyticsService;)V

    return-object v1
.end method

.method linkResolver(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/common/services/links/LinkResolver;
    .locals 1

    .line 45
    new-instance v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-direct {v0, p1, p2}, Lcom/evie/common/services/links/LinkResolver;-><init>(Lcom/evie/common/services/events/EventService;Lcom/evie/common/services/analytics/AnalyticsService;)V

    return-object v0
.end method

.method searchShortcutHandler()Lcom/evie/search/SearchShortcutHandler;
    .locals 3

    .line 51
    new-instance v0, Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/dagger/SearchModule;->adapter:Lcom/evie/search/SearchAdapter;

    iget-object v2, p0, Lcom/evie/search/dagger/SearchModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/evie/search/SearchShortcutHandler;-><init>(Lcom/evie/search/SearchAdapter;Landroid/content/Context;)V

    return-object v0
.end method
