.class public Lcom/evie/common/services/events/EventService;
.super Ljava/lang/Object;
.source "EventService.java"


# static fields
.field private static final JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final analytics:Lcom/evie/common/services/analytics/AnalyticsService;

.field private final manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    .line 62
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_STREAM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_PLACES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_ALL_APPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.evie.jigsaw.HANDLE_TERMS_OF_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/evie/common/services/analytics/AnalyticsService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/common/services/events/EventService;->manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p2, p0, Lcom/evie/common/services/events/EventService;->analytics:Lcom/evie/common/services/analytics/AnalyticsService;

    return-void
.end method

.method private recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/evie/common/services/events/EventService;->analytics:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-interface {v0, p1, p2}, Lcom/evie/common/services/analytics/AnalyticsService;->recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public broadcastAllAppsEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)Z
    .locals 1

    const-string v0, "com.evie.jigsaw.HANDLE_ALL_APPS"

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/evie/common/services/events/EventService;->recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.evie.jigsaw.HANDLE_ALL_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/evie/common/services/events/EventService;->manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public broadcastSettingsEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)Z
    .locals 1

    const-string v0, "com.evie.jigsaw.HANDLE_SETTINGS"

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/evie/common/services/events/EventService;->recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    .line 160
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.evie.jigsaw.HANDLE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/evie/common/services/events/EventService;->manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public broadcastTermsOfServiceEvent()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/evie/common/services/events/EventService;->manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.evie.jigsaw.HANDLE_TERMS_OF_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public register(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/evie/common/services/events/EventService;->manager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    sget-object v1, Lcom/evie/common/services/events/EventService;->JIGSAW_EVENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
